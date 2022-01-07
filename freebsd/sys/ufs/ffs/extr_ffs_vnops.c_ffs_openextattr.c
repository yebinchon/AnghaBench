
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vop_openextattr_args {int a_td; int a_cred; TYPE_1__* a_vp; } ;
struct TYPE_2__ {scalar_t__ v_type; } ;


 int EOPNOTSUPP ;
 scalar_t__ VBLK ;
 scalar_t__ VCHR ;
 int ffs_open_ea (TYPE_1__*,int ,int ) ;

__attribute__((used)) static int
ffs_openextattr(struct vop_openextattr_args *ap)
{

 if (ap->a_vp->v_type == VCHR || ap->a_vp->v_type == VBLK)
  return (EOPNOTSUPP);

 return (ffs_open_ea(ap->a_vp, ap->a_cred, ap->a_td));
}
