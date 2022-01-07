
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {int p_suspcount; int p_flag; int p_numthreads; int p_pptr; } ;


 int CLD_STOPPED ;
 int CLD_TRAPPED ;
 int MA_OWNED ;
 int PROC_LOCK (int ) ;
 int PROC_LOCK_ASSERT (struct proc*,int ) ;
 int PROC_SLOCK (struct proc*) ;
 int PROC_SLOCK_ASSERT (struct proc*,int ) ;
 int PROC_SUNLOCK (struct proc*) ;
 int PROC_UNLOCK (int ) ;
 int P_STOPPED_SIG ;
 int P_TRACED ;
 int P_WAITED ;
 int childproc_stopped (struct proc*,int ) ;
 struct proc* curproc ;

void
thread_stopped(struct proc *p)
{
 int n;

 PROC_LOCK_ASSERT(p, MA_OWNED);
 PROC_SLOCK_ASSERT(p, MA_OWNED);
 n = p->p_suspcount;
 if (p == curproc)
  n++;
 if ((p->p_flag & P_STOPPED_SIG) && (n == p->p_numthreads)) {
  PROC_SUNLOCK(p);
  p->p_flag &= ~P_WAITED;
  PROC_LOCK(p->p_pptr);
  childproc_stopped(p, (p->p_flag & P_TRACED) ?
   CLD_TRAPPED : CLD_STOPPED);
  PROC_UNLOCK(p->p_pptr);
  PROC_SLOCK(p);
 }
}
