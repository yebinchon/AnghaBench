
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_generic_args {int dummy; } ;


 int EINVAL ;

int
vop_einval(struct vop_generic_args *ap)
{

 return (EINVAL);
}
