
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {scalar_t__ p_pid; } ;


 int MA_OWNED ;
 int PROC_LOCK_ASSERT (struct proc*,int ) ;
 int SX_LOCKED ;
 struct proc* curproc ;
 struct proc* proc_realparent (struct proc*) ;
 int proctree_lock ;
 int sx_assert (int *,int ) ;

int
inferior(struct proc *p)
{

 sx_assert(&proctree_lock, SX_LOCKED);
 PROC_LOCK_ASSERT(p, MA_OWNED);
 for (; p != curproc; p = proc_realparent(p)) {
  if (p->p_pid == 0)
   return (0);
 }
 return (1);
}
