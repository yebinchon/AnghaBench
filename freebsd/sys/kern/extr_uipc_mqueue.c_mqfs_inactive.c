
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_inactive_args {int a_vp; } ;
struct mqfs_node {scalar_t__ mn_deleted; } ;


 struct mqfs_node* VTON (int ) ;
 int vrecycle (int ) ;

__attribute__((used)) static int
mqfs_inactive(struct vop_inactive_args *ap)
{
 struct mqfs_node *pn = VTON(ap->a_vp);

 if (pn->mn_deleted)
  vrecycle(ap->a_vp);
 return (0);
}
