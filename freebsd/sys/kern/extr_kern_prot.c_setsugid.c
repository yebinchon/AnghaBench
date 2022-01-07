
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {int p_pfsflags; scalar_t__ p_stops; int p_flag; } ;


 int MA_OWNED ;
 int PF_ISUGID ;
 int PROC_LOCK_ASSERT (struct proc*,int ) ;
 int P_SUGID ;

void
setsugid(struct proc *p)
{

 PROC_LOCK_ASSERT(p, MA_OWNED);
 p->p_flag |= P_SUGID;
 if (!(p->p_pfsflags & PF_ISUGID))
  p->p_stops = 0;
}
