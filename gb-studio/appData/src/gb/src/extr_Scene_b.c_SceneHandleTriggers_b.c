
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t UBYTE ;
struct TYPE_4__ {scalar_t__ y; scalar_t__ x; } ;
struct TYPE_6__ {void* moving; TYPE_1__ pos; } ;
struct TYPE_5__ {int events_ptr; } ;


 scalar_t__ ACTOR_MAX_Y ;
 scalar_t__ ACTOR_ON_TILE (int ) ;
 scalar_t__ DIV_8 (scalar_t__) ;
 void* FALSE ;
 size_t SceneTriggerAt_b (scalar_t__,scalar_t__) ;
 int ScriptRunnerUpdate () ;
 int ScriptStart (int *) ;
 TYPE_3__* actors ;
 void* check_triggers ;
 int last_joy ;
 size_t scene_num_triggers ;
 scalar_t__ script_actor ;
 scalar_t__ script_ptr ;
 TYPE_2__* triggers ;

void SceneHandleTriggers_b()
{
  UBYTE trigger, trigger_tile_offset;

  if (check_triggers && script_ptr == 0 && (ACTOR_ON_TILE(0)))
  {
    check_triggers = FALSE;


    trigger_tile_offset = actors[0].pos.y == ACTOR_MAX_Y;

    trigger =
        SceneTriggerAt_b(DIV_8(actors[0].pos.x),
                         trigger_tile_offset + DIV_8(actors[0].pos.y));

    if (trigger != scene_num_triggers)
    {
      actors[0].moving = FALSE;
      last_joy = last_joy & 240;
      script_actor = 0;
      ScriptStart(&triggers[trigger].events_ptr);
      ScriptRunnerUpdate();
    }
  }
}
