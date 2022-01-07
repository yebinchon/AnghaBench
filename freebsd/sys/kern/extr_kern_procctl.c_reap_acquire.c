
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct proc {int p_treeflag; } ;


 int EBUSY ;
 int EPERM ;
 int P_TREE_REAPER ;
 int SX_XLOCKED ;
 struct proc* curproc ;
 int proctree_lock ;
 int sx_assert (int *,int ) ;

__attribute__((used)) static int
reap_acquire(struct thread *td, struct proc *p)
{

 sx_assert(&proctree_lock, SX_XLOCKED);
 if (p != curproc)
  return (EPERM);
 if ((p->p_treeflag & P_TREE_REAPER) != 0)
  return (EBUSY);
 p->p_treeflag |= P_TREE_REAPER;




 return (0);
}
