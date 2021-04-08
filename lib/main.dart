import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:teste_recursos_nativos/providers/great_places.dart';
import 'package:teste_recursos_nativos/screens/place_form_screen.dart';

import './utils/app_routes.dart';
import './screens/places_list_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => GreatPLaces(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Grate Places',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
          accentColor: Colors.amber,
        ),
        home: PlacesListScreen(),
        routes: {
          AppRoutes.PLACE_FORM: (ctx) => PlaceFormScreen(),
        },
      ),
    );
  }
}
