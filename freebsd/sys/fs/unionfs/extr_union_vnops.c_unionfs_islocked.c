
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_islocked_args {int a_vp; } ;
struct unionfs_node {scalar_t__ un_uppervp; scalar_t__ un_lowervp; } ;


 int KASSERT_UNIONFS_VNODE (int ) ;
 scalar_t__ NULLVP ;
 int VOP_ISLOCKED (scalar_t__) ;
 struct unionfs_node* VTOUNIONFS (int ) ;
 int vop_stdislocked (struct vop_islocked_args*) ;

__attribute__((used)) static int
unionfs_islocked(struct vop_islocked_args *ap)
{
 struct unionfs_node *unp;

 KASSERT_UNIONFS_VNODE(ap->a_vp);

 unp = VTOUNIONFS(ap->a_vp);
 if (unp == ((void*)0))
  return (vop_stdislocked(ap));

 if (unp->un_uppervp != NULLVP)
  return (VOP_ISLOCKED(unp->un_uppervp));
 if (unp->un_lowervp != NULLVP)
  return (VOP_ISLOCKED(unp->un_lowervp));
 return (vop_stdislocked(ap));
}
