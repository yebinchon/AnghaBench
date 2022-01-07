
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {int p_treeflag; } ;


 struct proc* LIST_NEXT (struct proc*,int ) ;
 int LIST_REMOVE (struct proc*,int ) ;
 int P_TREE_FIRST_ORPHAN ;
 int P_TREE_ORPHANED ;
 int SA_XLOCKED ;
 int p_orphan ;
 int proctree_lock ;
 int sx_assert (int *,int ) ;

void
proc_clear_orphan(struct proc *p)
{
 struct proc *p1;

 sx_assert(&proctree_lock, SA_XLOCKED);
 if ((p->p_treeflag & P_TREE_ORPHANED) == 0)
  return;
 if ((p->p_treeflag & P_TREE_FIRST_ORPHAN) != 0) {
  p1 = LIST_NEXT(p, p_orphan);
  if (p1 != ((void*)0))
   p1->p_treeflag |= P_TREE_FIRST_ORPHAN;
  p->p_treeflag &= ~P_TREE_FIRST_ORPHAN;
 }
 LIST_REMOVE(p, p_orphan);
 p->p_treeflag &= ~P_TREE_ORPHANED;
}
