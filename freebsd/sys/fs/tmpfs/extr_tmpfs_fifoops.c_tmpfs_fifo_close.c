
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vop_close_args {TYPE_1__* a_vp; } ;
struct tmpfs_node {int dummy; } ;
struct TYPE_5__ {int (* vop_close ) (struct vop_close_args*) ;} ;
struct TYPE_4__ {int v_mount; } ;


 int TMPFS_NODE_ACCESSED ;
 int VFS_TO_TMPFS (int ) ;
 struct tmpfs_node* VP_TO_TMPFS_NODE (TYPE_1__*) ;
 TYPE_2__ fifo_specops ;
 int stub1 (struct vop_close_args*) ;
 int tmpfs_set_status (int ,struct tmpfs_node*,int ) ;
 int tmpfs_update (TYPE_1__*) ;

__attribute__((used)) static int
tmpfs_fifo_close(struct vop_close_args *v)
{
 struct tmpfs_node *node;

 node = VP_TO_TMPFS_NODE(v->a_vp);
 tmpfs_set_status(VFS_TO_TMPFS(v->a_vp->v_mount), node,
     TMPFS_NODE_ACCESSED);
 tmpfs_update(v->a_vp);
 return (fifo_specops.vop_close(v));
}
