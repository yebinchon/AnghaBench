
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WATCHDOG_THRESHOLD ;
 int callout_reset (int *,int,int ,int *) ;
 int callout_stop (int *) ;
 int hz ;
 int printf (char*) ;
 int watchdog_callout ;
 int watchdog_cpu ;
 int watchdog_dontfire ;
 int watchdog_function ;
 int watchdog_timer ;

__attribute__((used)) static void
watchdog_change(int wdcpu)
{

 if (wdcpu == -1 || wdcpu == 0xffffffff) {



  watchdog_cpu = -1;
  watchdog_dontfire = 1;
  callout_stop(&watchdog_callout);
  printf("watchdog stopped\n");
 } else {
  watchdog_timer = WATCHDOG_THRESHOLD;
  watchdog_dontfire = 0;
  watchdog_cpu = wdcpu;
  callout_reset(&watchdog_callout, 1 * hz, watchdog_function,
      ((void*)0));
 }
}
