
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_inactive_args {int a_td; struct vnode* a_vp; } ;
struct vnode {scalar_t__ v_type; int * v_object; } ;
struct nfsnode {int n_flag; } ;
typedef scalar_t__ boolean_t ;


 int MNT_WAIT ;
 int NDSCOMMIT ;
 int NFSLOCKNODE (struct nfsnode*) ;
 int NFSUNLOCKNODE (struct nfsnode*) ;
 scalar_t__ NFS_ISV4 (struct vnode*) ;
 int NMODIFIED ;
 int OBJPC_SYNC ;
 scalar_t__ TRUE ;
 int VM_OBJECT_WLOCK (int *) ;
 int VM_OBJECT_WUNLOCK (int *) ;
 scalar_t__ VREG ;
 struct nfsnode* VTONFS (struct vnode*) ;
 int ncl_flush (struct vnode*,int ,int ,int,int ) ;
 int ncl_releasesillyrename (struct vnode*,int ) ;
 int nfsrpc_close (struct vnode*,int,int ) ;
 scalar_t__ vm_object_page_clean (int *,int ,int ,int ) ;

int
ncl_inactive(struct vop_inactive_args *ap)
{
 struct vnode *vp = ap->a_vp;
 struct nfsnode *np;
 boolean_t retv;

 if (NFS_ISV4(vp) && vp->v_type == VREG) {






  if (vp->v_object != ((void*)0)) {
   VM_OBJECT_WLOCK(vp->v_object);
   retv = vm_object_page_clean(vp->v_object, 0, 0,
       OBJPC_SYNC);
   VM_OBJECT_WUNLOCK(vp->v_object);
  } else
   retv = TRUE;
  if (retv == TRUE) {
   (void)ncl_flush(vp, MNT_WAIT, ap->a_td, 1, 0);
   (void)nfsrpc_close(vp, 1, ap->a_td);
  }
 }

 np = VTONFS(vp);
 NFSLOCKNODE(np);
 ncl_releasesillyrename(vp, ap->a_td);
 np->n_flag &= (NMODIFIED | NDSCOMMIT);
 NFSUNLOCKNODE(np);
 return (0);
}
