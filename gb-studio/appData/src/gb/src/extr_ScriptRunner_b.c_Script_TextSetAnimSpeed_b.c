
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TRUE ;
 void** script_cmd_args ;
 scalar_t__ script_cmd_args_len ;
 int script_continue ;
 int script_ptr ;
 void* text_draw_speed ;
 void* text_in_speed ;
 void* text_out_speed ;

void Script_TextSetAnimSpeed_b()
{
  text_in_speed = script_cmd_args[0];
  text_out_speed = script_cmd_args[1];
  text_draw_speed = script_cmd_args[2];
  script_ptr += 1 + script_cmd_args_len;
  script_continue = TRUE;
}
