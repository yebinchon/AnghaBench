
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufsmount {int um_flags; } ;
struct mount {int mnt_susp_owner; } ;


 int SA_XLOCKED ;
 int UFS_LOCK (struct ufsmount*) ;
 int UFS_UNLOCK (struct ufsmount*) ;
 int UM_WRITESUSPENDED ;
 struct ufsmount* VFSTOUFS (struct mount*) ;
 int curthread ;
 int ffs_susp_lock ;
 int sx_assert (int *,int ) ;
 int vfs_unbusy (struct mount*) ;
 int vfs_write_resume (struct mount*,int ) ;

__attribute__((used)) static void
ffs_susp_unsuspend(struct mount *mp)
{
 struct ufsmount *ump;

 sx_assert(&ffs_susp_lock, SA_XLOCKED);
 mp->mnt_susp_owner = curthread;

 vfs_write_resume(mp, 0);
 ump = VFSTOUFS(mp);
 UFS_LOCK(ump);
 ump->um_flags &= ~UM_WRITESUSPENDED;
 UFS_UNLOCK(ump);
 vfs_unbusy(mp);
}
