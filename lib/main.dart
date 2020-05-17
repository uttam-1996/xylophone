import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final player = AudioCache();
  Expanded NoteBuild({Color color, int soundNumber}) {
    return Expanded(
      child: FlatButton(
        child: Container(),
        color: color,
        onPressed: () {
          player.play('note$soundNumber.wav');
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              NoteBuild(color: Colors.red, soundNumber: 1),
              NoteBuild(color: Colors.indigo, soundNumber: 2),
              NoteBuild(color: Colors.blue, soundNumber: 3),
              NoteBuild(color: Colors.green, soundNumber: 4),
              NoteBuild(color: Colors.orange, soundNumber: 5),
              NoteBuild(color: Colors.yellow, soundNumber: 6),
              NoteBuild(color: Colors.amber, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
