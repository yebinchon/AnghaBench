
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {int p_flag; int p_siglist; } ;


 int EINVAL ;
 int PROC_LOCK (struct proc*) ;
 int PROC_UNLOCK (struct proc*) ;
 int P_KPROC ;
 int SIGDELSET (int ,int ) ;
 int SIGSTOP ;
 int wakeup (int *) ;

int
kproc_resume(struct proc *p)
{




 PROC_LOCK(p);
 if ((p->p_flag & P_KPROC) == 0) {
  PROC_UNLOCK(p);
  return (EINVAL);
 }
 SIGDELSET(p->p_siglist, SIGSTOP);
 PROC_UNLOCK(p);
 wakeup(&p->p_siglist);
 return (0);
}
