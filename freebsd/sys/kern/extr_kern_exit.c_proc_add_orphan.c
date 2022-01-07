
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {int p_flag; int p_treeflag; int p_orphans; } ;


 int KASSERT (int,char*) ;
 scalar_t__ LIST_EMPTY (int *) ;
 int LIST_FIRST (int *) ;
 int LIST_INSERT_AFTER (int ,struct proc*,int ) ;
 int LIST_INSERT_HEAD (int *,struct proc*,int ) ;
 int P_TRACED ;
 int P_TREE_FIRST_ORPHAN ;
 int P_TREE_ORPHANED ;
 int SX_XLOCKED ;
 int p_orphan ;
 int proctree_lock ;
 int sx_assert (int *,int ) ;

void
proc_add_orphan(struct proc *child, struct proc *parent)
{

 sx_assert(&proctree_lock, SX_XLOCKED);
 KASSERT((child->p_flag & P_TRACED) != 0,
     ("proc_add_orphan: not traced"));

 if (LIST_EMPTY(&parent->p_orphans)) {
  child->p_treeflag |= P_TREE_FIRST_ORPHAN;
  LIST_INSERT_HEAD(&parent->p_orphans, child, p_orphan);
 } else {
  LIST_INSERT_AFTER(LIST_FIRST(&parent->p_orphans),
      child, p_orphan);
 }
 child->p_treeflag |= P_TREE_ORPHANED;
}
