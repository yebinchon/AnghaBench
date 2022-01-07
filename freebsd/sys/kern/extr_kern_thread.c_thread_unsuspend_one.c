
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int td_flags; struct proc* td_proc; } ;
struct proc {int p_boundary_count; int p_suspcount; } ;


 int KASSERT (int ,char*) ;
 int MA_OWNED ;
 int PROC_SLOCK_ASSERT (struct proc*,int ) ;
 int TDF_ALLPROCSUSP ;
 int TDF_BOUNDARY ;
 int TD_CLR_SUSPENDED (struct thread*) ;
 int TD_IS_SUSPENDED (struct thread*) ;
 int THREAD_LOCK_ASSERT (struct thread*,int ) ;
 int setrunnable (struct thread*) ;

__attribute__((used)) static int
thread_unsuspend_one(struct thread *td, struct proc *p, bool boundary)
{

 THREAD_LOCK_ASSERT(td, MA_OWNED);
 KASSERT(TD_IS_SUSPENDED(td), ("Thread not suspended"));
 TD_CLR_SUSPENDED(td);
 td->td_flags &= ~TDF_ALLPROCSUSP;
 if (td->td_proc == p) {
  PROC_SLOCK_ASSERT(p, MA_OWNED);
  p->p_suspcount--;
  if (boundary && (td->td_flags & TDF_BOUNDARY) != 0) {
   td->td_flags &= ~TDF_BOUNDARY;
   p->p_boundary_count--;
  }
 }
 return (setrunnable(td));
}
