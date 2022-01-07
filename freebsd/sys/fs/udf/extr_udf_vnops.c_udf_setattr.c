
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uid_t ;
typedef scalar_t__ u_quad_t ;
typedef scalar_t__ u_long ;
struct vop_setattr_args {struct vattr* a_vap; struct vnode* a_vp; } ;
struct vnode {int v_type; } ;
struct TYPE_4__ {scalar_t__ tv_sec; } ;
struct TYPE_3__ {scalar_t__ tv_sec; } ;
struct vattr {scalar_t__ va_flags; scalar_t__ va_uid; scalar_t__ va_gid; scalar_t__ va_mode; scalar_t__ va_size; TYPE_2__ va_mtime; TYPE_1__ va_atime; } ;
typedef scalar_t__ mode_t ;
typedef scalar_t__ gid_t ;


 int EISDIR ;
 int EROFS ;
 scalar_t__ VNOVAL ;



__attribute__((used)) static int
udf_setattr(struct vop_setattr_args *a)
{
 struct vnode *vp;
 struct vattr *vap;

 vp = a->a_vp;
 vap = a->a_vap;
 if (vap->va_flags != (u_long)VNOVAL || vap->va_uid != (uid_t)VNOVAL ||
     vap->va_gid != (gid_t)VNOVAL || vap->va_atime.tv_sec != VNOVAL ||
     vap->va_mtime.tv_sec != VNOVAL || vap->va_mode != (mode_t)VNOVAL)
  return (EROFS);
 if (vap->va_size != (u_quad_t)VNOVAL) {
  switch (vp->v_type) {
  case 134:
   return (EISDIR);
  case 132:
  case 129:
   return (EROFS);
  case 135:
  case 136:
  case 128:
  case 133:
  case 130:
  case 137:
  case 131:
   return (0);
  }
 }
 return (0);
}
