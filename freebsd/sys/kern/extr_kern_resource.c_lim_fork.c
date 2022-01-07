
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {scalar_t__ p_cpulimit; int p_limco; int p_mtx; int p_limit; } ;


 int C_PREL (int) ;
 int MA_OWNED ;
 int PROC_LOCK_ASSERT (struct proc*,int ) ;
 scalar_t__ RLIM_INFINITY ;
 int SBT_1S ;
 int callout_init_mtx (int *,int *,int ) ;
 int callout_reset_sbt (int *,int ,int ,int ,struct proc*,int ) ;
 int lim_cb ;
 int lim_hold (int ) ;

void
lim_fork(struct proc *p1, struct proc *p2)
{

 PROC_LOCK_ASSERT(p1, MA_OWNED);
 PROC_LOCK_ASSERT(p2, MA_OWNED);

 p2->p_limit = lim_hold(p1->p_limit);
 callout_init_mtx(&p2->p_limco, &p2->p_mtx, 0);
 if (p1->p_cpulimit != RLIM_INFINITY)
  callout_reset_sbt(&p2->p_limco, SBT_1S, 0,
      lim_cb, p2, C_PREL(1));
}
