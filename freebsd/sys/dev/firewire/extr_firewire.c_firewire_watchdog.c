
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct firewire_comm {int timeout_callout; int task_timeout; int taskqueue; } ;


 int WATCHDOG_HZ ;
 int callout_reset (int *,int,void (*) (void*),struct firewire_comm*) ;
 int hz ;
 int taskqueue_enqueue (int ,int *) ;

__attribute__((used)) static void
firewire_watchdog(void *arg)
{
 struct firewire_comm *fc;
 static int watchdog_clock = 0;

 fc = arg;






 if (watchdog_clock > WATCHDOG_HZ * 15)
  taskqueue_enqueue(fc->taskqueue, &fc->task_timeout);
 else
  watchdog_clock++;

 callout_reset(&fc->timeout_callout, hz / WATCHDOG_HZ,
     firewire_watchdog, fc);
}
