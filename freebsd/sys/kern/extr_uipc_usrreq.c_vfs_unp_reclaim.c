
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {scalar_t__ v_type; } ;
struct unpcb {struct vnode* unp_vnode; } ;
struct mtx {int dummy; } ;


 int ASSERT_VOP_ELOCKED (struct vnode*,char*) ;
 int KASSERT (int,char*) ;
 int UNP_PCB_LOCK (struct unpcb*) ;
 int UNP_PCB_UNLOCK (struct unpcb*) ;
 int VOP_UNP_CONNECT (struct vnode*,struct unpcb**) ;
 int VOP_UNP_DETACH (struct vnode*) ;
 scalar_t__ VSOCK ;
 int mtx_lock (struct mtx*) ;
 struct mtx* mtx_pool_find (int ,struct vnode*) ;
 int mtx_unlock (struct mtx*) ;
 int mtxpool_sleep ;
 int vunref (struct vnode*) ;

void
vfs_unp_reclaim(struct vnode *vp)
{
 struct unpcb *unp;
 int active;
 struct mtx *vplock;

 ASSERT_VOP_ELOCKED(vp, "vfs_unp_reclaim");
 KASSERT(vp->v_type == VSOCK,
     ("vfs_unp_reclaim: vp->v_type != VSOCK"));

 active = 0;
 vplock = mtx_pool_find(mtxpool_sleep, vp);
 mtx_lock(vplock);
 VOP_UNP_CONNECT(vp, &unp);
 if (unp == ((void*)0))
  goto done;
 UNP_PCB_LOCK(unp);
 if (unp->unp_vnode == vp) {
  VOP_UNP_DETACH(vp);
  unp->unp_vnode = ((void*)0);
  active = 1;
 }
 UNP_PCB_UNLOCK(unp);
 done:
 mtx_unlock(vplock);
 if (active)
  vunref(vp);
}
