
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
struct vop_print_args {struct vnode* a_vp; } ;
struct vnode {scalar_t__ v_type; } ;
struct udf_node {TYPE_1__* udfmp; scalar_t__ hash_id; } ;
struct TYPE_2__ {int im_dev; } ;


 scalar_t__ VFIFO ;
 struct udf_node* VTON (struct vnode*) ;
 int devtoname (int ) ;
 int fifo_printinfo (struct vnode*) ;
 int printf (char*,...) ;

__attribute__((used)) static int
udf_print(struct vop_print_args *ap)
{
 struct vnode *vp = ap->a_vp;
 struct udf_node *node = VTON(vp);

 printf("    ino %lu, on dev %s", (u_long)node->hash_id,
     devtoname(node->udfmp->im_dev));
 if (vp->v_type == VFIFO)
  fifo_printinfo(vp);
 printf("\n");
 return (0);
}
