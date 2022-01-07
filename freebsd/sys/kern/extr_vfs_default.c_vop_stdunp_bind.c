
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vop_unp_bind_args {int a_unpcb; TYPE_1__* a_vp; } ;
struct TYPE_2__ {int v_unpcb; } ;



int
vop_stdunp_bind(struct vop_unp_bind_args *ap)
{

 ap->a_vp->v_unpcb = ap->a_unpcb;
 return (0);
}
