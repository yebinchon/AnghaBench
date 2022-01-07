
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_getextattr_args {int a_cred; int a_size; int a_uio; int a_name; int a_attrnamespace; struct vnode* a_vp; } ;
struct vnode {struct pfs_vdata* v_data; } ;
struct proc {int dummy; } ;
struct pfs_vdata {int pvd_pid; struct pfs_node* pvd_pn; } ;
struct pfs_node {int * pn_getextattr; int pn_name; } ;


 int EIO ;
 int EOPNOTSUPP ;
 int PFS_RETURN (int) ;
 int PFS_TRACE (char*) ;
 int PROC_UNLOCK (struct proc*) ;
 int curthread ;
 int pfs_assert_not_owned (struct pfs_node*) ;
 int pfs_visible (int ,struct pfs_node*,int ,struct proc**) ;
 int pn_getextattr (int ,struct proc*,struct pfs_node*,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int
pfs_getextattr(struct vop_getextattr_args *va)
{
 struct vnode *vn = va->a_vp;
 struct pfs_vdata *pvd = vn->v_data;
 struct pfs_node *pn = pvd->pvd_pn;
 struct proc *proc;
 int error;

 PFS_TRACE(("%s", pn->pn_name));
 pfs_assert_not_owned(pn);





 if (!pfs_visible(curthread, pn, pvd->pvd_pid, &proc))
  PFS_RETURN (EIO);

 if (pn->pn_getextattr == ((void*)0))
  error = EOPNOTSUPP;
 else
  error = pn_getextattr(curthread, proc, pn,
      va->a_attrnamespace, va->a_name, va->a_uio,
      va->a_size, va->a_cred);

 if (proc != ((void*)0))
  PROC_UNLOCK(proc);

 PFS_RETURN (error);
}
