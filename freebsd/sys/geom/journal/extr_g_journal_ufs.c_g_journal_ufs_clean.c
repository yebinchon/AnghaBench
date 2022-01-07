
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufsmount {struct fs* um_fs; } ;
struct mount {int dummy; } ;
struct fs {int fs_flags; } ;


 int FS_NEEDSFSCK ;
 int FS_UNCLEAN ;
 int MNT_WAIT ;
 struct ufsmount* VFSTOUFS (struct mount*) ;
 int ffs_sbupdate (struct ufsmount*,int ,int) ;

__attribute__((used)) static int
g_journal_ufs_clean(struct mount *mp)
{
 struct ufsmount *ump;
 struct fs *fs;
 int flags;

 ump = VFSTOUFS(mp);
 fs = ump->um_fs;

 flags = fs->fs_flags;
 fs->fs_flags &= ~(FS_UNCLEAN | FS_NEEDSFSCK);
 ffs_sbupdate(ump, MNT_WAIT, 1);
 fs->fs_flags = flags;

 return (0);
}
