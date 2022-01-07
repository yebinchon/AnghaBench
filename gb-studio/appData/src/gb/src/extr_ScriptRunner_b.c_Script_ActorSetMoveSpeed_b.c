
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int move_speed; } ;


 int TRUE ;
 TYPE_1__* actors ;
 size_t script_actor ;
 int * script_cmd_args ;
 scalar_t__ script_cmd_args_len ;
 int script_continue ;
 int script_ptr ;

void Script_ActorSetMoveSpeed_b()
{
  actors[script_actor].move_speed = script_cmd_args[0];
  script_ptr += 1 + script_cmd_args_len;
  script_continue = TRUE;
}
