
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufsmount {struct fs* um_fs; } ;
struct mount {int mnt_kern_flag; } ;
struct fs {int fs_fsmnt; } ;


 int FFSR_FORCE ;
 int FFSR_UNSUSPEND ;
 int KASSERT (int,char*) ;
 int MNTK_SUSPEND ;
 struct ufsmount* VFSTOUFS (struct mount*) ;
 int curthread ;
 int ffs_reload (struct mount*,int ,int) ;
 int ffs_susp_lock ;
 scalar_t__ ffs_susp_suspended (struct mount*) ;
 int ffs_susp_unsuspend (struct mount*) ;
 int panic (char*,int ) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;

__attribute__((used)) static void
ffs_susp_dtor(void *data)
{
 struct fs *fs;
 struct ufsmount *ump;
 struct mount *mp;
 int error;

 sx_xlock(&ffs_susp_lock);

 mp = (struct mount *)data;
 ump = VFSTOUFS(mp);
 fs = ump->um_fs;

 if (ffs_susp_suspended(mp) == 0) {
  sx_xunlock(&ffs_susp_lock);
  return;
 }

 KASSERT((mp->mnt_kern_flag & MNTK_SUSPEND) != 0,
     ("MNTK_SUSPEND not set"));

 error = ffs_reload(mp, curthread, FFSR_FORCE | FFSR_UNSUSPEND);
 if (error != 0)
  panic("failed to unsuspend writes on %s", fs->fs_fsmnt);

 ffs_susp_unsuspend(mp);
 sx_xunlock(&ffs_susp_lock);
}
