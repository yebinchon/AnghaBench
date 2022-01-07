
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int events_ptr; } ;


 int ScriptStart (int *) ;
 int Script_StackPush_b () ;
 TYPE_1__* actors ;
 size_t script_actor ;

void Script_ActorInvoke_b()
{
  Script_StackPush_b();
  ScriptStart(&actors[script_actor].events_ptr);
}
