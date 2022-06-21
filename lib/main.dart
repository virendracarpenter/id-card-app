import 'package:flutter/material.dart';
import 'package:dynamic_color/dynamic_color.dart';

import 'package:id_card/id_card.dart';

void main() => runApp(IdCard());

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  final String name = "";
  final int age = 0;

  @override
  Widget build(BuildContext context) {
    return DynamicColorBuilder(
      builder: (ColorScheme? lightDynamic, ColorScheme? darkDynamic) {
        return MaterialApp(
          home: Scaffold(
            backgroundColor: darkDynamic?.background ?? Colors.white,
            appBar: AppBar(
              title: Text(
                'ID Card',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.9,
                  color: darkDynamic?.onPrimaryContainer ?? Colors.white,
                ),
              ),
              centerTitle: true,
              backgroundColor:
                  darkDynamic?.secondaryContainer.withAlpha(50) ?? Colors.blue,
              elevation: 6.0,
            ),
            body: Padding(
              padding: const EdgeInsets.fromLTRB(30, 40, 30, 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  //
                  // NAME
                  //
                  Caption('NAME', darkDynamic),
                  const SizedBox(height: 10),
                  TextField(
                    style: TextStyle(
                      color: darkDynamic?.secondary ?? Colors.blue, // *6
                      letterSpacing: 2,
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  //
                  // CURRENT AGE
                  //
                  const SizedBox(height: 30),
                  Caption('CURRENT AGE', darkDynamic),
                  const SizedBox(height: 10),
                  TextField(
                    style: TextStyle(
                      color: darkDynamic?.secondary ?? Colors.blue, // *8
                      letterSpacing: 2,
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  //
                  // CONTACT
                  //
                  const SizedBox(height: 30),
                  Caption('CONTACT', darkDynamic),
                  const SizedBox(width: 10),
                  TextField(
                    style: TextStyle(
                      color: darkDynamic?.secondary ?? Colors.blue, // *11
                      letterSpacing: 1,
                      fontSize: 18,
                    ),
                  ),
                  //
                  //
                  //
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class Caption extends StatelessWidget {
  final String caption;
  final ColorScheme? darkDynamic;
  const Caption(this.caption, this.darkDynamic, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      caption,
      style: TextStyle(
        color: darkDynamic?.primary.withOpacity(0.9) ?? Colors.black, // *5
        letterSpacing: 2,
      ),
    );
  }
}
