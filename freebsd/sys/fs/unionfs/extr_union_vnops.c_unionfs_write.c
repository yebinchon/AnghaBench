
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_write_args {int a_cred; int a_ioflag; int a_uio; int a_vp; } ;
struct vnode {int dummy; } ;
struct unionfs_node {struct vnode* un_lowervp; struct vnode* un_uppervp; } ;


 int KASSERT_UNIONFS_VNODE (int ) ;
 struct vnode* NULLVP ;
 int VOP_WRITE (struct vnode*,int ,int ,int ) ;
 struct unionfs_node* VTOUNIONFS (int ) ;

__attribute__((used)) static int
unionfs_write(struct vop_write_args *ap)
{
 int error;
 struct unionfs_node *unp;
 struct vnode *tvp;



 KASSERT_UNIONFS_VNODE(ap->a_vp);

 unp = VTOUNIONFS(ap->a_vp);
 tvp = (unp->un_uppervp != NULLVP ? unp->un_uppervp : unp->un_lowervp);

 error = VOP_WRITE(tvp, ap->a_uio, ap->a_ioflag, ap->a_cred);



 return (error);
}
