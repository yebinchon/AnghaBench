
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct thread {int td_intr_nesting_level; } ;
struct pcpu_state {scalar_t__ idle; int now; } ;
typedef int sbintime_t ;


 int CTR3 (int ,char*,int ,int,int ) ;
 struct pcpu_state* DPCPU_PTR (int ) ;
 int KTR_SPARE2 ;
 scalar_t__ busy ;
 int curcpu ;
 struct thread* curthread ;
 int handleevents (int,int) ;
 scalar_t__ periodic ;
 int sbinuptime () ;
 int spinlock_enter () ;
 int spinlock_exit () ;
 int timerstate ;

void
cpu_activeclock(void)
{
 sbintime_t now;
 struct pcpu_state *state;
 struct thread *td;

 state = DPCPU_PTR(timerstate);
 if (state->idle == 0 || busy)
  return;
 if (periodic)
  now = state->now;
 else
  now = sbinuptime();
 CTR3(KTR_SPARE2, "active at %d:  now  %d.%08x",
     curcpu, (int)(now >> 32), (u_int)(now & 0xffffffff));
 spinlock_enter();
 td = curthread;
 td->td_intr_nesting_level++;
 handleevents(now, 1);
 td->td_intr_nesting_level--;
 spinlock_exit();
}
