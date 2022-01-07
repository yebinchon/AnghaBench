
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vop_access_args {int a_accmode; struct vnode* a_vp; struct ucred* a_cred; } ;
struct vnode {int v_type; TYPE_1__* v_mount; } ;
struct vattr {int va_gid; int va_uid; int va_mode; } ;
struct ucred {int dummy; } ;
typedef int accmode_t ;
struct TYPE_2__ {int mnt_flag; } ;


 int EROFS ;
 int MNT_RDONLY ;


 int VOP_GETATTR (struct vnode*,struct vattr*,struct ucred*) ;

 int VWRITE ;
 int vaccess (int,int ,int ,int ,int,struct ucred*,int *) ;

__attribute__((used)) static int
nfsspec_access(struct vop_access_args *ap)
{
 struct vattr *vap;
 struct ucred *cred = ap->a_cred;
 struct vnode *vp = ap->a_vp;
 accmode_t accmode = ap->a_accmode;
 struct vattr vattr;
 int error;






 if ((accmode & VWRITE) && (vp->v_mount->mnt_flag & MNT_RDONLY)) {
  switch (vp->v_type) {
  case 128:
  case 130:
  case 129:
   return (EROFS);
  default:
   break;
  }
 }
 vap = &vattr;
 error = VOP_GETATTR(vp, vap, cred);
 if (error)
  goto out;
 error = vaccess(vp->v_type, vap->va_mode, vap->va_uid, vap->va_gid,
     accmode, cred, ((void*)0));
out:
 return error;
}
