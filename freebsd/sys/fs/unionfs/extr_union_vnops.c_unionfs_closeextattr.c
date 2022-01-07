
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_closeextattr_args {int a_td; int a_cred; int a_commit; struct vnode* a_vp; } ;
struct vnode {int dummy; } ;
struct unionfs_node {int un_flag; struct vnode* un_uppervp; struct vnode* un_lowervp; } ;


 int EOPNOTSUPP ;
 int KASSERT_UNIONFS_VNODE (struct vnode*) ;
 int LK_DOWNGRADE ;
 int LK_EXCLUSIVE ;
 int LK_RETRY ;
 int LK_UPGRADE ;
 struct vnode* NULLVP ;
 int UNIONFS_OPENEXTL ;
 int UNIONFS_OPENEXTU ;
 int VOP_CLOSEEXTATTR (struct vnode*,int ,int ,int ) ;
 struct unionfs_node* VTOUNIONFS (struct vnode*) ;
 scalar_t__ vn_lock (struct vnode*,int) ;

__attribute__((used)) static int
unionfs_closeextattr(struct vop_closeextattr_args *ap)
{
 int error;
 struct unionfs_node *unp;
 struct vnode *vp;
 struct vnode *tvp;

 KASSERT_UNIONFS_VNODE(ap->a_vp);

 vp = ap->a_vp;
 unp = VTOUNIONFS(vp);
 tvp = NULLVP;

 if (unp->un_flag & UNIONFS_OPENEXTU)
  tvp = unp->un_uppervp;
 else if (unp->un_flag & UNIONFS_OPENEXTL)
  tvp = unp->un_lowervp;

 if (tvp == NULLVP)
  return (EOPNOTSUPP);

 error = VOP_CLOSEEXTATTR(tvp, ap->a_commit, ap->a_cred, ap->a_td);

 if (error == 0) {
  if (vn_lock(vp, LK_UPGRADE) != 0)
   vn_lock(vp, LK_EXCLUSIVE | LK_RETRY);
  if (tvp == unp->un_uppervp)
   unp->un_flag &= ~UNIONFS_OPENEXTU;
  else
   unp->un_flag &= ~UNIONFS_OPENEXTL;
  vn_lock(vp, LK_DOWNGRADE | LK_RETRY);
 }

 return (error);
}
