
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int x; int y; } ;
struct TYPE_3__ {int x; int y; } ;


 void* FALSE ;
 int FadeOut () ;
 int FadeSetSpeed (int) ;
 int SCENE ;
 TYPE_2__ map_next_dir ;
 TYPE_1__ map_next_pos ;
 int scene_index ;
 void* scene_loaded ;
 int scene_next_index ;
 void* script_action_complete ;
 int* script_cmd_args ;
 scalar_t__ script_cmd_args_len ;
 int script_ptr ;
 int stage_next_type ;

void Script_LoadScene_b()
{
  scene_next_index = (script_cmd_args[0] * 256) + script_cmd_args[1];
  scene_index = scene_next_index + 1;

  map_next_pos.x = 0;
  map_next_pos.x = (script_cmd_args[2] << 3) + 8;
  map_next_pos.y = 0;
  map_next_pos.y = (script_cmd_args[3] << 3) + 8;
  map_next_dir.x = script_cmd_args[4] == 2 ? -1 : script_cmd_args[4] == 4 ? 1 : 0;
  map_next_dir.y = script_cmd_args[4] == 8 ? -1 : script_cmd_args[4] == 1 ? 1 : 0;

  stage_next_type = SCENE;
  scene_loaded = FALSE;
  script_action_complete = FALSE;

  FadeSetSpeed(script_cmd_args[5]);
  FadeOut();

  script_ptr += 1 + script_cmd_args_len;
}
