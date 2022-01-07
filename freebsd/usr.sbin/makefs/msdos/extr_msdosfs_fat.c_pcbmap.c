
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_long ;
struct msdosfsmount {int pm_bpcluster; scalar_t__ pm_fatmask; int pm_devvp; scalar_t__ pm_rootdirblk; int pm_rootdirsize; } ;
struct denode {scalar_t__ de_StartCluster; int de_Attributes; scalar_t__ de_FileSize; struct msdosfsmount* de_pmp; } ;
struct buf {scalar_t__ b_data; } ;
typedef scalar_t__ daddr_t ;


 int ATTR_DIRECTORY ;
 scalar_t__ CLUST_RSRVD ;
 int E2BIG ;
 int EIO ;
 scalar_t__ FAT12 (struct msdosfsmount*) ;
 scalar_t__ FAT32 (struct msdosfsmount*) ;
 scalar_t__ FATOFS (struct msdosfsmount*,scalar_t__) ;
 int FC_LASTFC ;
 int FC_LASTMAP ;
 int MIN (int,scalar_t__) ;
 int MSDOSFSEOF (struct msdosfsmount*,scalar_t__) ;
 scalar_t__ MSDOSFSROOT ;
 int NOCRED ;
 int assert (int) ;
 int bread (int ,scalar_t__,scalar_t__,int ,struct buf**) ;
 int brelse (struct buf*) ;
 scalar_t__ cntobn (struct msdosfsmount*,scalar_t__) ;
 scalar_t__ de_bn2cn (struct msdosfsmount*,int ) ;
 scalar_t__ de_cn2bn (struct msdosfsmount*,scalar_t__) ;
 scalar_t__ de_cn2off (struct msdosfsmount*,scalar_t__) ;
 int fatblock (struct msdosfsmount*,scalar_t__,scalar_t__*,scalar_t__*,scalar_t__*) ;
 int fc_lookup (struct denode*,scalar_t__,scalar_t__*,scalar_t__*) ;
 int fc_setcache (struct denode*,int ,scalar_t__,scalar_t__) ;
 scalar_t__ getulong (scalar_t__) ;
 scalar_t__ getushort (scalar_t__) ;

int
pcbmap(struct denode *dep, u_long findcn, daddr_t *bnp, u_long *cnp, int *sp)
{
 int error;
 u_long i;
 u_long cn;
 u_long prevcn = 0;
 u_long byteoffset;
 u_long bn;
 u_long bo;
 struct buf *bp = ((void*)0);
 u_long bp_bn = -1;
 struct msdosfsmount *pmp = dep->de_pmp;
 u_long bsize;

 assert(bnp != ((void*)0) || cnp != ((void*)0) || sp != ((void*)0));

 cn = dep->de_StartCluster;






 if (cn == MSDOSFSROOT) {
  if (dep->de_Attributes & ATTR_DIRECTORY) {
   if (de_cn2off(pmp, findcn) >= dep->de_FileSize) {
    if (cnp)
     *cnp = de_bn2cn(pmp, pmp->pm_rootdirsize);
    return (E2BIG);
   }
   if (bnp)
    *bnp = pmp->pm_rootdirblk + de_cn2bn(pmp, findcn);
   if (cnp)
    *cnp = MSDOSFSROOT;
   if (sp)
    *sp = MIN(pmp->pm_bpcluster,
        dep->de_FileSize - de_cn2off(pmp, findcn));
   return (0);
  } else {
   if (cnp)
    *cnp = 0;
   return (E2BIG);
  }
 }




 if (sp)
  *sp = pmp->pm_bpcluster;






 i = 0;
 fc_lookup(dep, findcn, &i, &cn);




 for (; i < findcn; i++) {



  if ((cn | ~pmp->pm_fatmask) >= CLUST_RSRVD)
   goto hiteof;
  byteoffset = FATOFS(pmp, cn);
  fatblock(pmp, byteoffset, &bn, &bsize, &bo);
  if (bn != bp_bn) {
   if (bp)
    brelse(bp);
   error = bread(pmp->pm_devvp, bn, bsize, NOCRED, &bp);
   if (error) {
    brelse(bp);
    return (error);
   }
   bp_bn = bn;
  }
  prevcn = cn;
  if (bo >= bsize) {
   if (bp)
    brelse(bp);
   return (EIO);
  }
  if (FAT32(pmp))
   cn = getulong(bp->b_data + bo);
  else
   cn = getushort(bp->b_data + bo);
  if (FAT12(pmp) && (prevcn & 1))
   cn >>= 4;
  cn &= pmp->pm_fatmask;







  if ((cn | ~pmp->pm_fatmask) >= CLUST_RSRVD)
   cn |= ~pmp->pm_fatmask;
 }

 if (!MSDOSFSEOF(pmp, cn)) {
  if (bp)
   brelse(bp);
  if (bnp)
   *bnp = cntobn(pmp, cn);
  if (cnp)
   *cnp = cn;
  fc_setcache(dep, FC_LASTMAP, i, cn);
  return (0);
 }

hiteof:;
 if (cnp)
  *cnp = i;
 if (bp)
  brelse(bp);

 fc_setcache(dep, FC_LASTFC, i - 1, prevcn);
 return (E2BIG);
}
