
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {int td_state; int td_flags; int td_inhibitors; TYPE_1__* td_proc; } ;
struct TYPE_2__ {scalar_t__ p_state; int p_pid; } ;


 int KASSERT (int,char*) ;
 int MA_OWNED ;
 scalar_t__ PRS_ZOMBIE ;
 int TDF_INMEM ;
 int TDF_SWAPINREQ ;
 int TDI_SWAPPED ;




 int THREAD_LOCK_ASSERT (struct thread*,int ) ;
 int panic (char*) ;
 int printf (char*,int) ;
 int sched_wakeup (struct thread*) ;

int
setrunnable(struct thread *td)
{

 THREAD_LOCK_ASSERT(td, MA_OWNED);
 KASSERT(td->td_proc->p_state != PRS_ZOMBIE,
     ("setrunnable: pid %d is a zombie", td->td_proc->p_pid));
 switch (td->td_state) {
 case 129:
 case 128:
  return (0);
 case 130:




  if (td->td_inhibitors != TDI_SWAPPED)
   return (0);

 case 131:
  break;
 default:
  printf("state is 0x%x", td->td_state);
  panic("setrunnable(2)");
 }
 if ((td->td_flags & TDF_INMEM) == 0) {
  if ((td->td_flags & TDF_SWAPINREQ) == 0) {
   td->td_flags |= TDF_SWAPINREQ;
   return (1);
  }
 } else
  sched_wakeup(td);
 return (0);
}
