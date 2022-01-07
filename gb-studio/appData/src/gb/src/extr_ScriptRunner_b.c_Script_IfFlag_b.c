
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TRUE ;
 int* script_cmd_args ;
 scalar_t__ script_cmd_args_len ;
 int script_continue ;
 scalar_t__ script_ptr ;
 scalar_t__ script_start_ptr ;
 scalar_t__* script_variables ;

void Script_IfFlag_b()
{
  if (script_variables[(script_cmd_args[0] * 256) + script_cmd_args[1]])
  {
    script_ptr = script_start_ptr + (script_cmd_args[2] * 256) + script_cmd_args[3];
  }
  else
  {
    script_ptr += 1 + script_cmd_args_len;
  }
  script_continue = TRUE;
}
