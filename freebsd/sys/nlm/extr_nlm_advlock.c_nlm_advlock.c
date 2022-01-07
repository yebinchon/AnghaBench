
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_advlock_args {int a_flags; int a_fl; int a_op; int a_id; int a_vp; } ;


 int FALSE ;
 int TRUE ;
 int nlm_advlock_internal (int ,int ,int ,int ,int ,int ,int ) ;

int
nlm_advlock(struct vop_advlock_args *ap)
{

 return (nlm_advlock_internal(ap->a_vp, ap->a_id, ap->a_op, ap->a_fl,
  ap->a_flags, FALSE, TRUE));
}
