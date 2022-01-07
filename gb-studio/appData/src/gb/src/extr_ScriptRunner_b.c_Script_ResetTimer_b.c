
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TRUE ;
 scalar_t__ script_cmd_args_len ;
 int script_continue ;
 int script_ptr ;
 int timer_script_duration ;
 int timer_script_time ;

void Script_ResetTimer_b()
{

  timer_script_time = timer_script_duration;
  script_ptr += 1 + script_cmd_args_len;
  script_continue = TRUE;
}
