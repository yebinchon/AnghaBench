
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_print_args {int a_vp; } ;
struct unionfs_node {scalar_t__ un_uppervp; scalar_t__ un_lowervp; } ;


 scalar_t__ NULLVP ;
 struct unionfs_node* VTOUNIONFS (int ) ;
 int printf (char*,int ,scalar_t__,scalar_t__) ;
 int vn_printf (scalar_t__,char*) ;

__attribute__((used)) static int
unionfs_print(struct vop_print_args *ap)
{
 struct unionfs_node *unp;


 unp = VTOUNIONFS(ap->a_vp);


 printf("unionfs_vp=%p, uppervp=%p, lowervp=%p\n",
     ap->a_vp, unp->un_uppervp, unp->un_lowervp);





 if (unp->un_uppervp != NULLVP)
  vn_printf(unp->un_uppervp, "unionfs: upper ");
 if (unp->un_lowervp != NULLVP)
  vn_printf(unp->un_lowervp, "unionfs: lower ");

 return (0);
}
