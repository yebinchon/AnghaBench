
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
struct vop_print_args {struct vnode* a_vp; } ;
struct vnode {scalar_t__ v_type; } ;
struct tmpfs_node {int tn_mode; int tn_uid; int tn_gid; int tn_status; scalar_t__ tn_size; scalar_t__ tn_links; int tn_flags; } ;
typedef int intmax_t ;


 scalar_t__ VFIFO ;
 struct tmpfs_node* VP_TO_TMPFS_NODE (struct vnode*) ;
 int fifo_printinfo (struct vnode*) ;
 int printf (char*,...) ;

int
tmpfs_print(struct vop_print_args *v)
{
 struct vnode *vp = v->a_vp;

 struct tmpfs_node *node;

 node = VP_TO_TMPFS_NODE(vp);

 printf("tag VT_TMPFS, tmpfs_node %p, flags 0x%lx, links %jd\n",
     node, node->tn_flags, (uintmax_t)node->tn_links);
 printf("\tmode 0%o, owner %d, group %d, size %jd, status 0x%x\n",
     node->tn_mode, node->tn_uid, node->tn_gid,
     (intmax_t)node->tn_size, node->tn_status);

 if (vp->v_type == VFIFO)
  fifo_printinfo(vp);

 printf("\n");

 return 0;
}
