
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_fsync_args {int a_td; int a_waitfor; int a_vp; } ;
struct vnode {int dummy; } ;
struct unionfs_node_status {scalar_t__ uns_upper_opencnt; } ;
struct unionfs_node {struct vnode* un_lowervp; struct vnode* un_uppervp; } ;


 int EBADF ;
 int KASSERT_UNIONFS_VNODE (int ) ;
 struct vnode* NULLVP ;
 int VOP_FSYNC (struct vnode*,int ,int ) ;
 struct unionfs_node* VTOUNIONFS (int ) ;
 int unionfs_get_node_status (struct unionfs_node*,int ,struct unionfs_node_status**) ;
 int unionfs_tryrem_node_status (struct unionfs_node*,struct unionfs_node_status*) ;

__attribute__((used)) static int
unionfs_fsync(struct vop_fsync_args *ap)
{
 struct unionfs_node *unp;
 struct unionfs_node_status *unsp;
 struct vnode *ovp;

 KASSERT_UNIONFS_VNODE(ap->a_vp);

 unp = VTOUNIONFS(ap->a_vp);
 unionfs_get_node_status(unp, ap->a_td, &unsp);
 ovp = (unsp->uns_upper_opencnt ? unp->un_uppervp : unp->un_lowervp);
 unionfs_tryrem_node_status(unp, unsp);

 if (ovp == NULLVP)
  return (EBADF);

 return (VOP_FSYNC(ovp, ap->a_waitfor, ap->a_td));
}
