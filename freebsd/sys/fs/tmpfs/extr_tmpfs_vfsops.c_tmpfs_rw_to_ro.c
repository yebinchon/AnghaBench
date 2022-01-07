
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mount {int mnt_flag; } ;
struct TYPE_2__ {int tm_ronly; } ;


 int EBUSY ;
 int FORCECLOSE ;
 int MNT_FORCE ;
 int MNT_ILOCK (struct mount*) ;
 int MNT_IUNLOCK (struct mount*) ;
 int MNT_RDONLY ;
 TYPE_1__* VFS_TO_TMPFS (struct mount*) ;
 int V_WAIT ;
 int WRITECLOSE ;
 int curthread ;
 int tmpfs_all_rw_maps (struct mount*,int ,int *) ;
 scalar_t__ tmpfs_check_rw_maps (struct mount*) ;
 int tmpfs_revoke_rw_maps_cb ;
 int tmpfs_update_mtime (struct mount*,int) ;
 int vflush (struct mount*,int ,int,int ) ;
 int vfs_write_resume (struct mount*,int ) ;
 int vfs_write_suspend_umnt (struct mount*) ;
 int vn_start_write (int *,struct mount**,int ) ;

__attribute__((used)) static int
tmpfs_rw_to_ro(struct mount *mp)
{
 int error, flags;
 bool forced;

 forced = (mp->mnt_flag & MNT_FORCE) != 0;
 flags = WRITECLOSE | (forced ? FORCECLOSE : 0);

 if ((error = vn_start_write(((void*)0), &mp, V_WAIT)) != 0)
  return (error);
 error = vfs_write_suspend_umnt(mp);
 if (error != 0)
  return (error);
 if (!forced && tmpfs_check_rw_maps(mp)) {
  error = EBUSY;
  goto out;
 }
 VFS_TO_TMPFS(mp)->tm_ronly = 1;
 MNT_ILOCK(mp);
 mp->mnt_flag |= MNT_RDONLY;
 MNT_IUNLOCK(mp);
 for (;;) {
  tmpfs_all_rw_maps(mp, tmpfs_revoke_rw_maps_cb, ((void*)0));
  tmpfs_update_mtime(mp, 0);
  error = vflush(mp, 0, flags, curthread);
  if (error != 0) {
   VFS_TO_TMPFS(mp)->tm_ronly = 0;
   MNT_ILOCK(mp);
   mp->mnt_flag &= ~MNT_RDONLY;
   MNT_IUNLOCK(mp);
   goto out;
  }
  if (!tmpfs_check_rw_maps(mp))
   break;
 }
out:
 vfs_write_resume(mp, 0);
 return (error);
}
