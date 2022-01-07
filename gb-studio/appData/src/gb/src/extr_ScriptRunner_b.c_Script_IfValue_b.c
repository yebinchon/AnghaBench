
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t UWORD ;
typedef int UBYTE ;


 int FALSE ;






 int TRUE ;
 int* script_cmd_args ;
 scalar_t__ script_cmd_args_len ;
 int script_continue ;
 scalar_t__ script_ptr ;
 scalar_t__ script_start_ptr ;
 int* script_variables ;

void Script_IfValue_b()
{
  UBYTE value, match;
  UWORD ptr = (script_cmd_args[0] * 256) + script_cmd_args[1];
  value = script_variables[ptr];

  switch (script_cmd_args[2])
  {
  case 133:
    match = value == script_cmd_args[3];
    break;
  case 130:
    match = value < script_cmd_args[3];
    break;
  case 129:
    match = value <= script_cmd_args[3];
    break;
  case 132:
    match = value > script_cmd_args[3];
    break;
  case 131:
    match = value >= script_cmd_args[3];
    break;
  case 128:
    match = value != script_cmd_args[3];
    break;
  default:
    match = FALSE;
  }

  if (match)
  {
    script_ptr = script_start_ptr + (script_cmd_args[4] * 256) + script_cmd_args[5];
  }
  else
  {
    script_ptr += 1 + script_cmd_args_len;
  }
  script_continue = TRUE;
}
