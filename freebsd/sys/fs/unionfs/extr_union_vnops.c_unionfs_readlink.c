
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_readlink_args {int a_cred; int a_uio; int a_vp; } ;
struct vnode {int dummy; } ;
struct unionfs_node {struct vnode* un_lowervp; struct vnode* un_uppervp; } ;


 int KASSERT_UNIONFS_VNODE (int ) ;
 struct vnode* NULLVP ;
 int UNIONFS_INTERNAL_DEBUG (char*,...) ;
 int VOP_READLINK (struct vnode*,int ,int ) ;
 struct unionfs_node* VTOUNIONFS (int ) ;

__attribute__((used)) static int
unionfs_readlink(struct vop_readlink_args *ap)
{
 int error;
 struct unionfs_node *unp;
 struct vnode *vp;

 UNIONFS_INTERNAL_DEBUG("unionfs_readlink: enter\n");

 KASSERT_UNIONFS_VNODE(ap->a_vp);

 unp = VTOUNIONFS(ap->a_vp);
 vp = (unp->un_uppervp != NULLVP ? unp->un_uppervp : unp->un_lowervp);

 error = VOP_READLINK(vp, ap->a_uio, ap->a_cred);

 UNIONFS_INTERNAL_DEBUG("unionfs_readlink: leave (%d)\n", error);

 return (error);
}
