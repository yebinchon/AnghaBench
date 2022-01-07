
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int frame; int frames_len; scalar_t__ flip; } ;


 int SceneRenderActor (size_t) ;
 int TRUE ;
 TYPE_1__* actors ;
 size_t script_actor ;
 int* script_cmd_args ;
 scalar_t__ script_cmd_args_len ;
 int script_continue ;
 int script_ptr ;
 int* script_variables ;

void Script_ActorSetFrameToVal_b()
{
  actors[script_actor].frame = 0;
  actors[script_actor].flip = 0;
  actors[script_actor].frame = script_variables[(script_cmd_args[0] * 256) + script_cmd_args[1]] % actors[script_actor].frames_len;
  SceneRenderActor(script_actor);
  script_ptr += 1 + script_cmd_args_len;
  script_continue = TRUE;
}
