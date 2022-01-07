
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_long ;
struct msdosfsmount {int pm_bpcluster; scalar_t__ pm_rootdirsize; int pm_crbomask; int pm_devvp; } ;
struct direntry {int dummy; } ;
struct buf {int dummy; } ;
typedef int daddr_t ;


 scalar_t__ MSDOSFSROOT ;
 int NOCRED ;
 struct direntry* bptoep (struct msdosfsmount*,struct buf*,scalar_t__) ;
 int bread (int ,int ,int,int ,struct buf**) ;
 int brelse (struct buf*) ;
 scalar_t__ de_blk (struct msdosfsmount*,scalar_t__) ;
 int de_bn2off (struct msdosfsmount*,scalar_t__) ;
 int detobn (struct msdosfsmount*,scalar_t__,scalar_t__) ;

int
readep(struct msdosfsmount *pmp, u_long dirclust, u_long diroffset,
    struct buf **bpp, struct direntry **epp)
{
 int error;
 daddr_t bn;
 int blsize;

 blsize = pmp->pm_bpcluster;
 if (dirclust == MSDOSFSROOT
     && de_blk(pmp, diroffset + blsize) > pmp->pm_rootdirsize)
  blsize = de_bn2off(pmp, pmp->pm_rootdirsize) & pmp->pm_crbomask;
 bn = detobn(pmp, dirclust, diroffset);
 if ((error = bread(pmp->pm_devvp, bn, blsize, NOCRED, bpp)) != 0) {
  brelse(*bpp);
  *bpp = ((void*)0);
  return (error);
 }
 if (epp)
  *epp = bptoep(pmp, *bpp, diroffset);
 return (0);
}
