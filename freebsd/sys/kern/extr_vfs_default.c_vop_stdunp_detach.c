
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vop_unp_detach_args {TYPE_1__* a_vp; } ;
struct TYPE_2__ {int * v_unpcb; } ;



int
vop_stdunp_detach(struct vop_unp_detach_args *ap)
{

 ap->a_vp->v_unpcb = ((void*)0);
 return (0);
}
