
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vop_setextattr_args {int a_uio; int a_name; int a_attrnamespace; TYPE_2__* a_vp; struct thread* a_td; struct ucred* a_cred; } ;
struct vnode {scalar_t__ v_type; } ;
struct unionfs_node {int un_flag; struct vnode* un_uppervp; struct vnode* un_lowervp; } ;
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct TYPE_5__ {TYPE_1__* v_mount; } ;
struct TYPE_4__ {int mnt_flag; } ;


 int EOPNOTSUPP ;
 int EROFS ;
 int KASSERT_UNIONFS_VNODE (TYPE_2__*) ;
 int MNT_RDONLY ;
 struct vnode* NULLVP ;
 int UNIONFS_INTERNAL_DEBUG (char*,int) ;
 int UNIONFS_OPENEXTL ;
 int UNIONFS_OPENEXTU ;
 int VOP_CLOSEEXTATTR (struct vnode*,int ,struct ucred*,struct thread*) ;
 int VOP_OPENEXTATTR (struct vnode*,struct ucred*,struct thread*) ;
 int VOP_SETEXTATTR (struct vnode*,int ,int ,int ,struct ucred*,struct thread*) ;
 scalar_t__ VREG ;
 struct unionfs_node* VTOUNIONFS (TYPE_2__*) ;
 int panic (char*) ;
 int unionfs_copyfile (struct unionfs_node*,int,struct ucred*,struct thread*) ;

__attribute__((used)) static int
unionfs_setextattr(struct vop_setextattr_args *ap)
{
 int error;
 struct unionfs_node *unp;
 struct vnode *uvp;
 struct vnode *lvp;
 struct vnode *ovp;
 struct ucred *cred;
 struct thread *td;

 KASSERT_UNIONFS_VNODE(ap->a_vp);

 error = EROFS;
 unp = VTOUNIONFS(ap->a_vp);
 uvp = unp->un_uppervp;
 lvp = unp->un_lowervp;
 ovp = NULLVP;
 cred = ap->a_cred;
 td = ap->a_td;

 UNIONFS_INTERNAL_DEBUG("unionfs_setextattr: enter (un_flag=%x)\n", unp->un_flag);

 if (ap->a_vp->v_mount->mnt_flag & MNT_RDONLY)
  return (EROFS);

 if (unp->un_flag & UNIONFS_OPENEXTU)
  ovp = unp->un_uppervp;
 else if (unp->un_flag & UNIONFS_OPENEXTL)
  ovp = unp->un_lowervp;

 if (ovp == NULLVP)
  return (EOPNOTSUPP);

 if (ovp == lvp && lvp->v_type == VREG) {
  VOP_CLOSEEXTATTR(lvp, 0, cred, td);
  if (uvp == NULLVP &&
      (error = unionfs_copyfile(unp, 1, cred, td)) != 0) {
unionfs_setextattr_reopen:
   if ((unp->un_flag & UNIONFS_OPENEXTL) &&
       VOP_OPENEXTATTR(lvp, cred, td)) {



    unp->un_flag &= ~UNIONFS_OPENEXTL;
   }
   goto unionfs_setextattr_abort;
  }
  uvp = unp->un_uppervp;
  if ((error = VOP_OPENEXTATTR(uvp, cred, td)) != 0)
   goto unionfs_setextattr_reopen;
  unp->un_flag &= ~UNIONFS_OPENEXTL;
  unp->un_flag |= UNIONFS_OPENEXTU;
  ovp = uvp;
 }

 if (ovp == uvp)
  error = VOP_SETEXTATTR(ovp, ap->a_attrnamespace, ap->a_name,
      ap->a_uio, cred, td);

unionfs_setextattr_abort:
 UNIONFS_INTERNAL_DEBUG("unionfs_setextattr: leave (%d)\n", error);

 return (error);
}
