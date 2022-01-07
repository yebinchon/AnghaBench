
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_write_args {int dummy; } ;


 int EIO ;

int
dead_write(struct vop_write_args *ap)
{

 return (EIO);
}
