
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_ioctl_args {int a_td; int a_data; int a_command; struct vnode* a_vp; } ;
struct vnode {int v_iflag; int v_mount; } ;
struct devfs_mount {int dm_lock; } ;


 scalar_t__ DEVFS_DMP_DROP (struct devfs_mount*) ;
 int DEVFS_DMP_HOLD (struct devfs_mount*) ;
 int EBADF ;
 int ENOENT ;
 int LK_RETRY ;
 int LK_SHARED ;
 struct devfs_mount* VFSTODEVFS (int ) ;
 int VI_DOOMED ;
 int VOP_UNLOCK (struct vnode*,int ) ;
 int devfs_populate (struct devfs_mount*) ;
 int devfs_rules_ioctl (struct devfs_mount*,int ,int ,int ) ;
 int devfs_unmount_final (struct devfs_mount*) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;
 int vn_lock (struct vnode*,int) ;

__attribute__((used)) static int
devfs_rioctl(struct vop_ioctl_args *ap)
{
 struct vnode *vp;
 struct devfs_mount *dmp;
 int error;

 vp = ap->a_vp;
 vn_lock(vp, LK_SHARED | LK_RETRY);
 if (vp->v_iflag & VI_DOOMED) {
  VOP_UNLOCK(vp, 0);
  return (EBADF);
 }
 dmp = VFSTODEVFS(vp->v_mount);
 sx_xlock(&dmp->dm_lock);
 VOP_UNLOCK(vp, 0);
 DEVFS_DMP_HOLD(dmp);
 devfs_populate(dmp);
 if (DEVFS_DMP_DROP(dmp)) {
  sx_xunlock(&dmp->dm_lock);
  devfs_unmount_final(dmp);
  return (ENOENT);
 }
 error = devfs_rules_ioctl(dmp, ap->a_command, ap->a_data, ap->a_td);
 sx_xunlock(&dmp->dm_lock);
 return (error);
}
