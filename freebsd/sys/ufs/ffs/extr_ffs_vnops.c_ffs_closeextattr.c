
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vop_closeextattr_args {int a_td; int a_cred; scalar_t__ a_commit; TYPE_2__* a_vp; } ;
struct TYPE_4__ {scalar_t__ v_type; TYPE_1__* v_mount; } ;
struct TYPE_3__ {int mnt_flag; } ;


 int EOPNOTSUPP ;
 int EROFS ;
 int MNT_RDONLY ;
 scalar_t__ VBLK ;
 scalar_t__ VCHR ;
 int ffs_close_ea (TYPE_2__*,scalar_t__,int ,int ) ;

__attribute__((used)) static int
ffs_closeextattr(struct vop_closeextattr_args *ap)
{

 if (ap->a_vp->v_type == VCHR || ap->a_vp->v_type == VBLK)
  return (EOPNOTSUPP);

 if (ap->a_commit && (ap->a_vp->v_mount->mnt_flag & MNT_RDONLY))
  return (EROFS);

 return (ffs_close_ea(ap->a_vp, ap->a_commit, ap->a_cred, ap->a_td));
}
