
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int x; int y; } ;
struct TYPE_4__ {TYPE_1__ pos; } ;


 int ACTOR_MAX_Y ;
 int TRUE ;
 TYPE_2__* actors ;
 size_t script_actor ;
 scalar_t__ script_cmd_args_len ;
 int script_continue ;
 int script_ptr ;
 size_t script_ptr_x ;
 size_t script_ptr_y ;
 int* script_variables ;

void Script_ActorSetPosToVal_b()
{
  actors[script_actor].pos.x = 0;
  actors[script_actor].pos.x = (script_variables[script_ptr_x] << 3) + 8;
  actors[script_actor].pos.y = 0;
  actors[script_actor].pos.y = (script_variables[script_ptr_y] << 3) + 8;
  if (script_variables[script_ptr_y] == 31)
  {
    actors[script_actor].pos.y = ACTOR_MAX_Y;
  }
  script_ptr += 1 + script_cmd_args_len;
  script_continue = TRUE;
}
