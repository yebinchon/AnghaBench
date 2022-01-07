
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ x; scalar_t__ y; } ;
struct TYPE_4__ {scalar_t__ x; scalar_t__ y; } ;
struct TYPE_5__ {TYPE_1__ pos; } ;


 scalar_t__ ACTOR_MAX_X ;
 scalar_t__ ACTOR_MAX_Y ;
 scalar_t__ ACTOR_MIN_X ;
 scalar_t__ ACTOR_MIN_Y ;
 int ACTOR_MOVE_ENABLED ;
 int ACTOR_NOCLIP ;
 int FALSE ;
 TYPE_3__ actor_move_dest ;
 int actor_move_settings ;
 TYPE_2__* actors ;
 int script_action_complete ;
 size_t script_actor ;
 int* script_cmd_args ;
 scalar_t__ script_cmd_args_len ;
 int script_ptr ;

void Script_ActorMoveRel_b()
{
  actor_move_settings |= ACTOR_MOVE_ENABLED;
  actor_move_settings |= ACTOR_NOCLIP;
  actor_move_dest.x = 0;
  actor_move_dest.x = actors[script_actor].pos.x;
  if (script_cmd_args[0] != 0)
  {
    if (script_cmd_args[1] == 1)
    {
      actor_move_dest.x = actor_move_dest.x - (script_cmd_args[0] << 3);

      if (actor_move_dest.x > actors[script_actor].pos.x)
      {
        actor_move_dest.x = ACTOR_MIN_X;
      }
      else if (actor_move_dest.x < ACTOR_MIN_X)
      {
        actor_move_dest.x = ACTOR_MIN_X;
      }
    }
    else
    {
      actor_move_dest.x = actor_move_dest.x + (script_cmd_args[0] << 3);

      if (actor_move_dest.x < actors[script_actor].pos.x)
      {
        actor_move_dest.x = ACTOR_MAX_X;
      }
    }
  }

  actor_move_dest.y = 0;
  actor_move_dest.y = actors[script_actor].pos.y;
  if (script_cmd_args[2] != 0)
  {
    if (script_cmd_args[3] == 1)
    {
      actor_move_dest.y = actor_move_dest.y - (script_cmd_args[2] << 3);

      if (actor_move_dest.y > actors[script_actor].pos.y)
      {
        actor_move_dest.y = ACTOR_MIN_Y;
      }
      else if (actor_move_dest.y < ACTOR_MIN_Y)
      {
        actor_move_dest.y = ACTOR_MIN_Y;
      }
    }
    else
    {
      actor_move_dest.y = actor_move_dest.y + (script_cmd_args[2] << 3);

      if (actor_move_dest.y < actors[script_actor].pos.y)
      {
        actor_move_dest.y = ACTOR_MAX_Y;
      }
    }
  }

  script_ptr += 1 + script_cmd_args_len;
  script_action_complete = FALSE;
}
