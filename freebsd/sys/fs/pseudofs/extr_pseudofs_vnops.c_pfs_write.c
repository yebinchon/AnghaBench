
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_write_args {struct uio* a_uio; struct vnode* a_vp; } ;
struct vnode {scalar_t__ v_type; struct pfs_vdata* v_data; } ;
struct uio {int dummy; } ;
struct sbuf {int dummy; } ;
struct proc {int dummy; } ;
struct pfs_vdata {int pvd_pid; struct pfs_node* pvd_pn; } ;
struct pfs_node {int pn_flags; int * pn_fill; int pn_name; } ;


 int EBADF ;
 int EINVAL ;
 int EIO ;
 int KASSERT_PN_IS_FILE (struct pfs_node*) ;
 int PFS_RAWWR ;
 int PFS_RETURN (int) ;
 int PFS_TRACE (char*) ;
 int PFS_WR ;
 int PRELE (struct proc*) ;
 int PROC_UNLOCK (struct proc*) ;
 scalar_t__ VREG ;
 int _PHOLD (struct proc*) ;
 int curthread ;
 int pfs_assert_not_owned (struct pfs_node*) ;
 int pfs_visible (int ,struct pfs_node*,int ,struct proc**) ;
 int pn_fill (int ,struct proc*,struct pfs_node*,struct sbuf*,struct uio*) ;
 int sbuf_delete (struct sbuf*) ;
 int sbuf_uionew (struct sbuf*,struct uio*,int*) ;

__attribute__((used)) static int
pfs_write(struct vop_write_args *va)
{
 struct vnode *vn = va->a_vp;
 struct pfs_vdata *pvd = vn->v_data;
 struct pfs_node *pn = pvd->pvd_pn;
 struct uio *uio = va->a_uio;
 struct proc *proc;
 struct sbuf sb;
 int error;

 PFS_TRACE(("%s", pn->pn_name));
 pfs_assert_not_owned(pn);

 if (vn->v_type != VREG)
  PFS_RETURN (EINVAL);
 KASSERT_PN_IS_FILE(pn);

 if (!(pn->pn_flags & PFS_WR))
  PFS_RETURN (EBADF);

 if (pn->pn_fill == ((void*)0))
  PFS_RETURN (EIO);





 if (!pfs_visible(curthread, pn, pvd->pvd_pid, &proc))
  PFS_RETURN (EIO);
 if (proc != ((void*)0)) {
  _PHOLD(proc);
  PROC_UNLOCK(proc);
 }

 if (pn->pn_flags & PFS_RAWWR) {
  error = pn_fill(curthread, proc, pn, ((void*)0), uio);
  if (proc != ((void*)0))
   PRELE(proc);
  PFS_RETURN (error);
 }

 sbuf_uionew(&sb, uio, &error);
 if (error) {
  if (proc != ((void*)0))
   PRELE(proc);
  PFS_RETURN (error);
 }

 error = pn_fill(curthread, proc, pn, &sb, uio);

 sbuf_delete(&sb);
 if (proc != ((void*)0))
  PRELE(proc);
 PFS_RETURN (error);
}
