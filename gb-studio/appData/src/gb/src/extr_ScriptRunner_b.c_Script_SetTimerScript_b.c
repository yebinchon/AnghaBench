
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bank; int offset; } ;


 int TRUE ;
 int script_action_complete ;
 int* script_cmd_args ;
 scalar_t__ script_cmd_args_len ;
 int script_ptr ;
 int timer_script_duration ;
 TYPE_1__ timer_script_ptr ;
 int timer_script_time ;

void Script_SetTimerScript_b()
{
  timer_script_duration = script_cmd_args[0];
  timer_script_time = script_cmd_args[0];
  timer_script_ptr.bank = script_cmd_args[1];
  timer_script_ptr.offset = (script_cmd_args[2] * 256) + script_cmd_args[3];

  script_action_complete = TRUE;
  script_ptr += 1 + script_cmd_args_len;
}
