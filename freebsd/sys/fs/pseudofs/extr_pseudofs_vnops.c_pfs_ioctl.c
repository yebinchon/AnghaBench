
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_ioctl_args {int a_data; int a_command; struct vnode* a_vp; } ;
struct vnode {int v_iflag; scalar_t__ v_type; struct pfs_vdata* v_data; } ;
struct proc {int dummy; } ;
struct pfs_vdata {int pvd_pid; struct pfs_node* pvd_pn; } ;
struct pfs_node {int * pn_ioctl; int pn_name; } ;


 int EBADF ;
 int EINVAL ;
 int EIO ;
 int ENOTTY ;
 int KASSERT_PN_IS_FILE (struct pfs_node*) ;
 int LK_RETRY ;
 int LK_SHARED ;
 int PFS_RETURN (int) ;
 int PFS_TRACE (char*) ;
 int PROC_UNLOCK (struct proc*) ;
 int VI_DOOMED ;
 int VOP_UNLOCK (struct vnode*,int ) ;
 scalar_t__ VREG ;
 int curthread ;
 int pfs_assert_not_owned (struct pfs_node*) ;
 int pfs_visible (int ,struct pfs_node*,int ,struct proc**) ;
 int pn_ioctl (int ,struct proc*,struct pfs_node*,int ,int ) ;
 int vn_lock (struct vnode*,int) ;

__attribute__((used)) static int
pfs_ioctl(struct vop_ioctl_args *va)
{
 struct vnode *vn;
 struct pfs_vdata *pvd;
 struct pfs_node *pn;
 struct proc *proc;
 int error;

 vn = va->a_vp;
 vn_lock(vn, LK_SHARED | LK_RETRY);
 if (vn->v_iflag & VI_DOOMED) {
  VOP_UNLOCK(vn, 0);
  return (EBADF);
 }
 pvd = vn->v_data;
 pn = pvd->pvd_pn;

 PFS_TRACE(("%s: %lx", pn->pn_name, va->a_command));
 pfs_assert_not_owned(pn);

 if (vn->v_type != VREG) {
  VOP_UNLOCK(vn, 0);
  PFS_RETURN (EINVAL);
 }
 KASSERT_PN_IS_FILE(pn);

 if (pn->pn_ioctl == ((void*)0)) {
  VOP_UNLOCK(vn, 0);
  PFS_RETURN (ENOTTY);
 }





 if (!pfs_visible(curthread, pn, pvd->pvd_pid, &proc)) {
  VOP_UNLOCK(vn, 0);
  PFS_RETURN (EIO);
 }

 error = pn_ioctl(curthread, proc, pn, va->a_command, va->a_data);

 if (proc != ((void*)0))
  PROC_UNLOCK(proc);

 VOP_UNLOCK(vn, 0);
 PFS_RETURN (error);
}
