
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {int p_mtx; int p_siglist; } ;


 int PPAUSE ;
 int PROC_LOCK (struct proc*) ;
 int PROC_UNLOCK (struct proc*) ;
 scalar_t__ SIGISMEMBER (int ,int ) ;
 int SIGSTOP ;
 int msleep (int *,int *,int ,char*,int ) ;
 int wakeup (int *) ;

void
kproc_suspend_check(struct proc *p)
{
 PROC_LOCK(p);
 while (SIGISMEMBER(p->p_siglist, SIGSTOP)) {
  wakeup(&p->p_siglist);
  msleep(&p->p_siglist, &p->p_mtx, PPAUSE, "kpsusp", 0);
 }
 PROC_UNLOCK(p);
}
