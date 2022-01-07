
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_need_inactive_args {int a_vp; } ;


 int null_want_recycle (int ) ;

__attribute__((used)) static int
null_need_inactive(struct vop_need_inactive_args *ap)
{

 return (null_want_recycle(ap->a_vp));
}
