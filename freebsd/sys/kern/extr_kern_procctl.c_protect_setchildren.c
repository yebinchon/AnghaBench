
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct proc {struct proc* p_pptr; int p_children; } ;


 int LIST_EMPTY (int *) ;
 struct proc* LIST_FIRST (int *) ;
 struct proc* LIST_NEXT (struct proc*,int ) ;
 int PROC_LOCK (struct proc*) ;
 int PROC_UNLOCK (struct proc*) ;
 int SX_LOCKED ;
 int p_sibling ;
 int proctree_lock ;
 int protect_setchild (struct thread*,struct proc*,int) ;
 int sx_assert (int *,int ) ;

__attribute__((used)) static int
protect_setchildren(struct thread *td, struct proc *top, int flags)
{
 struct proc *p;
 int ret;

 p = top;
 ret = 0;
 sx_assert(&proctree_lock, SX_LOCKED);
 for (;;) {
  ret |= protect_setchild(td, p, flags);
  PROC_UNLOCK(p);





  if (!LIST_EMPTY(&p->p_children))
   p = LIST_FIRST(&p->p_children);
  else for (;;) {
   if (p == top) {
    PROC_LOCK(p);
    return (ret);
   }
   if (LIST_NEXT(p, p_sibling)) {
    p = LIST_NEXT(p, p_sibling);
    break;
   }
   p = p->p_pptr;
  }
  PROC_LOCK(p);
 }
}
