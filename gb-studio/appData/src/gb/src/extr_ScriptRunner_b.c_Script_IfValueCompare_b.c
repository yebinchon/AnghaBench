
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UBYTE ;


 int FALSE ;






 int TRUE ;
 int* script_cmd_args ;
 scalar_t__ script_cmd_args_len ;
 int script_continue ;
 scalar_t__ script_ptr ;
 size_t script_ptr_x ;
 size_t script_ptr_y ;
 scalar_t__ script_start_ptr ;
 int* script_variables ;

void Script_IfValueCompare_b()
{
  UBYTE match;
  UBYTE a = script_variables[script_ptr_x];
  UBYTE b = script_variables[script_ptr_y];

  switch (script_cmd_args[0])
  {
  case 133:
    match = a == b;
    break;
  case 130:
    match = a < b;
    break;
  case 129:
    match = a <= b;
    break;
  case 132:
    match = a > b;
    break;
  case 131:
    match = a >= b;
    break;
  case 128:
    match = a != b;
    break;
  default:
    match = FALSE;
  }

  if (match)
  {
    script_ptr = script_start_ptr + (script_cmd_args[1] * 256) + script_cmd_args[2];
  }
  else
  {
    script_ptr += 1 + script_cmd_args_len;
  }
  script_continue = TRUE;
}
