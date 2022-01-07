
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uid_t ;
struct vop_setattr_args {struct vattr* a_vap; struct vnode* a_vp; } ;
struct vop_generic_args {int dummy; } ;
struct vnode {int v_type; TYPE_3__* v_mount; } ;
struct TYPE_5__ {scalar_t__ tv_sec; } ;
struct TYPE_4__ {scalar_t__ tv_sec; } ;
struct vattr {scalar_t__ va_flags; scalar_t__ va_uid; scalar_t__ va_gid; scalar_t__ va_mode; scalar_t__ va_size; TYPE_2__ va_mtime; TYPE_1__ va_atime; } ;
typedef scalar_t__ mode_t ;
typedef scalar_t__ gid_t ;
struct TYPE_6__ {int mnt_flag; } ;


 int EISDIR ;
 int EOPNOTSUPP ;
 int EROFS ;
 int MNT_RDONLY ;





 scalar_t__ VNOVAL ;


 int null_bypass (struct vop_generic_args*) ;

__attribute__((used)) static int
null_setattr(struct vop_setattr_args *ap)
{
 struct vnode *vp = ap->a_vp;
 struct vattr *vap = ap->a_vap;

   if ((vap->va_flags != VNOVAL || vap->va_uid != (uid_t)VNOVAL ||
     vap->va_gid != (gid_t)VNOVAL || vap->va_atime.tv_sec != VNOVAL ||
     vap->va_mtime.tv_sec != VNOVAL || vap->va_mode != (mode_t)VNOVAL) &&
     (vp->v_mount->mnt_flag & MNT_RDONLY))
  return (EROFS);
 if (vap->va_size != VNOVAL) {
   switch (vp->v_type) {
   case 132:
    return (EISDIR);
   case 133:
   case 134:
   case 128:
   case 131:
   if (vap->va_flags != VNOVAL)
    return (EOPNOTSUPP);
   return (0);
  case 129:
  case 130:
   default:




   if (vp->v_mount->mnt_flag & MNT_RDONLY)
    return (EROFS);
  }
 }

 return (null_bypass((struct vop_generic_args *)ap));
}
