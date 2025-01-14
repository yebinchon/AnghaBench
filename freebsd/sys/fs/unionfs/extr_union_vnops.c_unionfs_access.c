
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct vop_access_args {int a_accmode; int a_cred; TYPE_3__* a_vp; struct thread* a_td; } ;
struct vnode {int dummy; } ;
struct vattr {int dummy; } ;
struct unionfs_node {struct vnode* un_lowervp; struct vnode* un_uppervp; } ;
struct unionfs_mount {scalar_t__ um_copymode; TYPE_2__* um_uppervp; } ;
struct thread {int dummy; } ;
typedef int accmode_t ;
struct TYPE_9__ {int mnt_flag; } ;
struct TYPE_8__ {int v_type; TYPE_4__* v_mount; } ;
struct TYPE_7__ {TYPE_1__* v_mount; } ;
struct TYPE_6__ {int mnt_flag; } ;


 int EACCES ;
 int EROFS ;
 int KASSERT_UNIONFS_VNODE (TYPE_3__*) ;
 int MNT_RDONLY ;
 struct unionfs_mount* MOUNTTOUNIONFSMOUNT (TYPE_4__*) ;
 struct vnode* NULLVP ;
 int UNIONFS_INTERNAL_DEBUG (char*,...) ;
 scalar_t__ UNIONFS_TRANSPARENT ;
 int VAPPEND ;


 int VOP_ACCESS (struct vnode*,int,int ,struct thread*) ;
 int VREAD ;

 struct unionfs_node* VTOUNIONFS (TYPE_3__*) ;
 int VWRITE ;
 int unionfs_check_corrected_access (int,struct vattr*,int ) ;
 int unionfs_create_uppervattr (struct unionfs_mount*,struct vnode*,struct vattr*,int ,struct thread*) ;

__attribute__((used)) static int
unionfs_access(struct vop_access_args *ap)
{
 struct unionfs_mount *ump;
 struct unionfs_node *unp;
 struct vnode *uvp;
 struct vnode *lvp;
 struct thread *td;
 struct vattr va;
 accmode_t accmode;
 int error;

 UNIONFS_INTERNAL_DEBUG("unionfs_access: enter\n");

 KASSERT_UNIONFS_VNODE(ap->a_vp);

 ump = MOUNTTOUNIONFSMOUNT(ap->a_vp->v_mount);
 unp = VTOUNIONFS(ap->a_vp);
 uvp = unp->un_uppervp;
 lvp = unp->un_lowervp;
 td = ap->a_td;
 accmode = ap->a_accmode;
 error = EACCES;

 if ((accmode & VWRITE) &&
     (ap->a_vp->v_mount->mnt_flag & MNT_RDONLY)) {
  switch (ap->a_vp->v_type) {
  case 128:
  case 130:
  case 129:
   return (EROFS);
  default:
   break;
  }
 }

 if (uvp != NULLVP) {
  error = VOP_ACCESS(uvp, accmode, ap->a_cred, td);

  UNIONFS_INTERNAL_DEBUG("unionfs_access: leave (%d)\n", error);

  return (error);
 }

 if (lvp != NULLVP) {
  if (accmode & VWRITE) {
   if (ump->um_uppervp->v_mount->mnt_flag & MNT_RDONLY) {
    switch (ap->a_vp->v_type) {
    case 128:
    case 130:
    case 129:
     return (EROFS);
    default:
     break;
    }
   } else if (ap->a_vp->v_type == 128 || ap->a_vp->v_type == 130) {

    if (ump->um_copymode != UNIONFS_TRANSPARENT) {
     error = unionfs_create_uppervattr(ump,
         lvp, &va, ap->a_cred, td);
     if (error != 0)
      return (error);

     error = unionfs_check_corrected_access(
         accmode, &va, ap->a_cred);
     if (error != 0)
      return (error);
    }
   }
   accmode &= ~(VWRITE | VAPPEND);
   accmode |= VREAD;
  }
  error = VOP_ACCESS(lvp, accmode, ap->a_cred, td);
 }

 UNIONFS_INTERNAL_DEBUG("unionfs_access: leave (%d)\n", error);

 return (error);
}
