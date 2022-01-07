
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mount {int mnt_kern_flag; } ;


 int MNTK_SUSPEND2 ;
 int MNTK_SUSPENDED ;
 int MNT_ILOCK (struct mount*) ;
 int MNT_IUNLOCK (struct mount*) ;
 int MNT_LAZY ;
 int MNT_SUSPEND ;
 int tmpfs_update_mtime (struct mount*,int) ;

__attribute__((used)) static int
tmpfs_sync(struct mount *mp, int waitfor)
{

 if (waitfor == MNT_SUSPEND) {
  MNT_ILOCK(mp);
  mp->mnt_kern_flag |= MNTK_SUSPEND2 | MNTK_SUSPENDED;
  MNT_IUNLOCK(mp);
 } else if (waitfor == MNT_LAZY) {
  tmpfs_update_mtime(mp, 1);
 }
 return (0);
}
