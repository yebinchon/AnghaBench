
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ ta_context; } ;
struct TYPE_6__ {scalar_t__ next; } ;
struct TYPE_5__ {TYPE_4__ worker; TYPE_2__* tasks; } ;
typedef TYPE_1__* PVBUS_EXT ;
typedef TYPE_2__ OSM_TASK ;


 int HPT_ASSERT (int) ;
 int TASK_ENQUEUE (TYPE_4__*) ;

void os_schedule_task(void *osext, OSM_TASK *task)
{
 PVBUS_EXT vbus_ext = osext;

 HPT_ASSERT(task->next==0);

 if (vbus_ext->tasks==0)
  vbus_ext->tasks = task;
 else {
  OSM_TASK *t = vbus_ext->tasks;
  while (t->next) t = t->next;
  t->next = task;
 }

 if (vbus_ext->worker.ta_context)
  TASK_ENQUEUE(&vbus_ext->worker);
}
