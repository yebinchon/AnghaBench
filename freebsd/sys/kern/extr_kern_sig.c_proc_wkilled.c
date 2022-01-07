
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {int p_flag; } ;


 int MA_OWNED ;
 int PROC_LOCK_ASSERT (struct proc*,int ) ;
 int P_INMEM ;
 int P_SWAPPINGIN ;
 int P_WKILLED ;
 int proc0 ;
 int wakeup (int *) ;

void
proc_wkilled(struct proc *p)
{

 PROC_LOCK_ASSERT(p, MA_OWNED);
 if ((p->p_flag & P_WKILLED) == 0) {
  p->p_flag |= P_WKILLED;





  if ((p->p_flag & (P_INMEM | P_SWAPPINGIN)) == 0)
   wakeup(&proc0);
 }
}
