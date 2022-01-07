
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_ioctl_args {int a_td; int a_cred; int a_fflag; int a_data; int a_command; int a_vp; } ;
struct vnode {int dummy; } ;
struct unionfs_node_status {scalar_t__ uns_upper_opencnt; } ;
struct unionfs_node {struct vnode* un_lowervp; struct vnode* un_uppervp; } ;


 int EBADF ;
 int KASSERT_UNIONFS_VNODE (int ) ;
 int LK_EXCLUSIVE ;
 int LK_RELEASE ;
 int LK_RETRY ;
 struct vnode* NULLVP ;
 int UNIONFS_INTERNAL_DEBUG (char*,...) ;
 int VOP_IOCTL (struct vnode*,int ,int ,int ,int ,int ) ;
 int VOP_UNLOCK (int ,int ) ;
 struct unionfs_node* VTOUNIONFS (int ) ;
 int unionfs_get_node_status (struct unionfs_node*,int ,struct unionfs_node_status**) ;
 int unionfs_tryrem_node_status (struct unionfs_node*,struct unionfs_node_status*) ;
 int vn_lock (int ,int) ;

__attribute__((used)) static int
unionfs_ioctl(struct vop_ioctl_args *ap)
{
 int error;
 struct unionfs_node *unp;
 struct unionfs_node_status *unsp;
 struct vnode *ovp;

 UNIONFS_INTERNAL_DEBUG("unionfs_ioctl: enter\n");

 KASSERT_UNIONFS_VNODE(ap->a_vp);

  vn_lock(ap->a_vp, LK_EXCLUSIVE | LK_RETRY);
 unp = VTOUNIONFS(ap->a_vp);
 unionfs_get_node_status(unp, ap->a_td, &unsp);
 ovp = (unsp->uns_upper_opencnt ? unp->un_uppervp : unp->un_lowervp);
 unionfs_tryrem_node_status(unp, unsp);
 VOP_UNLOCK(ap->a_vp, LK_RELEASE);

 if (ovp == NULLVP)
  return (EBADF);

 error = VOP_IOCTL(ovp, ap->a_command, ap->a_data, ap->a_fflag,
     ap->a_cred, ap->a_td);

 UNIONFS_INTERNAL_DEBUG("unionfs_ioctl: leave (%d)\n", error);

 return (error);
}
