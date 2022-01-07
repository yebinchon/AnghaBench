
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int SceneSetEmote (int ,int ) ;
 int script_action_complete ;
 int script_actor ;
 int * script_cmd_args ;
 scalar_t__ script_cmd_args_len ;
 int script_ptr ;

void Script_ActorSetEmote_b()
{
  script_ptr += 1 + script_cmd_args_len;
  SceneSetEmote(script_actor, script_cmd_args[0]);
  script_action_complete = FALSE;
}
