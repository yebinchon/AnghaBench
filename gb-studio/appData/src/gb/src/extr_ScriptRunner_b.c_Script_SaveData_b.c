
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t UWORD ;
typedef int UBYTE ;
struct TYPE_5__ {scalar_t__ x; scalar_t__ y; } ;
struct TYPE_4__ {int x; int y; } ;
struct TYPE_6__ {TYPE_2__ dir; TYPE_1__ pos; } ;


 int DISABLE_RAM ;
 int ENABLE_RAM ;
 size_t NUM_VARIABLES ;
 int* RAMPtr ;
 scalar_t__ RAM_START_PTR ;
 scalar_t__ RAM_START_VARS_PTR ;
 void* TRUE ;
 TYPE_3__* actors ;
 int map_next_sprite ;
 int scene_index ;
 scalar_t__ script_cmd_args_len ;
 void* script_continue ;
 int script_ptr ;
 int* script_variables ;

void Script_SaveData_b()
{
  UWORD i;

  ENABLE_RAM;

  RAMPtr = (UBYTE *)RAM_START_PTR;
  RAMPtr[0] = TRUE;


  RAMPtr[1] = scene_index;


  RAMPtr[2] = actors[0].pos.x;
  RAMPtr[3] = actors[0].pos.y;
  if (actors[0].dir.x < 0)
  {
    RAMPtr[4] = 2;
  }
  else if (actors[0].dir.x > 0)
  {
    RAMPtr[4] = 4;
  }
  else if (actors[0].dir.y < 0)
  {
    RAMPtr[4] = 8;
  }
  else
  {
    RAMPtr[4] = 1;
  }


  RAMPtr[5] = map_next_sprite;


  RAMPtr = (UBYTE *)RAM_START_VARS_PTR;
  for (i = 0; i < NUM_VARIABLES; i++)
  {
    RAMPtr[i] = script_variables[i];
  }

  DISABLE_RAM;

  script_ptr += 1 + script_cmd_args_len;
  script_continue = TRUE;
}
