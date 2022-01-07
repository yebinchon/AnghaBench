
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {int p_flag; } ;


 int MA_OWNED ;
 int PROC_LOCK_ASSERT (struct proc*,int ) ;
 int P_INMEM ;
 int panic (char*,struct proc*) ;

void
faultin(struct proc *p)
{

 PROC_LOCK_ASSERT(p, MA_OWNED);
 if ((p->p_flag & P_INMEM) == 0)
  panic("faultin: proc %p swapped out with NO_SWAPPING", p);
}
