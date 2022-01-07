
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_reclaim_args {int a_td; int a_vp; } ;


 int unionfs_noderem (int ,int ) ;

__attribute__((used)) static int
unionfs_reclaim(struct vop_reclaim_args *ap)
{


 unionfs_noderem(ap->a_vp, ap->a_td);



 return (0);
}
