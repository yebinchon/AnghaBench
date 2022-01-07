
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {int y; int x; } ;
struct TYPE_9__ {int x; int y; } ;
struct TYPE_7__ {int y; int x; } ;
struct TYPE_6__ {int x; int y; } ;
struct TYPE_8__ {TYPE_2__ player_dir; TYPE_1__ player_pos; scalar_t__ scene_index; } ;


 void* FALSE ;
 int FadeOut () ;
 int FadeSetSpeed (int ) ;
 int SCENE ;
 void* TRUE ;
 TYPE_5__ map_next_dir ;
 TYPE_4__ map_next_pos ;
 scalar_t__ scene_index ;
 void* scene_loaded ;
 scalar_t__ scene_next_index ;
 TYPE_3__* scene_stack ;
 int scene_stack_ptr ;
 void* script_action_complete ;
 int * script_cmd_args ;
 scalar_t__ script_cmd_args_len ;
 int script_ptr ;
 int stage_next_type ;

void Script_ScenePopState_b()
{
  if (scene_stack_ptr)
  {
    scene_stack_ptr--;

    scene_next_index = scene_stack[scene_stack_ptr].scene_index;
    scene_index = scene_next_index + 1;

    map_next_pos.x = 0;
    map_next_pos.x = scene_stack[scene_stack_ptr].player_pos.x << 3;
    map_next_pos.y = 0;
    map_next_pos.y = scene_stack[scene_stack_ptr].player_pos.y << 3;
    map_next_dir.x = scene_stack[scene_stack_ptr].player_dir.x;
    map_next_dir.y = scene_stack[scene_stack_ptr].player_dir.y;

    stage_next_type = SCENE;
    scene_loaded = FALSE;
    script_action_complete = FALSE;
    FadeSetSpeed(script_cmd_args[0]);
    FadeOut();
    script_ptr += 1 + script_cmd_args_len;

    return;
  }

  script_action_complete = TRUE;
  script_ptr += 1 + script_cmd_args_len;
}
