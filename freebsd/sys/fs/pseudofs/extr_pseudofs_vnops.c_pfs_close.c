
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_close_args {int a_td; struct vnode* a_vp; } ;
struct vnode {struct pfs_vdata* v_data; } ;
struct proc {int dummy; } ;
struct pfs_vdata {scalar_t__ pvd_pid; struct pfs_node* pvd_pn; } ;
struct pfs_node {int * pn_close; int pn_name; } ;


 scalar_t__ NO_PID ;
 int PFS_RETURN (int) ;
 int PFS_TRACE (char*) ;
 int PROC_UNLOCK (struct proc*) ;
 struct proc* pfind (scalar_t__) ;
 int pfs_assert_not_owned (struct pfs_node*) ;
 int pn_close (int ,struct proc*,struct pfs_node*) ;
 int vrefcnt (struct vnode*) ;

__attribute__((used)) static int
pfs_close(struct vop_close_args *va)
{
 struct vnode *vn = va->a_vp;
 struct pfs_vdata *pvd = vn->v_data;
 struct pfs_node *pn = pvd->pvd_pn;
 struct proc *proc;
 int error;

 PFS_TRACE(("%s", pn->pn_name));
 pfs_assert_not_owned(pn);





 if (vrefcnt(vn) > 1 || pn->pn_close == ((void*)0))
  PFS_RETURN (0);

 if (pvd->pvd_pid != NO_PID) {
  proc = pfind(pvd->pvd_pid);
 } else {
  proc = ((void*)0);
 }

 error = pn_close(va->a_td, proc, pn);

 if (proc != ((void*)0))
  PROC_UNLOCK(proc);

 PFS_RETURN (error);
}
