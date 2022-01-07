
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t UWORD ;
typedef scalar_t__ UBYTE ;


 int TRUE ;
 int* script_cmd_args ;
 scalar_t__ script_cmd_args_len ;
 int script_continue ;
 int script_ptr ;
 scalar_t__* script_variables ;

void Script_DecFlag_b()
{
  UBYTE value;
  UWORD ptr = (script_cmd_args[0] * 256) + script_cmd_args[1];
  value = script_variables[ptr];
  if (value != 0)
  {
    script_variables[ptr] = value - 1;
  }
  script_ptr += 1 + script_cmd_args_len;
  script_continue = TRUE;
}
