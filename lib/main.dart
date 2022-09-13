import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mk2/Responsive/mobilescreenlayout.dart';
import 'package:mk2/Responsive/responsive_layout.dart';
import 'package:mk2/Responsive/webscreenlayout.dart';
import 'package:mk2/utils/colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'ATELIER SPOT',
        theme: ThemeData.light().copyWith(
          scaffoldBackgroundColor: mobileBackgroundColor,
        ),
        home: const ResponsiveLayout(
          mobileScreenLayout: MobileScreenLayout(),
          webScreenLayout: WebScreenLayout(),
        ));
  }
}
