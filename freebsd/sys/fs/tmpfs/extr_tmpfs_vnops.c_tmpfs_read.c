
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vop_read_args {struct uio* a_uio; struct vnode* a_vp; } ;
struct vnode {scalar_t__ v_type; int v_mount; } ;
struct uio {scalar_t__ uio_offset; } ;
struct TYPE_2__ {int tn_aobj; } ;
struct tmpfs_node {int tn_size; TYPE_1__ tn_reg; } ;


 int EINVAL ;
 int EISDIR ;
 int TMPFS_NODE_ACCESSED ;
 int VFS_TO_TMPFS (int ) ;
 struct tmpfs_node* VP_TO_TMPFS_NODE (struct vnode*) ;
 scalar_t__ VREG ;
 int tmpfs_set_status (int ,struct tmpfs_node*,int ) ;
 int uiomove_object (int ,int ,struct uio*) ;

__attribute__((used)) static int
tmpfs_read(struct vop_read_args *v)
{
 struct vnode *vp;
 struct uio *uio;
 struct tmpfs_node *node;

 vp = v->a_vp;
 if (vp->v_type != VREG)
  return (EISDIR);
 uio = v->a_uio;
 if (uio->uio_offset < 0)
  return (EINVAL);
 node = VP_TO_TMPFS_NODE(vp);
 tmpfs_set_status(VFS_TO_TMPFS(vp->v_mount), node, TMPFS_NODE_ACCESSED);
 return (uiomove_object(node->tn_reg.tn_aobj, node->tn_size, uio));
}
