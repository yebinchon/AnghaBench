
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {int p_ptevents; int p_flag2; int p_flag; } ;


 int MA_OWNED ;
 int P2_PTRACE_FSTP ;
 int PROC_LOCK_ASSERT (struct proc*,int ) ;
 int PTRACE_DEFAULT ;
 int P_TRACED ;
 int SX_XLOCKED ;
 int proctree_lock ;
 int sx_assert (int *,int ) ;

void
proc_set_traced(struct proc *p, bool stop)
{

 sx_assert(&proctree_lock, SX_XLOCKED);
 PROC_LOCK_ASSERT(p, MA_OWNED);
 p->p_flag |= P_TRACED;
 if (stop)
  p->p_flag2 |= P2_PTRACE_FSTP;
 p->p_ptevents = PTRACE_DEFAULT;
}
