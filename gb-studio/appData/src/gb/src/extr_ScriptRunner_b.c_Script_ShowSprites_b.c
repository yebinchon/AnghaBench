
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SHOW_SPRITES ;
 int TRUE ;
 scalar_t__ script_cmd_args_len ;
 int script_continue ;
 int script_ptr ;

void Script_ShowSprites_b()
{
  SHOW_SPRITES;
  script_ptr += 1 + script_cmd_args_len;
  script_continue = TRUE;
}
