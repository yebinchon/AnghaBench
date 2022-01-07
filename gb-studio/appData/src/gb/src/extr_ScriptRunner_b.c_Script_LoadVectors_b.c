
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TRUE ;
 int* script_cmd_args ;
 scalar_t__ script_cmd_args_len ;
 int script_continue ;
 int script_ptr ;
 int script_ptr_x ;
 int script_ptr_y ;

void Script_LoadVectors_b()
{
  script_ptr_x = (script_cmd_args[0] * 256) + script_cmd_args[1];
  script_ptr_y = (script_cmd_args[2] * 256) + script_cmd_args[3];
  script_ptr += 1 + script_cmd_args_len;
  script_continue = TRUE;
}
