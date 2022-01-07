
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_read_args {struct uio* a_uio; struct vnode* a_vp; } ;
struct vnode {scalar_t__ v_type; struct pfs_vdata* v_data; } ;
struct uio {scalar_t__ uio_resid; scalar_t__ uio_offset; } ;
struct sbuf {int dummy; } ;
struct proc {int dummy; } ;
struct pfs_vdata {int pvd_pid; struct pfs_node* pvd_pn; } ;
struct pfs_node {int pn_flags; int * pn_fill; int pn_name; } ;
typedef scalar_t__ off_t ;


 int EBADF ;
 int EINVAL ;
 int EIO ;
 int KASSERT_PN_IS_FILE (struct pfs_node*) ;
 int LK_RETRY ;
 scalar_t__ MAXPHYS ;
 scalar_t__ OFF_MAX ;
 int PFS_RAWRD ;
 int PFS_RD ;
 int PFS_RETURN (int) ;
 int PFS_TRACE (char*) ;
 int PRELE (struct proc*) ;
 int PROC_UNLOCK (struct proc*) ;
 int VOP_ISLOCKED (struct vnode*) ;
 int VOP_UNLOCK (struct vnode*,int ) ;
 scalar_t__ VREG ;
 int _PHOLD (struct proc*) ;
 int curthread ;
 int pfs_assert_not_owned (struct pfs_node*) ;
 int pfs_visible (int ,struct pfs_node*,int ,struct proc**) ;
 int pn_fill (int ,struct proc*,struct pfs_node*,struct sbuf*,struct uio*) ;
 int sbuf_data (struct sbuf*) ;
 int sbuf_delete (struct sbuf*) ;
 scalar_t__ sbuf_finish (struct sbuf*) ;
 scalar_t__ sbuf_len (struct sbuf*) ;
 struct sbuf* sbuf_new (struct sbuf*,int *,scalar_t__,int ) ;
 int uiomove_frombuf (int ,scalar_t__,struct uio*) ;
 int vdrop (struct vnode*) ;
 int vhold (struct vnode*) ;
 int vn_lock (struct vnode*,int) ;

__attribute__((used)) static int
pfs_read(struct vop_read_args *va)
{
 struct vnode *vn = va->a_vp;
 struct pfs_vdata *pvd = vn->v_data;
 struct pfs_node *pn = pvd->pvd_pn;
 struct uio *uio = va->a_uio;
 struct proc *proc;
 struct sbuf *sb = ((void*)0);
 int error, locked;
 off_t buflen;

 PFS_TRACE(("%s", pn->pn_name));
 pfs_assert_not_owned(pn);

 if (vn->v_type != VREG)
  PFS_RETURN (EINVAL);
 KASSERT_PN_IS_FILE(pn);

 if (!(pn->pn_flags & PFS_RD))
  PFS_RETURN (EBADF);

 if (pn->pn_fill == ((void*)0))
  PFS_RETURN (EIO);





 if (!pfs_visible(curthread, pn, pvd->pvd_pid, &proc))
  PFS_RETURN (EIO);
 if (proc != ((void*)0)) {
  _PHOLD(proc);
  PROC_UNLOCK(proc);
 }

 vhold(vn);
 locked = VOP_ISLOCKED(vn);
 VOP_UNLOCK(vn, 0);

 if (pn->pn_flags & PFS_RAWRD) {
  PFS_TRACE(("%zd resid", uio->uio_resid));
  error = pn_fill(curthread, proc, pn, ((void*)0), uio);
  PFS_TRACE(("%zd resid", uio->uio_resid));
  goto ret;
 }

 if (uio->uio_resid < 0 || uio->uio_offset < 0 ||
     uio->uio_resid > OFF_MAX - uio->uio_offset) {
  error = EINVAL;
  goto ret;
 }
 buflen = uio->uio_offset + uio->uio_resid;
 if (buflen > MAXPHYS)
  buflen = MAXPHYS;

 sb = sbuf_new(sb, ((void*)0), buflen + 1, 0);
 if (sb == ((void*)0)) {
  error = EIO;
  goto ret;
 }

 error = pn_fill(curthread, proc, pn, sb, uio);

 if (error) {
  sbuf_delete(sb);
  goto ret;
 }






 if (sbuf_finish(sb) == 0)
  buflen = sbuf_len(sb);
 error = uiomove_frombuf(sbuf_data(sb), buflen, uio);
 sbuf_delete(sb);
ret:
 vn_lock(vn, locked | LK_RETRY);
 vdrop(vn);
 if (proc != ((void*)0))
  PRELE(proc);
 PFS_RETURN (error);
}
