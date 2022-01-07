
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int x; int y; } ;
struct TYPE_4__ {TYPE_1__ dir; } ;


 int TRUE ;
 TYPE_2__* actors ;
 size_t script_actor ;
 int* script_cmd_args ;
 scalar_t__ script_cmd_args_len ;
 int script_continue ;
 scalar_t__ script_ptr ;
 scalar_t__ script_start_ptr ;

void Script_IfActorDirection_b()
{

  if (
      (
          actors[script_actor].dir.x == 1 && script_cmd_args[0] == 4 ||
          actors[script_actor].dir.x == -1 && script_cmd_args[0] == 2) ||
      (actors[script_actor].dir.y == 1 && script_cmd_args[0] == 1 ||
       actors[script_actor].dir.y == -1 && script_cmd_args[0] == 8))
  {
    script_ptr = script_start_ptr + (script_cmd_args[1] * 256) + script_cmd_args[2];
  }
  else
  {
    script_ptr += 1 + script_cmd_args_len;
  }

  script_continue = TRUE;
}
