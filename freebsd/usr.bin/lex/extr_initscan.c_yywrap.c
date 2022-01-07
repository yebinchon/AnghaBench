
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * input_files ;
 scalar_t__ num_input_files ;
 int set_input_file (int ) ;

int yywrap()
 {
 if ( --num_input_files > 0 )
  {
  set_input_file( *++input_files );
  return 0;
  }

 else
  return 1;
 }
