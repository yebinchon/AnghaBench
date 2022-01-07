
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_link_args {struct vnode* a_tdvp; struct vnode* a_vp; struct componentname* a_cnp; } ;
struct vnode {scalar_t__ v_type; int * v_op; } ;
struct unionfs_node {struct vnode* un_uppervp; } ;
struct thread {int dummy; } ;
struct componentname {int cn_cred; } ;


 int EOPNOTSUPP ;
 int EROFS ;
 int KASSERT_UNIONFS_VNODE (struct vnode*) ;
 struct vnode* NULLVP ;
 int UNIONFS_INTERNAL_DEBUG (char*,...) ;
 int VOP_LINK (struct vnode*,struct vnode*,struct componentname*) ;
 scalar_t__ VREG ;
 struct unionfs_node* VTOUNIONFS (struct vnode*) ;
 struct thread* curthread ;
 int unionfs_copyfile (struct unionfs_node*,int,int ,struct thread*) ;
 int unionfs_relookup_for_create (struct vnode*,struct componentname*,struct thread*) ;
 int unionfs_vnodeops ;

__attribute__((used)) static int
unionfs_link(struct vop_link_args *ap)
{
 int error;
 int needrelookup;
 struct unionfs_node *dunp;
 struct unionfs_node *unp;
 struct vnode *udvp;
 struct vnode *uvp;
 struct componentname *cnp;
 struct thread *td;

 UNIONFS_INTERNAL_DEBUG("unionfs_link: enter\n");

 KASSERT_UNIONFS_VNODE(ap->a_tdvp);
 KASSERT_UNIONFS_VNODE(ap->a_vp);

 error = 0;
 needrelookup = 0;
 dunp = VTOUNIONFS(ap->a_tdvp);
 unp = ((void*)0);
 udvp = dunp->un_uppervp;
 uvp = NULLVP;
 cnp = ap->a_cnp;
 td = curthread;

 if (udvp == NULLVP)
  return (EROFS);

 if (ap->a_vp->v_op != &unionfs_vnodeops)
  uvp = ap->a_vp;
 else {
  unp = VTOUNIONFS(ap->a_vp);

  if (unp->un_uppervp == NULLVP) {
   if (ap->a_vp->v_type != VREG)
    return (EOPNOTSUPP);

   error = unionfs_copyfile(unp, 1, cnp->cn_cred, td);
   if (error != 0)
    return (error);
   needrelookup = 1;
  }
  uvp = unp->un_uppervp;
 }

 if (needrelookup != 0)
  error = unionfs_relookup_for_create(ap->a_tdvp, cnp, td);

 if (error == 0)
  error = VOP_LINK(udvp, uvp, cnp);

 UNIONFS_INTERNAL_DEBUG("unionfs_link: leave (%d)\n", error);

 return (error);
}
