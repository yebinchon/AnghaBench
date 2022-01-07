
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {scalar_t__ v_usecount; int v_iflag; } ;
struct null_node {int null_flags; } ;
struct mount {int dummy; } ;


 int ASSERT_VOP_ELOCKED (struct vnode*,char*) ;
 int KASSERT (int,char*) ;
 int NULLV_DROP ;
 int NULLV_NOUNLOCK ;
 int VI_DOOMED ;
 int VOP_UNLOCK (struct vnode*,int ) ;
 struct null_node* VTONULL (struct vnode*) ;
 struct vnode* null_hashget (struct mount*,struct vnode*) ;
 int vdrop (struct vnode*) ;
 int vhold (struct vnode*) ;
 int vunref (struct vnode*) ;

__attribute__((used)) static void
nullfs_unlink_lowervp(struct mount *mp, struct vnode *lowervp)
{
 struct vnode *vp;
 struct null_node *xp;

 vp = null_hashget(mp, lowervp);
 if (vp == ((void*)0))
  return;
 xp = VTONULL(vp);
 xp->null_flags |= NULLV_DROP | NULLV_NOUNLOCK;
 vhold(vp);
 vunref(vp);

 if (vp->v_usecount == 0) {







  KASSERT((vp->v_iflag & VI_DOOMED) != 0,
      ("not reclaimed nullfs vnode %p", vp));
  VOP_UNLOCK(vp, 0);
 } else {






  ASSERT_VOP_ELOCKED(vp, "unlink_lowervp");
  KASSERT((vp->v_iflag & VI_DOOMED) == 0,
      ("reclaimed nullfs vnode %p", vp));
  xp->null_flags &= ~NULLV_NOUNLOCK;
 }
 vdrop(vp);
}
