
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t UWORD ;
typedef int UBYTE ;
struct TYPE_4__ {int x; int y; } ;
struct TYPE_3__ {int x; int y; } ;


 int DISABLE_RAM ;
 int ENABLE_RAM ;
 void* FALSE ;
 int FadeOut () ;
 int FadeSetSpeed (int) ;
 size_t NUM_VARIABLES ;
 int* RAMPtr ;
 scalar_t__ RAM_START_PTR ;
 scalar_t__ RAM_START_VARS_PTR ;
 int SCENE ;
 int TRUE ;
 TYPE_2__ map_next_dir ;
 TYPE_1__ map_next_pos ;
 int map_next_sprite ;
 int scene_index ;
 void* scene_loaded ;
 int scene_next_index ;
 void* script_action_complete ;
 scalar_t__ script_cmd_args_len ;
 int script_ptr ;
 int* script_variables ;
 int stage_next_type ;

void Script_LoadData_b()
{
  UWORD i;

  ENABLE_RAM;

  RAMPtr = (UBYTE *)RAM_START_PTR;
  if (*RAMPtr == TRUE)
  {

    RAMPtr++;
    scene_next_index = *RAMPtr;
    scene_index = scene_next_index + 1;


    RAMPtr++;
    map_next_pos.x = 0;
    map_next_pos.x = *RAMPtr;
    RAMPtr++;
    map_next_pos.y = 0;
    map_next_pos.y = *RAMPtr;
    RAMPtr++;
    map_next_dir.x = *RAMPtr == 2 ? -1 : *RAMPtr == 4 ? 1 : 0;
    map_next_dir.y = *RAMPtr == 8 ? -1 : *RAMPtr == 1 ? 1 : 0;


    RAMPtr++;
    map_next_sprite = *RAMPtr;


    RAMPtr = (UBYTE *)RAM_START_VARS_PTR;
    for (i = 0; i < NUM_VARIABLES; i++)
    {
      script_variables[i] = RAMPtr[i];
    }


    stage_next_type = SCENE;
    scene_loaded = FALSE;
    FadeSetSpeed(2);
    FadeOut();

    script_action_complete = FALSE;
  }

  DISABLE_RAM;

  script_ptr += 1 + script_cmd_args_len;
}
