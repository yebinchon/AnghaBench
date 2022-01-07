
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_readlink_args {struct uio* a_uio; struct vnode* a_vp; } ;
struct vnode {scalar_t__ v_type; struct pfs_vdata* v_data; } ;
struct uio {int dummy; } ;
struct sbuf {int dummy; } ;
struct proc {int p_flag; } ;
struct pfs_vdata {scalar_t__ pvd_pid; struct pfs_node* pvd_pn; } ;
struct pfs_node {int * pn_fill; int pn_name; } ;


 int EINVAL ;
 int EIO ;
 int ENAMETOOLONG ;
 int KASSERT_PN_IS_LINK (struct pfs_node*) ;
 int LK_RETRY ;
 scalar_t__ NO_PID ;
 int PATH_MAX ;
 int PFS_RETURN (int) ;
 int PFS_TRACE (char*) ;
 int PRELE (struct proc*) ;
 int PROC_UNLOCK (struct proc*) ;
 int P_WEXIT ;
 scalar_t__ VLNK ;
 int VOP_ISLOCKED (struct vnode*) ;
 int VOP_UNLOCK (struct vnode*,int ) ;
 int _PHOLD (struct proc*) ;
 int curthread ;
 struct proc* pfind (scalar_t__) ;
 int pfs_assert_not_owned (struct pfs_node*) ;
 int pn_fill (int ,struct proc*,struct pfs_node*,struct sbuf*,int *) ;
 int sbuf_data (struct sbuf*) ;
 int sbuf_delete (struct sbuf*) ;
 scalar_t__ sbuf_finish (struct sbuf*) ;
 int sbuf_len (struct sbuf*) ;
 int sbuf_new (struct sbuf*,char*,int,int ) ;
 int uiomove_frombuf (int ,int ,struct uio*) ;
 int vdrop (struct vnode*) ;
 int vhold (struct vnode*) ;
 int vn_lock (struct vnode*,int) ;

__attribute__((used)) static int
pfs_readlink(struct vop_readlink_args *va)
{
 struct vnode *vn = va->a_vp;
 struct pfs_vdata *pvd = vn->v_data;
 struct pfs_node *pn = pvd->pvd_pn;
 struct uio *uio = va->a_uio;
 struct proc *proc = ((void*)0);
 char buf[PATH_MAX];
 struct sbuf sb;
 int error, locked;

 PFS_TRACE(("%s", pn->pn_name));
 pfs_assert_not_owned(pn);

 if (vn->v_type != VLNK)
  PFS_RETURN (EINVAL);
 KASSERT_PN_IS_LINK(pn);

 if (pn->pn_fill == ((void*)0))
  PFS_RETURN (EIO);

 if (pvd->pvd_pid != NO_PID) {
  if ((proc = pfind(pvd->pvd_pid)) == ((void*)0))
   PFS_RETURN (EIO);
  if (proc->p_flag & P_WEXIT) {
   PROC_UNLOCK(proc);
   PFS_RETURN (EIO);
  }
  _PHOLD(proc);
  PROC_UNLOCK(proc);
 }
 vhold(vn);
 locked = VOP_ISLOCKED(vn);
 VOP_UNLOCK(vn, 0);


 sbuf_new(&sb, buf, sizeof buf, 0);

 error = pn_fill(curthread, proc, pn, &sb, ((void*)0));

 if (proc != ((void*)0))
  PRELE(proc);
 vn_lock(vn, locked | LK_RETRY);
 vdrop(vn);

 if (error) {
  sbuf_delete(&sb);
  PFS_RETURN (error);
 }

 if (sbuf_finish(&sb) != 0) {
  sbuf_delete(&sb);
  PFS_RETURN (ENAMETOOLONG);
 }

 error = uiomove_frombuf(sbuf_data(&sb), sbuf_len(&sb), uio);
 sbuf_delete(&sb);
 PFS_RETURN (error);
}
