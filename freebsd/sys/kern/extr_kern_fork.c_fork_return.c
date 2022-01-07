
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct trapframe {int dummy; } ;
struct TYPE_2__ {int code; } ;
struct thread {int td_dbgflags; TYPE_1__ td_sa; struct proc* td_proc; } ;
struct proc {int p_flag; int p_ptevents; } ;


 scalar_t__ KTRPOINT (struct thread*,int ) ;
 int KTR_SYSRET ;
 int PROC_LOCK (struct proc*) ;
 int PROC_UNLOCK (struct proc*) ;
 int PTRACE_SCX ;
 int P_TRACED ;
 int SIGSTOP ;
 int SIGTRAP ;
 int SYS_fork ;
 int S_SCX ;
 int TDB_BORN ;
 int TDB_CHILD ;
 int TDB_FSTP ;
 int TDB_SCX ;
 int TDB_STOPATFORK ;
 int _STOPEVENT (struct proc*,int ,int ) ;
 int ktrsysret (int ,int ,int ) ;
 int ptracestop (struct thread*,int ,int *) ;
 int userret (struct thread*,struct trapframe*) ;

void
fork_return(struct thread *td, struct trapframe *frame)
{
 struct proc *p;

 p = td->td_proc;
 if (td->td_dbgflags & TDB_STOPATFORK) {
  PROC_LOCK(p);
  if ((p->p_flag & P_TRACED) != 0) {



   td->td_dbgflags |= TDB_CHILD | TDB_SCX | TDB_FSTP;
   ptracestop(td, SIGSTOP, ((void*)0));
   td->td_dbgflags &= ~(TDB_CHILD | TDB_SCX);
  } else {



   td->td_dbgflags &= ~TDB_STOPATFORK;
  }
  PROC_UNLOCK(p);
 } else if (p->p_flag & P_TRACED || td->td_dbgflags & TDB_BORN) {




  PROC_LOCK(p);
  td->td_dbgflags |= TDB_SCX;
  _STOPEVENT(p, S_SCX, td->td_sa.code);
  if ((p->p_ptevents & PTRACE_SCX) != 0 ||
      (td->td_dbgflags & TDB_BORN) != 0)
   ptracestop(td, SIGTRAP, ((void*)0));
  td->td_dbgflags &= ~(TDB_SCX | TDB_BORN);
  PROC_UNLOCK(p);
 }

 userret(td, frame);





}
