
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int x; int y; } ;
struct TYPE_4__ {TYPE_1__ pos; } ;


 int TRUE ;
 TYPE_2__* actors ;
 size_t script_actor ;
 scalar_t__ script_cmd_args_len ;
 int script_continue ;
 int script_ptr ;
 size_t script_ptr_x ;
 size_t script_ptr_y ;
 int* script_variables ;

void Script_ActorGetPos_b()
{
  script_variables[script_ptr_x] = actors[script_actor].pos.x - 8 >> 3;
  script_variables[script_ptr_y] = actors[script_actor].pos.y - 8 >> 3;
  script_ptr += 1 + script_cmd_args_len;
  script_continue = TRUE;
}
