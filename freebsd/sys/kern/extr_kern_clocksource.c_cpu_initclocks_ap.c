
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int td_intr_nesting_level; } ;
struct pcpu_state {int now; } ;
typedef int sbintime_t ;


 struct pcpu_state* DPCPU_PTR (int ) ;
 int ET_HW_LOCK (struct pcpu_state*) ;
 int ET_HW_UNLOCK (struct pcpu_state*) ;
 int curcpu ;
 struct thread* curthread ;
 int handleevents (int ,int) ;
 int hardclock_sync (int ) ;
 int sbinuptime () ;
 int spinlock_enter () ;
 int spinlock_exit () ;
 int timerstate ;

void
cpu_initclocks_ap(void)
{
 sbintime_t now;
 struct pcpu_state *state;
 struct thread *td;

 state = DPCPU_PTR(timerstate);
 now = sbinuptime();
 ET_HW_LOCK(state);
 state->now = now;
 hardclock_sync(curcpu);
 spinlock_enter();
 ET_HW_UNLOCK(state);
 td = curthread;
 td->td_intr_nesting_level++;
 handleevents(state->now, 2);
 td->td_intr_nesting_level--;
 spinlock_exit();
}
