
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int UBYTE ;
struct TYPE_8__ {scalar_t__ bank; } ;
struct TYPE_7__ {int y; int x; } ;
struct TYPE_6__ {int y; int x; } ;
struct TYPE_9__ {scalar_t__ movement_type; void* moving; TYPE_3__ events_ptr; TYPE_2__ dir; TYPE_1__ pos; } ;


 int ACTOR_ON_TILE (int ) ;
 scalar_t__ AI_ROTATE_TRB ;
 int DIV_8 (int ) ;
 void* FALSE ;
 scalar_t__ JOY (int ) ;
 scalar_t__ JOY_PRESSED (int ) ;
 int J_A ;
 int J_DOWN ;
 int J_LEFT ;
 int J_RIGHT ;
 int J_UP ;
 scalar_t__ NONE ;
 int SceneNpcAt_b (int ,int,int) ;
 int SceneRenderActor_b (int) ;
 int SceneUpdateActorMovement_b (int ) ;
 int ScriptStart (TYPE_3__*) ;
 int UIOnInteract () ;
 TYPE_4__* actors ;
 int dir_down ;
 int dir_left ;
 int dir_right ;
 int dir_up ;
 scalar_t__ emote_timer ;
 scalar_t__ fade_running ;
 TYPE_3__* input_script_ptrs ;
 int joy ;
 int last_joy ;
 int scene_input_ready ;
 scalar_t__ scene_loaded ;
 int scene_num_actors ;
 int script_actor ;
 scalar_t__ script_ptr ;
 int * update_dir ;

__attribute__((used)) static void SceneHandleInput()
{
  UBYTE next_tx, next_ty, input_index, input_joy;
  UBYTE npc;


  if (!scene_loaded || !scene_input_ready)
  {


    if (scene_loaded)
    {
      scene_input_ready = (joy & 240) == 0;
    }
    return;
  }


  UIOnInteract();


  if (!ACTOR_ON_TILE(0))
  {
    return;
  }


  if (script_ptr != 0 || emote_timer != 0 || fade_running)
  {
    actors[0].moving = FALSE;
    return;
  }

  if (joy != 0 && joy != last_joy)
  {
    input_index = 0;
    input_joy = joy;
    for (input_index = 0; input_index != 8; ++input_index)
    {
      if (input_joy & 1)
      {
        if (input_script_ptrs[input_index].bank)
        {
          actors[0].moving = FALSE;
          last_joy = joy;
          ScriptStart(&input_script_ptrs[input_index]);
          return;
        }
      }
      input_joy = input_joy >> 1;
    }
  }

  if (JOY_PRESSED(J_A))
  {
    last_joy = joy;
    actors[0].moving = FALSE;
    next_tx = DIV_8(actors[0].pos.x) + actors[0].dir.x;
    next_ty = DIV_8(actors[0].pos.y) + actors[0].dir.y;
    npc = SceneNpcAt_b(0, next_tx, next_ty);
    if (npc != scene_num_actors)
    {
      actors[0].moving = FALSE;
      if (actors[npc].movement_type != NONE && actors[npc].movement_type != AI_ROTATE_TRB)
      {
        actors[npc].dir.x = -actors[0].dir.x;
        actors[npc].dir.y = -actors[0].dir.y;
      }
      actors[npc].moving = FALSE;
      SceneRenderActor_b(npc);
      script_actor = npc;
      ScriptStart(&actors[npc].events_ptr);
    }
  }
  else if ((actors[0].moving || joy != last_joy))
  {
    last_joy = joy;

    if (JOY(J_LEFT))
    {
      update_dir = &dir_left;
    }
    else if (JOY(J_RIGHT))
    {
      update_dir = &dir_right;
    }
    else if (JOY(J_UP))
    {
      update_dir = &dir_up;
    }
    else if (JOY(J_DOWN))
    {
      update_dir = &dir_down;
    }
    else
    {
      actors[0].moving = FALSE;
      return;
    }

    SceneUpdateActorMovement_b(0);
  }
}
