
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vop_inactive_args {TYPE_1__* a_vp; } ;
struct TYPE_2__ {int * v_object; } ;


 int vrecycle (TYPE_1__*) ;

__attribute__((used)) static int
unionfs_inactive(struct vop_inactive_args *ap)
{
 ap->a_vp->v_object = ((void*)0);
 vrecycle(ap->a_vp);
 return (0);
}
