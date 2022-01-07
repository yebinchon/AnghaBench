
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int callout_init (int *,int) ;
 int watchdog_callout ;
 int watchdog_change (int) ;
 int watchdog_cpu ;

__attribute__((used)) static void
watchdog_init(void *arg)
{

 callout_init(&watchdog_callout, 1);
 if (watchdog_cpu != -1)
  watchdog_change(watchdog_cpu);
}
