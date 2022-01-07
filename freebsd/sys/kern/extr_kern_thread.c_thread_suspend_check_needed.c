
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int td_dbgflags; struct proc* td_proc; } ;
struct proc {int p_flag; } ;


 int MA_OWNED ;
 int PROC_LOCK_ASSERT (struct proc*,int ) ;
 scalar_t__ P_SHOULDSTOP (struct proc*) ;
 int P_TRACED ;
 int TDB_SUSPEND ;
 struct thread* curthread ;

bool
thread_suspend_check_needed(void)
{
 struct proc *p;
 struct thread *td;

 td = curthread;
 p = td->td_proc;
 PROC_LOCK_ASSERT(p, MA_OWNED);
 return (P_SHOULDSTOP(p) || ((p->p_flag & P_TRACED) != 0 &&
     (td->td_dbgflags & TDB_SUSPEND) != 0));
}
