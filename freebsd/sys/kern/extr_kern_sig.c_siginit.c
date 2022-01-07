
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigacts {int ps_mtx; int ps_sigignore; } ;
struct proc {struct sigacts* p_sigacts; } ;


 int NSIG ;
 int PROC_LOCK (struct proc*) ;
 int PROC_UNLOCK (struct proc*) ;
 int SIGADDSET (int ,int) ;
 int SIGCONT ;
 int SIGPROP_IGNORE ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int sigprop (int) ;

void
siginit(struct proc *p)
{
 int i;
 struct sigacts *ps;

 PROC_LOCK(p);
 ps = p->p_sigacts;
 mtx_lock(&ps->ps_mtx);
 for (i = 1; i <= NSIG; i++) {
  if (sigprop(i) & SIGPROP_IGNORE && i != SIGCONT) {
   SIGADDSET(ps->ps_sigignore, i);
  }
 }
 mtx_unlock(&ps->ps_mtx);
 PROC_UNLOCK(p);
}
