
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int td_flags; int td_dbgflags; struct proc* td_proc; } ;
struct proc {int p_flag; } ;


 int EINTR ;
 int ERESTART ;
 int PROC_LOCK (struct proc*) ;
 int PROC_UNLOCK (struct proc*) ;
 scalar_t__ P_SHOULDSTOP (struct proc*) ;
 int P_SINGLE_EXIT ;
 int P_TRACED ;
 int TDB_SUSPEND ;
 int TDF_NEEDSUSPCHK ;
 int thread_suspend_check (int ) ;

__attribute__((used)) static int
umtxq_check_susp(struct thread *td, bool sleep)
{
 struct proc *p;
 int error;





 if ((td->td_flags & TDF_NEEDSUSPCHK) == 0)
  return (0);
 error = 0;
 p = td->td_proc;
 PROC_LOCK(p);
 if (p->p_flag & P_SINGLE_EXIT)
  error = EINTR;
 else if (P_SHOULDSTOP(p) ||
     ((p->p_flag & P_TRACED) && (td->td_dbgflags & TDB_SUSPEND)))
  error = sleep ? thread_suspend_check(0) : ERESTART;
 PROC_UNLOCK(p);
 return (error);
}
