
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct proc {int p_flag; } ;
struct pfs_node {int * pn_vis; } ;


 int MA_OWNED ;
 int PROC_LOCK_ASSERT (struct proc*,int ) ;
 int P_WEXIT ;
 scalar_t__ p_cansee (struct thread*,struct proc*) ;
 int pn_vis (struct thread*,struct proc*,struct pfs_node*) ;

__attribute__((used)) static int
pfs_visible_proc(struct thread *td, struct pfs_node *pn, struct proc *proc)
{
 int visible;

 if (proc == ((void*)0))
  return (0);

 PROC_LOCK_ASSERT(proc, MA_OWNED);

 visible = ((proc->p_flag & P_WEXIT) == 0);
 if (visible)
  visible = (p_cansee(td, proc) == 0);
 if (visible && pn->pn_vis != ((void*)0))
  visible = pn_vis(td, proc, pn);
 if (!visible)
  return (0);
 return (1);
}
