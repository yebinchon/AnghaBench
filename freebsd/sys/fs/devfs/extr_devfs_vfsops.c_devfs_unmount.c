
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct mount {int * mnt_data; } ;
struct devfs_mount {int dm_holdcnt; int dm_lock; int dm_idx; int * dm_mount; } ;


 int FORCECLOSE ;
 int KASSERT (int ,char*) ;
 int MNT_FORCE ;
 struct devfs_mount* VFSTODEVFS (struct mount*) ;
 int curthread ;
 int devfs_cleanup (struct devfs_mount*) ;
 int devfs_rules_cleanup (struct devfs_mount*) ;
 int devfs_unmount_final (struct devfs_mount*) ;
 int devfs_unr ;
 int free_unr (int ,int ) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;
 int vflush (struct mount*,int,int,int ) ;

__attribute__((used)) static int
devfs_unmount(struct mount *mp, int mntflags)
{
 int error;
 int flags = 0;
 struct devfs_mount *fmp;
 int hold;
 u_int idx;

 fmp = VFSTODEVFS(mp);
 KASSERT(fmp->dm_mount != ((void*)0),
  ("devfs_unmount unmounted devfs_mount"));
 if (mntflags & MNT_FORCE)
  flags |= FORCECLOSE;

 error = vflush(mp, 1, flags, curthread);
 if (error)
  return (error);
 sx_xlock(&fmp->dm_lock);
 devfs_cleanup(fmp);
 devfs_rules_cleanup(fmp);
 fmp->dm_mount = ((void*)0);
 hold = --fmp->dm_holdcnt;
 mp->mnt_data = ((void*)0);
 idx = fmp->dm_idx;
 sx_xunlock(&fmp->dm_lock);
 free_unr(devfs_unr, idx);
 if (hold == 0)
  devfs_unmount_final(fmp);
 return 0;
}
