
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* ta_context; } ;


 int POWER_SLEEP_STATE_HIBERNATE ;
 int POWER_SLEEP_STATE_STANDBY ;
 int POWER_SLEEP_STATE_SUSPEND ;
 int * power_pm_fn ;
 TYPE_1__ power_pm_task ;
 int taskqueue_enqueue (int ,TYPE_1__*) ;
 int taskqueue_thread ;

void
power_pm_suspend(int state)
{
 if (power_pm_fn == ((void*)0))
  return;

 if (state != POWER_SLEEP_STATE_STANDBY &&
     state != POWER_SLEEP_STATE_SUSPEND &&
     state != POWER_SLEEP_STATE_HIBERNATE)
  return;
 power_pm_task.ta_context = (void *)(intptr_t)state;
 taskqueue_enqueue(taskqueue_thread, &power_pm_task);
}
