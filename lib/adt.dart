import 'package:source_gen/source_gen.dart';
import 'package:build/build.dart';
import 'package:dart_style/dart_style.dart';

import 'src/adt_generator.dart';

/// Builder
Builder adtGeneratorBuilder(BuilderOptions options) => SharedPartBuilder(
      [ADTGenerator()],
      'generator_app',
      formatOutput: (output) => DartFormatter().format(_ignoreForFile + output),
    );

const _ignoreForFile = '// ignore_for_file: '
    'avoid_init_to_null, '
    'unnecessary_brace_in_string_interps, '
    'unnecessary_parenthesis, '
    'unused_element, '
    'lines_longer_than_80_chars, '
    'avoid_types_on_closure_parameters, '
    '\n\n';
