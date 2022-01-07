
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
 int* script_cmd_args ;
 scalar_t__ script_cmd_args_len ;
 int script_ptr ;

void Script_ActorMoveTo_b()
{
  actor_move_settings |= ACTOR_MOVE_ENABLED;
  actor_move_settings |= ACTOR_NOCLIP;
  actor_move_dest.x = 0;
  actor_move_dest.x = (script_cmd_args[0] << 3) + 8;
  actor_move_dest.y = 0;
  actor_move_dest.y = (script_cmd_args[1] << 3) + 8;
  if (script_cmd_args[1] == 31)
  {
    actor_move_dest.y = ACTOR_MAX_Y;
  }
  script_ptr += 1 + script_cmd_args_len;
  script_action_complete = FALSE;
}
