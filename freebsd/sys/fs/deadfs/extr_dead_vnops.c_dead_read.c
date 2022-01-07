
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vop_read_args {TYPE_1__* a_vp; } ;
struct TYPE_2__ {int v_vflag; } ;


 int EIO ;
 int VV_ISTTY ;

int
dead_read(struct vop_read_args *ap)
{




 if ((ap->a_vp->v_vflag & VV_ISTTY) == 0)
  return (EIO);
 return (0);
}
