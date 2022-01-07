
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MusicPlay (int ,int ,int ) ;
 int TRUE ;
 int * script_cmd_args ;
 scalar_t__ script_cmd_args_len ;
 int script_continue ;
 int script_ptr ;
 int scriptrunner_bank ;

void Script_MusicPlay_b()
{
  MusicPlay(script_cmd_args[0], script_cmd_args[1], scriptrunner_bank);
  script_ptr += 1 + script_cmd_args_len;
  script_continue = TRUE;
}
