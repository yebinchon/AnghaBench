
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {int p_flag; int p_mtx; int p_siglist; } ;


 int EINVAL ;
 int PDROP ;
 int PPAUSE ;
 int PROC_LOCK (struct proc*) ;
 int PROC_UNLOCK (struct proc*) ;
 int P_KPROC ;
 int SIGADDSET (int ,int ) ;
 int SIGSTOP ;
 int msleep (int *,int *,int,char*,int) ;
 int wakeup (struct proc*) ;

int
kproc_suspend(struct proc *p, int timo)
{




 PROC_LOCK(p);
 if ((p->p_flag & P_KPROC) == 0) {
  PROC_UNLOCK(p);
  return (EINVAL);
 }
 SIGADDSET(p->p_siglist, SIGSTOP);
 wakeup(p);
 return msleep(&p->p_siglist, &p->p_mtx, PPAUSE | PDROP, "suspkp", timo);
}
