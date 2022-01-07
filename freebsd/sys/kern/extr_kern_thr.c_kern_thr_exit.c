
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int td_dbgflags; struct proc* td_proc; } ;
struct proc {int p_numthreads; int p_pendingexits; int p_ptevents; } ;


 int AUDIT_SYSCALL_EXIT (int ,struct thread*) ;
 int KASSERT (int,char*) ;
 int PROC_LOCK (struct proc*) ;
 int PROC_SLOCK (struct proc*) ;
 int PROC_UNLOCK (struct proc*) ;
 int PTRACE_LWP ;
 int RACCT_NTHR ;
 int SIGTRAP ;
 int TDB_EXIT ;
 int ptracestop (struct thread*,int ,int *) ;
 int racct_sub (struct proc*,int ,int) ;
 int tdsigcleanup (struct thread*) ;
 int thread_exit () ;
 int thread_stopped (struct proc*) ;
 int tidhash_remove (struct thread*) ;

int
kern_thr_exit(struct thread *td)
{
 struct proc *p;

 p = td->td_proc;
 PROC_LOCK(p);
 if (p->p_numthreads == p->p_pendingexits + 1) {





  PROC_UNLOCK(p);
  return (0);
 }

 p->p_pendingexits++;
 td->td_dbgflags |= TDB_EXIT;
 if (p->p_ptevents & PTRACE_LWP)
  ptracestop(td, SIGTRAP, ((void*)0));
 PROC_UNLOCK(p);
 tidhash_remove(td);
 PROC_LOCK(p);
 p->p_pendingexits--;







 KASSERT(p->p_numthreads > 1, ("too few threads"));
 racct_sub(p, RACCT_NTHR, 1);
 tdsigcleanup(td);





 PROC_SLOCK(p);
 thread_stopped(p);
 thread_exit();

}
