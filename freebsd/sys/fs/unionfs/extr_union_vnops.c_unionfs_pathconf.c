
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_pathconf_args {int a_retval; int a_name; int a_vp; } ;
struct vnode {int dummy; } ;
struct unionfs_node {struct vnode* un_lowervp; struct vnode* un_uppervp; } ;


 int KASSERT_UNIONFS_VNODE (int ) ;
 struct vnode* NULLVP ;
 int VOP_PATHCONF (struct vnode*,int ,int ) ;
 struct unionfs_node* VTOUNIONFS (int ) ;

__attribute__((used)) static int
unionfs_pathconf(struct vop_pathconf_args *ap)
{
 struct unionfs_node *unp;
 struct vnode *vp;

 KASSERT_UNIONFS_VNODE(ap->a_vp);

 unp = VTOUNIONFS(ap->a_vp);
 vp = (unp->un_uppervp != NULLVP ? unp->un_uppervp : unp->un_lowervp);

 return (VOP_PATHCONF(vp, ap->a_name, ap->a_retval));
}
