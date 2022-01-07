
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kclock {int * event_hook; int timer_gettime; int timer_settime; int timer_delete; int timer_create; } ;
struct itimer {int dummy; } ;


 int CLOCK_MONOTONIC ;
 int CLOCK_REALTIME ;
 int CTL_P1003_1B_DELAYTIMER_MAX ;
 int CTL_P1003_1B_TIMERS ;
 int CTL_P1003_1B_TIMER_MAX ;
 int EVENTHANDLER_PRI_ANY ;
 int EVENTHANDLER_REGISTER (int ,int ,void*,int ) ;
 long INT_MAX ;
 scalar_t__ ITIMER_EV_EXEC ;
 scalar_t__ ITIMER_EV_EXIT ;
 long TIMER_MAX ;
 int UMA_ALIGN_PTR ;
 int itimer_fini ;
 int itimer_init ;
 int itimer_zone ;
 int itimers_event_hook_exec ;
 int itimers_event_hook_exit ;
 int p31b_setcfg (int ,long) ;
 int process_exec ;
 int process_exit ;
 int realtimer_create ;
 int realtimer_delete ;
 int realtimer_gettime ;
 int realtimer_settime ;
 int register_posix_clock (int ,struct kclock*) ;
 int uma_zcreate (char*,int,int *,int *,int ,int ,int ,int ) ;

__attribute__((used)) static void
itimer_start(void)
{
 struct kclock rt_clock = {
  .timer_create = realtimer_create,
  .timer_delete = realtimer_delete,
  .timer_settime = realtimer_settime,
  .timer_gettime = realtimer_gettime,
  .event_hook = ((void*)0)
 };

 itimer_zone = uma_zcreate("itimer", sizeof(struct itimer),
  ((void*)0), ((void*)0), itimer_init, itimer_fini, UMA_ALIGN_PTR, 0);
 register_posix_clock(CLOCK_REALTIME, &rt_clock);
 register_posix_clock(CLOCK_MONOTONIC, &rt_clock);
 p31b_setcfg(CTL_P1003_1B_TIMERS, 200112L);
 p31b_setcfg(CTL_P1003_1B_DELAYTIMER_MAX, INT_MAX);
 p31b_setcfg(CTL_P1003_1B_TIMER_MAX, TIMER_MAX);
 EVENTHANDLER_REGISTER(process_exit, itimers_event_hook_exit,
  (void *)ITIMER_EV_EXIT, EVENTHANDLER_PRI_ANY);
 EVENTHANDLER_REGISTER(process_exec, itimers_event_hook_exec,
  (void *)ITIMER_EV_EXEC, EVENTHANDLER_PRI_ANY);
}
