
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vop_setacl_args {int a_cred; int a_aclp; int a_type; TYPE_2__* a_vp; struct thread* a_td; } ;
struct vnode {scalar_t__ v_type; } ;
struct unionfs_node {struct vnode* un_uppervp; struct vnode* un_lowervp; } ;
struct thread {int dummy; } ;
struct TYPE_5__ {TYPE_1__* v_mount; } ;
struct TYPE_4__ {int mnt_flag; } ;


 int EROFS ;
 int KASSERT_UNIONFS_VNODE (TYPE_2__*) ;
 int MNT_RDONLY ;
 struct vnode* NULLVP ;
 int UNIONFS_INTERNAL_DEBUG (char*,...) ;
 int VOP_SETACL (struct vnode*,int ,int ,int ,struct thread*) ;
 scalar_t__ VREG ;
 struct unionfs_node* VTOUNIONFS (TYPE_2__*) ;
 int unionfs_copyfile (struct unionfs_node*,int,int ,struct thread*) ;

__attribute__((used)) static int
unionfs_setacl(struct vop_setacl_args *ap)
{
 int error;
 struct unionfs_node *unp;
 struct vnode *uvp;
 struct vnode *lvp;
 struct thread *td;

 UNIONFS_INTERNAL_DEBUG("unionfs_setacl: enter\n");

 KASSERT_UNIONFS_VNODE(ap->a_vp);

 error = EROFS;
 unp = VTOUNIONFS(ap->a_vp);
 uvp = unp->un_uppervp;
 lvp = unp->un_lowervp;
 td = ap->a_td;

 if (ap->a_vp->v_mount->mnt_flag & MNT_RDONLY)
  return (EROFS);

 if (uvp == NULLVP && lvp->v_type == VREG) {
  if ((error = unionfs_copyfile(unp, 1, ap->a_cred, td)) != 0)
   return (error);
  uvp = unp->un_uppervp;
 }

 if (uvp != NULLVP)
  error = VOP_SETACL(uvp, ap->a_type, ap->a_aclp, ap->a_cred, td);

 UNIONFS_INTERNAL_DEBUG("unionfs_setacl: leave (%d)\n", error);

 return (error);
}
