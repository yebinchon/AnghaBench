
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vop_generic_args {int dummy; } ;
struct vop_access_args {int a_accmode; struct vnode* a_vp; } ;
struct vnode {int v_type; TYPE_1__* v_mount; } ;
typedef int accmode_t ;
struct TYPE_2__ {int mnt_flag; } ;


 int EROFS ;
 int MNT_RDONLY ;



 int VWRITE ;
 int null_bypass (struct vop_generic_args*) ;

__attribute__((used)) static int
null_access(struct vop_access_args *ap)
{
 struct vnode *vp = ap->a_vp;
 accmode_t accmode = ap->a_accmode;






 if (accmode & VWRITE) {
  switch (vp->v_type) {
  case 130:
  case 129:
  case 128:
   if (vp->v_mount->mnt_flag & MNT_RDONLY)
    return (EROFS);
   break;
  default:
   break;
  }
 }
 return (null_bypass((struct vop_generic_args *)ap));
}
