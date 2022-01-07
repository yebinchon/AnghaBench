
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct proc {int dummy; } ;
struct pfs_node {scalar_t__ pn_type; struct pfs_node* pn_next; struct pfs_node* pn_nodes; } ;


 struct proc* LIST_FIRST (int *) ;
 struct proc* LIST_NEXT (struct proc*,int ) ;
 int PROC_LOCK (struct proc*) ;
 int PROC_UNLOCK (struct proc*) ;
 int SX_SLOCKED ;
 int allproc ;
 int allproc_lock ;
 int p_list ;
 int pfs_assert_owned (struct pfs_node*) ;
 int pfs_visible_proc (struct thread*,struct pfs_node*,struct proc*) ;
 scalar_t__ pfstype_procdir ;
 int sx_assert (int *,int ) ;

__attribute__((used)) static int
pfs_iterate(struct thread *td, struct proc *proc, struct pfs_node *pd,
     struct pfs_node **pn, struct proc **p)
{
 int visible;

 sx_assert(&allproc_lock, SX_SLOCKED);
 pfs_assert_owned(pd);
 again:
 if (*pn == ((void*)0)) {

  *pn = pd->pn_nodes;
 } else if ((*pn)->pn_type != pfstype_procdir) {

  *pn = (*pn)->pn_next;
 }
 if (*pn != ((void*)0) && (*pn)->pn_type == pfstype_procdir) {

  if (*p == ((void*)0))
   *p = LIST_FIRST(&allproc);
  else
   *p = LIST_NEXT(*p, p_list);

  if (*p == ((void*)0))
   *pn = (*pn)->pn_next;
  else
   PROC_LOCK(*p);
 }

 if ((*pn) == ((void*)0))
  return (-1);

 if (*p != ((void*)0)) {
  visible = pfs_visible_proc(td, *pn, *p);
  PROC_UNLOCK(*p);
 } else if (proc != ((void*)0)) {
  visible = pfs_visible_proc(td, *pn, proc);
 } else {
  visible = 1;
 }
 if (!visible)
  goto again;

 return (0);
}
