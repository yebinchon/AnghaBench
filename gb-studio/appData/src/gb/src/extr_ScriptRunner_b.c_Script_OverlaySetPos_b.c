
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TRUE ;
 int UISetPos (int,int) ;
 int* script_cmd_args ;
 scalar_t__ script_cmd_args_len ;
 int script_continue ;
 int script_ptr ;

void Script_OverlaySetPos_b()
{
  UISetPos(script_cmd_args[0] << 3, script_cmd_args[1] << 3);
  script_ptr += 1 + script_cmd_args_len;
  script_continue = TRUE;
}
