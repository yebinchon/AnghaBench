
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {int p_flag; int p_pid; int p_oppid; struct proc* p_pptr; int p_children; int p_ksi; } ;


 int LIST_INSERT_HEAD (int *,struct proc*,int ) ;
 int LIST_REMOVE (struct proc*,int ) ;
 int MA_OWNED ;
 int PROC_LOCK (struct proc*) ;
 int PROC_LOCK_ASSERT (struct proc*,int ) ;
 int PROC_UNLOCK (struct proc*) ;
 int P_TRACED ;
 int SX_XLOCKED ;
 int p_sibling ;
 int proc_add_orphan (struct proc*,struct proc*) ;
 int proc_clear_orphan (struct proc*) ;
 int proctree_lock ;
 int sigqueue_take (int ) ;
 int sx_assert (int *,int ) ;

void
proc_reparent(struct proc *child, struct proc *parent, bool set_oppid)
{

 sx_assert(&proctree_lock, SX_XLOCKED);
 PROC_LOCK_ASSERT(child, MA_OWNED);
 if (child->p_pptr == parent)
  return;

 PROC_LOCK(child->p_pptr);
 sigqueue_take(child->p_ksi);
 PROC_UNLOCK(child->p_pptr);
 LIST_REMOVE(child, p_sibling);
 LIST_INSERT_HEAD(&parent->p_children, child, p_sibling);

 proc_clear_orphan(child);
 if ((child->p_flag & P_TRACED) != 0) {
  proc_add_orphan(child, child->p_pptr);
 }

 child->p_pptr = parent;
 if (set_oppid)
  child->p_oppid = parent->p_pid;
}
