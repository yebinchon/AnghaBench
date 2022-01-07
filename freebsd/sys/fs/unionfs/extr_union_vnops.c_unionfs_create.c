
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct vop_create_args {struct vnode** a_vpp; TYPE_1__* a_dvp; int a_vap; struct componentname* a_cnp; } ;
struct vnode {scalar_t__ v_type; } ;
struct unionfs_node {struct vnode* un_uppervp; } ;
struct componentname {int dummy; } ;
struct TYPE_4__ {int v_mount; } ;


 int EROFS ;
 int KASSERT_UNIONFS_VNODE (TYPE_1__*) ;
 int LK_RELEASE ;
 struct vnode* NULLVP ;
 int UNIONFS_INTERNAL_DEBUG (char*,...) ;
 int VOP_CREATE (struct vnode*,struct vnode**,struct componentname*,int ) ;
 int VOP_UNLOCK (struct vnode*,int ) ;
 scalar_t__ VSOCK ;
 struct unionfs_node* VTOUNIONFS (TYPE_1__*) ;
 int curthread ;
 int unionfs_nodeget (int ,struct vnode*,struct vnode*,TYPE_1__*,struct vnode**,struct componentname*,int ) ;
 int vrele (struct vnode*) ;

__attribute__((used)) static int
unionfs_create(struct vop_create_args *ap)
{
 struct unionfs_node *dunp;
 struct componentname *cnp;
 struct vnode *udvp;
 struct vnode *vp;
 int error;

 UNIONFS_INTERNAL_DEBUG("unionfs_create: enter\n");

 KASSERT_UNIONFS_VNODE(ap->a_dvp);

 dunp = VTOUNIONFS(ap->a_dvp);
 cnp = ap->a_cnp;
 udvp = dunp->un_uppervp;
 error = EROFS;

 if (udvp != NULLVP) {
  error = VOP_CREATE(udvp, &vp, cnp, ap->a_vap);
  if (error != 0)
   goto unionfs_create_abort;

  if (vp->v_type == VSOCK)
   *(ap->a_vpp) = vp;
  else {
   VOP_UNLOCK(vp, LK_RELEASE);
   error = unionfs_nodeget(ap->a_dvp->v_mount, vp, NULLVP,
       ap->a_dvp, ap->a_vpp, cnp, curthread);
   vrele(vp);
  }
 }

unionfs_create_abort:
 UNIONFS_INTERNAL_DEBUG("unionfs_create: leave (%d)\n", error);

 return (error);
}
