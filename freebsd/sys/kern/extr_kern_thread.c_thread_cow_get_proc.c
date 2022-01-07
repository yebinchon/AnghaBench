
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int td_cowgen; int td_limit; int td_ucred; } ;
struct proc {int p_cowgen; int p_limit; int p_ucred; } ;


 int MA_OWNED ;
 int PROC_LOCK_ASSERT (struct proc*,int ) ;
 int crhold (int ) ;
 int lim_hold (int ) ;

void
thread_cow_get_proc(struct thread *newtd, struct proc *p)
{

 PROC_LOCK_ASSERT(p, MA_OWNED);
 newtd->td_ucred = crhold(p->p_ucred);
 newtd->td_limit = lim_hold(p->p_limit);
 newtd->td_cowgen = p->p_cowgen;
}
