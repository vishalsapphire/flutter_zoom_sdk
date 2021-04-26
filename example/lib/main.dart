import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:flutter_zoom_sdk_example/start_meeting_screen.dart';
import 'dart:async';

import 'join_screen.dart';
import 'meeting_screen.dart';


void main() => runApp(ExampleApp());

class ExampleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(Colors.blue);
    return MaterialApp(
      title: 'Example Zoom SDK',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      navigatorObservers: [ ],
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => JoinWidget(),
        '/meeting': (context) => MeetingWidget(),
        '/startmeeting': (context) => StartMeetingWidget(),
      },
    );
  }
}