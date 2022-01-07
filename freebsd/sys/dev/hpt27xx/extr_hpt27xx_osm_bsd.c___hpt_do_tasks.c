
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int data; int (* func ) (int ,int ) ;struct TYPE_5__* next; } ;
struct TYPE_4__ {int vbus; TYPE_2__* tasks; } ;
typedef TYPE_1__* PVBUS_EXT ;
typedef TYPE_2__ OSM_TASK ;


 int stub1 (int ,int ) ;

__attribute__((used)) static void __hpt_do_tasks(PVBUS_EXT vbus_ext)
{
 OSM_TASK *tasks;

 tasks = vbus_ext->tasks;
 vbus_ext->tasks = 0;

 while (tasks) {
  OSM_TASK *t = tasks;
  tasks = t->next;
  t->next = 0;
  t->func(vbus_ext->vbus, t->data);
 }
}
