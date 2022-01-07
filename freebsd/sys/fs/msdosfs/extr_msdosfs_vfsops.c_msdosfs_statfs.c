
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct statfs {scalar_t__ f_ffree; int f_files; int f_bavail; int f_bfree; scalar_t__ f_blocks; int f_iosize; int f_bsize; } ;
struct msdosfsmount {int pm_RootDirEnts; int pm_freeclustercount; scalar_t__ pm_maxcluster; int pm_bpcluster; } ;
struct mount {int dummy; } ;


 struct msdosfsmount* VFSTOMSDOSFS (struct mount*) ;

__attribute__((used)) static int
msdosfs_statfs(struct mount *mp, struct statfs *sbp)
{
 struct msdosfsmount *pmp;

 pmp = VFSTOMSDOSFS(mp);
 sbp->f_bsize = pmp->pm_bpcluster;
 sbp->f_iosize = pmp->pm_bpcluster;
 sbp->f_blocks = pmp->pm_maxcluster + 1;
 sbp->f_bfree = pmp->pm_freeclustercount;
 sbp->f_bavail = pmp->pm_freeclustercount;
 sbp->f_files = pmp->pm_RootDirEnts;
 sbp->f_ffree = 0;
 return (0);
}
