
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_poll_args {int a_td; int a_cred; int a_events; int a_vp; } ;
struct vnode {int dummy; } ;
struct unionfs_node_status {scalar_t__ uns_upper_opencnt; } ;
struct unionfs_node {struct vnode* un_lowervp; struct vnode* un_uppervp; } ;


 int EBADF ;
 int KASSERT_UNIONFS_VNODE (int ) ;
 int LK_EXCLUSIVE ;
 int LK_RELEASE ;
 int LK_RETRY ;
 struct vnode* NULLVP ;
 int VOP_POLL (struct vnode*,int ,int ,int ) ;
 int VOP_UNLOCK (int ,int ) ;
 struct unionfs_node* VTOUNIONFS (int ) ;
 int unionfs_get_node_status (struct unionfs_node*,int ,struct unionfs_node_status**) ;
 int unionfs_tryrem_node_status (struct unionfs_node*,struct unionfs_node_status*) ;
 int vn_lock (int ,int) ;

__attribute__((used)) static int
unionfs_poll(struct vop_poll_args *ap)
{
 struct unionfs_node *unp;
 struct unionfs_node_status *unsp;
 struct vnode *ovp;

 KASSERT_UNIONFS_VNODE(ap->a_vp);

  vn_lock(ap->a_vp, LK_EXCLUSIVE | LK_RETRY);
 unp = VTOUNIONFS(ap->a_vp);
 unionfs_get_node_status(unp, ap->a_td, &unsp);
 ovp = (unsp->uns_upper_opencnt ? unp->un_uppervp : unp->un_lowervp);
 unionfs_tryrem_node_status(unp, unsp);
 VOP_UNLOCK(ap->a_vp, LK_RELEASE);

 if (ovp == NULLVP)
  return (EBADF);

 return (VOP_POLL(ovp, ap->a_events, ap->a_cred, ap->a_td));
}
