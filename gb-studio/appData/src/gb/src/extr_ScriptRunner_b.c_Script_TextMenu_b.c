
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int UIShowMenu (int,int,int,int) ;
 int script_action_complete ;
 int* script_cmd_args ;
 scalar_t__ script_cmd_args_len ;
 int script_ptr ;

void Script_TextMenu_b()
{
  script_ptr += 1 + script_cmd_args_len;
  UIShowMenu((script_cmd_args[0] * 256) + script_cmd_args[1], (script_cmd_args[2] * 256) + script_cmd_args[3], script_cmd_args[4], script_cmd_args[5]);
  script_action_complete = FALSE;
}
