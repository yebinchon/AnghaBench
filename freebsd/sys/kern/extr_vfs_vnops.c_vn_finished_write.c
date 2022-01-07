
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mount {int mnt_writeopcount; scalar_t__ mnt_vfs_ops; int mnt_kern_flag; } ;


 int MNTK_SUSPEND ;
 int MNT_ILOCK (struct mount*) ;
 int MNT_IUNLOCK (struct mount*) ;
 int MNT_REL (struct mount*) ;
 int MPASS (int) ;
 int ref ;
 int vfs_assert_mount_counters (struct mount*) ;
 int vfs_dump_mount_counters (struct mount*) ;
 int vfs_mp_count_sub_pcpu (struct mount*,int ,int) ;
 scalar_t__ vfs_op_thread_enter (struct mount*) ;
 int vfs_op_thread_exit (struct mount*) ;
 int vn_suspendable (struct mount*) ;
 int wakeup (int*) ;
 int writeopcount ;

void
vn_finished_write(struct mount *mp)
{
 int c;

 if (mp == ((void*)0) || !vn_suspendable(mp))
  return;

 if (vfs_op_thread_enter(mp)) {
  vfs_mp_count_sub_pcpu(mp, writeopcount, 1);
  vfs_mp_count_sub_pcpu(mp, ref, 1);
  vfs_op_thread_exit(mp);
  return;
 }

 MNT_ILOCK(mp);
 vfs_assert_mount_counters(mp);
 MNT_REL(mp);
 c = --mp->mnt_writeopcount;
 if (mp->mnt_vfs_ops == 0) {
  MPASS((mp->mnt_kern_flag & MNTK_SUSPEND) == 0);
  MNT_IUNLOCK(mp);
  return;
 }
 if (c < 0)
  vfs_dump_mount_counters(mp);
 if ((mp->mnt_kern_flag & MNTK_SUSPEND) != 0 && c == 0)
  wakeup(&mp->mnt_writeopcount);
 MNT_IUNLOCK(mp);
}
