
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_readlink_args {struct uio* a_uio; struct vnode* a_vp; } ;
struct vnode {scalar_t__ v_type; int v_mount; } ;
struct uio {scalar_t__ uio_offset; int uio_resid; } ;
struct tmpfs_node {int tn_size; int tn_link; } ;


 int MIN (int ,int ) ;
 int MPASS (int) ;
 int TMPFS_NODE_ACCESSED ;
 int VFS_TO_TMPFS (int ) ;
 scalar_t__ VLNK ;
 struct tmpfs_node* VP_TO_TMPFS_NODE (struct vnode*) ;
 int tmpfs_set_status (int ,struct tmpfs_node*,int ) ;
 int uiomove (int ,int ,struct uio*) ;

__attribute__((used)) static int
tmpfs_readlink(struct vop_readlink_args *v)
{
 struct vnode *vp = v->a_vp;
 struct uio *uio = v->a_uio;

 int error;
 struct tmpfs_node *node;

 MPASS(uio->uio_offset == 0);
 MPASS(vp->v_type == VLNK);

 node = VP_TO_TMPFS_NODE(vp);

 error = uiomove(node->tn_link, MIN(node->tn_size, uio->uio_resid),
     uio);
 tmpfs_set_status(VFS_TO_TMPFS(vp->v_mount), node, TMPFS_NODE_ACCESSED);

 return (error);
}
