
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_whiteout_args {int a_flags; struct componentname* a_cnp; int a_dvp; } ;
struct vnode {int dummy; } ;
struct unionfs_node {struct vnode* un_uppervp; } ;
struct componentname {int dummy; } ;




 int EINVAL ;
 int EOPNOTSUPP ;
 int KASSERT_UNIONFS_VNODE (int ) ;

 struct vnode* NULLVP ;
 int UNIONFS_INTERNAL_DEBUG (char*,...) ;
 int VOP_WHITEOUT (struct vnode*,struct componentname*,int) ;
 struct unionfs_node* VTOUNIONFS (int ) ;

__attribute__((used)) static int
unionfs_whiteout(struct vop_whiteout_args *ap)
{
 struct unionfs_node *dunp;
 struct componentname *cnp;
 struct vnode *udvp;
 int error;

 UNIONFS_INTERNAL_DEBUG("unionfs_whiteout: enter\n");

 KASSERT_UNIONFS_VNODE(ap->a_dvp);

 dunp = VTOUNIONFS(ap->a_dvp);
 cnp = ap->a_cnp;
 udvp = dunp->un_uppervp;
 error = EOPNOTSUPP;

 if (udvp != NULLVP) {
  switch (ap->a_flags) {
  case 130:
  case 129:
  case 128:
   error = VOP_WHITEOUT(udvp, cnp, ap->a_flags);
   break;
  default:
   error = EINVAL;
   break;
  }
 }

 UNIONFS_INTERNAL_DEBUG("unionfs_whiteout: leave (%d)\n", error);

 return (error);
}
