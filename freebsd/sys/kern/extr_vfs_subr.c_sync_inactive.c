
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_inactive_args {int a_vp; } ;


 int vgone (int ) ;

__attribute__((used)) static int
sync_inactive(struct vop_inactive_args *ap)
{

 vgone(ap->a_vp);
 return (0);
}
