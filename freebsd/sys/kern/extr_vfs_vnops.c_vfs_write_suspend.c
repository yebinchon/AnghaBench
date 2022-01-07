
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mount {scalar_t__ mnt_susp_owner; int mnt_kern_flag; scalar_t__ mnt_flag; scalar_t__ mnt_writeopcount; } ;


 int EALREADY ;
 int EBUSY ;
 int MNTK_SUSPEND ;
 int MNTK_UNMOUNT ;
 int MNT_ILOCK (struct mount*) ;
 int MNT_IUNLOCK (struct mount*) ;
 int MNT_MTX (struct mount*) ;
 int MNT_SUSPEND ;
 int MPASS (int ) ;
 int PDROP ;
 int PUSER ;
 int VFS_SYNC (struct mount*,int ) ;
 int VS_SKIP_UNMOUNT ;
 scalar_t__ curthread ;
 int msleep (scalar_t__*,int ,int,char*,int ) ;
 int vfs_assert_mount_counters (struct mount*) ;
 int vfs_op_enter (struct mount*) ;
 int vfs_op_exit (struct mount*) ;
 int vfs_op_exit_locked (struct mount*) ;
 int vfs_write_resume (struct mount*,int ) ;
 int vn_suspendable (struct mount*) ;

int
vfs_write_suspend(struct mount *mp, int flags)
{
 int error;

 MPASS(vn_suspendable(mp));

 vfs_op_enter(mp);

 MNT_ILOCK(mp);
 vfs_assert_mount_counters(mp);
 if (mp->mnt_susp_owner == curthread) {
  vfs_op_exit_locked(mp);
  MNT_IUNLOCK(mp);
  return (EALREADY);
 }
 while (mp->mnt_kern_flag & MNTK_SUSPEND)
  msleep(&mp->mnt_flag, MNT_MTX(mp), PUSER - 1, "wsuspfs", 0);
 if ((flags & VS_SKIP_UNMOUNT) != 0 &&
     (mp->mnt_kern_flag & MNTK_UNMOUNT) != 0) {
  vfs_op_exit_locked(mp);
  MNT_IUNLOCK(mp);
  return (EBUSY);
 }

 mp->mnt_kern_flag |= MNTK_SUSPEND;
 mp->mnt_susp_owner = curthread;
 if (mp->mnt_writeopcount > 0)
  (void) msleep(&mp->mnt_writeopcount,
      MNT_MTX(mp), (PUSER - 1)|PDROP, "suspwt", 0);
 else
  MNT_IUNLOCK(mp);
 if ((error = VFS_SYNC(mp, MNT_SUSPEND)) != 0) {
  vfs_write_resume(mp, 0);
  vfs_op_exit(mp);
 }
 return (error);
}
