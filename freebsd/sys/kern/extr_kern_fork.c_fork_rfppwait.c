
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int td_pflags; int td_dbgflags; struct proc* td_rfppwait_p; struct proc* td_proc; } ;
struct proc {int p_flag; int p_ptevents; int p_mtx; int p_pwait; } ;


 int MPASS (int) ;
 int PROC_LOCK (struct proc*) ;
 int PROC_UNLOCK (struct proc*) ;
 int PTRACE_VFORK ;
 int P_PPWAIT ;
 int SIGTRAP ;
 int TDB_VFORK ;
 int TDP_RFPPWAIT ;
 int cv_timedwait (int *,int *,int ) ;
 int hz ;
 int ptracestop (struct thread*,int ,int *) ;
 int thread_suspend_check (int ) ;
 scalar_t__ thread_suspend_check_needed () ;

void
fork_rfppwait(struct thread *td)
{
 struct proc *p, *p2;

 MPASS(td->td_pflags & TDP_RFPPWAIT);

 p = td->td_proc;
 td->td_pflags &= ~TDP_RFPPWAIT;
 p2 = td->td_rfppwait_p;
again:
 PROC_LOCK(p2);
 while (p2->p_flag & P_PPWAIT) {
  PROC_LOCK(p);
  if (thread_suspend_check_needed()) {
   PROC_UNLOCK(p2);
   thread_suspend_check(0);
   PROC_UNLOCK(p);
   goto again;
  } else {
   PROC_UNLOCK(p);
  }
  cv_timedwait(&p2->p_pwait, &p2->p_mtx, hz);
 }
 PROC_UNLOCK(p2);

 if (td->td_dbgflags & TDB_VFORK) {
  PROC_LOCK(p);
  if (p->p_ptevents & PTRACE_VFORK)
   ptracestop(td, SIGTRAP, ((void*)0));
  td->td_dbgflags &= ~TDB_VFORK;
  PROC_UNLOCK(p);
 }
}
