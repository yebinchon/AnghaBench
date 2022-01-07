
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vop_print_args {TYPE_1__* a_vp; } ;
struct TYPE_2__ {int v_rdev; } ;


 char* devtoname (int ) ;
 int printf (char*,char*) ;

__attribute__((used)) static int
devfs_print(struct vop_print_args *ap)
{

 printf("\tdev %s\n", devtoname(ap->a_vp->v_rdev));
 return (0);
}
