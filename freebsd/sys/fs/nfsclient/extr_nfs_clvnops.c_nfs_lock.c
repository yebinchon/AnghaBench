
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_quad_t ;
struct vop_lock1_args {int a_flags; struct vnode* a_vp; } ;
struct vnode {int * v_op; TYPE_1__* v_vnlock; } ;
struct nfsnode {int n_flag; int n_size; } ;
struct TYPE_2__ {scalar_t__ lk_recurse; } ;


 int EBUSY ;
 int LK_CANRECURSE ;
 int LK_DOWNGRADE ;
 int LK_EATTR_MASK ;
 int LK_EXCLUSIVE ;
 int LK_INIT_MASK ;
 int LK_INTERLOCK ;
 int LK_NOWAIT ;
 int LK_SHARED ;
 int LK_TRYUPGRADE ;
 int LK_TYPE_MASK ;
 int LK_UPGRADE ;
 int NFSLOCKNODE (struct nfsnode*) ;
 int NFSUNLOCKNODE (struct nfsnode*) ;
 int NVNSETSZSKIP ;
 int VOP_LOCK1_APV (int *,struct vop_lock1_args*) ;
 int VOP_UNLOCK (struct vnode*,int ) ;
 struct nfsnode* VTONFS (struct vnode*) ;
 int default_vnodeops ;
 int newnfs_vnodeops ;
 int vnode_pager_setsize (struct vnode*,int ) ;

__attribute__((used)) static int
nfs_lock(struct vop_lock1_args *ap)
{
 struct vnode *vp;
 struct nfsnode *np;
 u_quad_t nsize;
 int error, lktype;
 bool onfault;

 vp = ap->a_vp;
 lktype = ap->a_flags & LK_TYPE_MASK;
 error = VOP_LOCK1_APV(&default_vnodeops, ap);
 if (error != 0 || vp->v_op != &newnfs_vnodeops)
  return (error);
 np = VTONFS(vp);
 NFSLOCKNODE(np);
 if ((np->n_flag & NVNSETSZSKIP) == 0 || (lktype != LK_SHARED &&
     lktype != LK_EXCLUSIVE && lktype != LK_UPGRADE &&
     lktype != LK_TRYUPGRADE)) {
  NFSUNLOCKNODE(np);
  return (0);
 }
 onfault = (ap->a_flags & LK_EATTR_MASK) == LK_NOWAIT &&
     (ap->a_flags & LK_INIT_MASK) == LK_CANRECURSE &&
     (lktype == LK_SHARED || lktype == LK_EXCLUSIVE);
 if (onfault && vp->v_vnlock->lk_recurse == 0) {





  NFSUNLOCKNODE(np);
  VOP_UNLOCK(vp, 0);
  return (EBUSY);
 }
 if ((ap->a_flags & LK_NOWAIT) != 0 ||
     (lktype == LK_SHARED && vp->v_vnlock->lk_recurse > 0)) {
  NFSUNLOCKNODE(np);
  return (0);
 }
 if (lktype == LK_SHARED) {
  NFSUNLOCKNODE(np);
  VOP_UNLOCK(vp, 0);
  ap->a_flags &= ~(LK_TYPE_MASK | LK_INTERLOCK);
  ap->a_flags |= LK_EXCLUSIVE;
  error = VOP_LOCK1_APV(&default_vnodeops, ap);
  if (error != 0 || vp->v_op != &newnfs_vnodeops)
   return (error);
  NFSLOCKNODE(np);
  if ((np->n_flag & NVNSETSZSKIP) == 0) {
   NFSUNLOCKNODE(np);
   goto downgrade;
  }
 }
 np->n_flag &= ~NVNSETSZSKIP;
 nsize = np->n_size;
 NFSUNLOCKNODE(np);
 vnode_pager_setsize(vp, nsize);
downgrade:
 if (lktype == LK_SHARED) {
  ap->a_flags &= ~(LK_TYPE_MASK | LK_INTERLOCK);
  ap->a_flags |= LK_DOWNGRADE;
  (void)VOP_LOCK1_APV(&default_vnodeops, ap);
 }
 return (0);
}
