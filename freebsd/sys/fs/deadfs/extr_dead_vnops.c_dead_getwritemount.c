
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_getwritemount_args {int ** a_mpp; } ;



__attribute__((used)) static int
dead_getwritemount(struct vop_getwritemount_args *ap)
{

 *(ap->a_mpp) = ((void*)0);
 return (0);
}
