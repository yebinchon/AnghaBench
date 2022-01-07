
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int td_flags; struct proc* td_proc; } ;
struct proc {int p_suspcount; } ;


 int KASSERT (int,char*) ;
 int MA_OWNED ;
 int PROC_SLOCK_ASSERT (struct proc*,int ) ;
 int TDF_NEEDSUSPCHK ;
 int TD_IS_SUSPENDED (struct thread*) ;
 int TD_SET_SUSPENDED (struct thread*) ;
 int THREAD_LOCK_ASSERT (struct thread*,int ) ;
 int sched_sleep (struct thread*,int ) ;

void
thread_suspend_one(struct thread *td)
{
 struct proc *p;

 p = td->td_proc;
 PROC_SLOCK_ASSERT(p, MA_OWNED);
 THREAD_LOCK_ASSERT(td, MA_OWNED);
 KASSERT(!TD_IS_SUSPENDED(td), ("already suspended"));
 p->p_suspcount++;
 td->td_flags &= ~TDF_NEEDSUSPCHK;
 TD_SET_SUSPENDED(td);
 sched_sleep(td, 0);
}
