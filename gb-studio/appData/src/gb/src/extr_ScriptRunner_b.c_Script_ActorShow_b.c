
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* enabled; } ;


 void* TRUE ;
 TYPE_1__* actors ;
 size_t script_actor ;
 scalar_t__ script_cmd_args_len ;
 void* script_continue ;
 int script_ptr ;

void Script_ActorShow_b()
{
  actors[script_actor].enabled = TRUE;
  script_ptr += 1 + script_cmd_args_len;
  script_continue = TRUE;
}
