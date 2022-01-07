
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int script_action_complete ;
 int * script_cmd_args ;
 scalar_t__ script_cmd_args_len ;
 int script_ptr ;
 int wait_time ;

void Script_Wait_b()
{
  wait_time = script_cmd_args[0];
  script_ptr += 1 + script_cmd_args_len;
  script_action_complete = FALSE;
}
