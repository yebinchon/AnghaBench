
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msdosfsmount {scalar_t__ pm_fsinfo; int pm_flags; int pm_nxtfree; int pm_freeclustercount; int pm_BytesPerSec; int pm_devvp; } ;
struct fsinfo {int fsinxtfree; int fsinfree; } ;
struct buf {scalar_t__ b_data; } ;


 int MNT_WAIT ;
 int MSDOSFS_FSIMOD ;
 int MSDOSFS_LOCK_MP (struct msdosfsmount*) ;
 int MSDOSFS_UNLOCK_MP (struct msdosfsmount*) ;
 int NOCRED ;
 int bawrite (struct buf*) ;
 int bread (int ,scalar_t__,int ,int ,struct buf**) ;
 int bwrite (struct buf*) ;
 int putulong (int ,int ) ;

__attribute__((used)) static int
msdosfs_fsiflush(struct msdosfsmount *pmp, int waitfor)
{
 struct fsinfo *fp;
 struct buf *bp;
 int error;

 MSDOSFS_LOCK_MP(pmp);
 if (pmp->pm_fsinfo == 0 || (pmp->pm_flags & MSDOSFS_FSIMOD) == 0) {
  error = 0;
  goto unlock;
 }
 error = bread(pmp->pm_devvp, pmp->pm_fsinfo, pmp->pm_BytesPerSec,
     NOCRED, &bp);
 if (error != 0) {
  goto unlock;
 }
 fp = (struct fsinfo *)bp->b_data;
 putulong(fp->fsinfree, pmp->pm_freeclustercount);
 putulong(fp->fsinxtfree, pmp->pm_nxtfree);
 pmp->pm_flags &= ~MSDOSFS_FSIMOD;
 if (waitfor == MNT_WAIT)
  error = bwrite(bp);
 else
  bawrite(bp);
unlock:
 MSDOSFS_UNLOCK_MP(pmp);
 return (error);
}
