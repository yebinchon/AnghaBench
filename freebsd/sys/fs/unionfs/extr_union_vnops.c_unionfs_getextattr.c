
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_getextattr_args {int a_td; int a_cred; int a_size; int a_uio; int a_name; int a_attrnamespace; int a_vp; } ;
struct vnode {int dummy; } ;
struct unionfs_node {int un_flag; struct vnode* un_lowervp; struct vnode* un_uppervp; } ;


 int EOPNOTSUPP ;
 int KASSERT_UNIONFS_VNODE (int ) ;
 struct vnode* NULLVP ;
 int UNIONFS_OPENEXTL ;
 int UNIONFS_OPENEXTU ;
 int VOP_GETEXTATTR (struct vnode*,int ,int ,int ,int ,int ,int ) ;
 struct unionfs_node* VTOUNIONFS (int ) ;

__attribute__((used)) static int
unionfs_getextattr(struct vop_getextattr_args *ap)
{
 struct unionfs_node *unp;
 struct vnode *vp;

 KASSERT_UNIONFS_VNODE(ap->a_vp);

 unp = VTOUNIONFS(ap->a_vp);
 vp = NULLVP;

 if (unp->un_flag & UNIONFS_OPENEXTU)
  vp = unp->un_uppervp;
 else if (unp->un_flag & UNIONFS_OPENEXTL)
  vp = unp->un_lowervp;

 if (vp == NULLVP)
  return (EOPNOTSUPP);

 return (VOP_GETEXTATTR(vp, ap->a_attrnamespace, ap->a_name,
     ap->a_uio, ap->a_size, ap->a_cred, ap->a_td));
}
