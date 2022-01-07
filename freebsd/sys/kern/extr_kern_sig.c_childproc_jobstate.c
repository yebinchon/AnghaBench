
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigacts {int ps_flag; int ps_mtx; } ;
struct proc {struct sigacts* p_sigacts; struct proc* p_pptr; int p_flag; } ;


 int MA_OWNED ;
 int PROC_LOCK_ASSERT (struct proc*,int ) ;
 int PS_NOCLDSTOP ;
 int P_STATCHILD ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int sigparent (struct proc*,int,int) ;
 int wakeup (struct proc*) ;

__attribute__((used)) static void
childproc_jobstate(struct proc *p, int reason, int sig)
{
 struct sigacts *ps;

 PROC_LOCK_ASSERT(p, MA_OWNED);
 PROC_LOCK_ASSERT(p->p_pptr, MA_OWNED);







 p->p_pptr->p_flag |= P_STATCHILD;
 wakeup(p->p_pptr);

 ps = p->p_pptr->p_sigacts;
 mtx_lock(&ps->ps_mtx);
 if ((ps->ps_flag & PS_NOCLDSTOP) == 0) {
  mtx_unlock(&ps->ps_mtx);
  sigparent(p, reason, sig);
 } else
  mtx_unlock(&ps->ps_mtx);
}
