
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct vop_symlink_args {int a_vpp; TYPE_1__* a_dvp; int a_target; int a_vap; struct componentname* a_cnp; } ;
struct vnode {int dummy; } ;
struct unionfs_node {struct vnode* un_uppervp; } ;
struct thread {int dummy; } ;
struct componentname {int cn_lkflags; } ;
struct TYPE_4__ {int v_mount; } ;


 int EROFS ;
 int KASSERT_UNIONFS_VNODE (TYPE_1__*) ;
 int LK_EXCLUSIVE ;
 int LK_RELEASE ;
 struct vnode* NULLVP ;
 int UNIONFS_INTERNAL_DEBUG (char*,...) ;
 int VOP_SYMLINK (struct vnode*,struct vnode**,struct componentname*,int ,int ) ;
 int VOP_UNLOCK (struct vnode*,int ) ;
 struct unionfs_node* VTOUNIONFS (TYPE_1__*) ;
 struct thread* curthread ;
 int unionfs_nodeget (int ,struct vnode*,struct vnode*,TYPE_1__*,int ,struct componentname*,struct thread*) ;
 int vrele (struct vnode*) ;

__attribute__((used)) static int
unionfs_symlink(struct vop_symlink_args *ap)
{
 int error;
 int lkflags;
 struct unionfs_node *dunp;
 struct componentname *cnp;
 struct thread *td;
 struct vnode *udvp;
 struct vnode *uvp;

 UNIONFS_INTERNAL_DEBUG("unionfs_symlink: enter\n");

 KASSERT_UNIONFS_VNODE(ap->a_dvp);

 error = EROFS;
 dunp = VTOUNIONFS(ap->a_dvp);
 cnp = ap->a_cnp;
 lkflags = cnp->cn_lkflags;
 td = curthread;
 udvp = dunp->un_uppervp;

 if (udvp != NULLVP) {
  error = VOP_SYMLINK(udvp, &uvp, cnp, ap->a_vap, ap->a_target);
  if (error == 0) {
   VOP_UNLOCK(uvp, LK_RELEASE);
   cnp->cn_lkflags = LK_EXCLUSIVE;
   error = unionfs_nodeget(ap->a_dvp->v_mount, uvp, NULLVP,
       ap->a_dvp, ap->a_vpp, cnp, td);
   cnp->cn_lkflags = lkflags;
   vrele(uvp);
  }
 }

 UNIONFS_INTERNAL_DEBUG("unionfs_symlink: leave (%d)\n", error);

 return (error);
}
