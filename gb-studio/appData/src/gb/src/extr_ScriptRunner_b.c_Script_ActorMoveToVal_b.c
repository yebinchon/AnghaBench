
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int x; int y; } ;


 int ACTOR_MAX_Y ;
 int ACTOR_MOVE_ENABLED ;
 int ACTOR_NOCLIP ;
 int FALSE ;
 TYPE_1__ actor_move_dest ;
 int actor_move_settings ;
 int script_action_complete ;
 scalar_t__ script_cmd_args_len ;
 int script_ptr ;
 size_t script_ptr_x ;
 size_t script_ptr_y ;
 int* script_variables ;

void Script_ActorMoveToVal_b()
{
  actor_move_settings |= ACTOR_MOVE_ENABLED;
  actor_move_settings |= ACTOR_NOCLIP;
  actor_move_dest.x = 0;
  actor_move_dest.x = (script_variables[script_ptr_x] << 3) + 8;
  actor_move_dest.y = 0;
  actor_move_dest.y = (script_variables[script_ptr_y] << 3) + 8;
  if (script_variables[script_ptr_y] == 31)
  {
    actor_move_dest.y = ACTOR_MAX_Y;
  }
  script_ptr += 1 + script_cmd_args_len;
  script_action_complete = FALSE;
}
