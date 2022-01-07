
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_long ;
struct msdosfsmount {scalar_t__ pm_maxcluster; int pm_fatmask; int pm_devvp; } ;
struct buf {scalar_t__ b_data; } ;


 scalar_t__ CLUST_FIRST ;
 scalar_t__ CLUST_RSRVD ;



 scalar_t__ FATOFS (struct msdosfsmount*,scalar_t__) ;
 int MSDOSFSFREE ;
 int NOCRED ;
 int bread (int ,scalar_t__,scalar_t__,int ,struct buf**) ;
 int brelse (struct buf*) ;
 int fatblock (struct msdosfsmount*,scalar_t__,scalar_t__*,scalar_t__*,scalar_t__*) ;
 scalar_t__ getulong (scalar_t__) ;
 scalar_t__ getushort (scalar_t__) ;
 int putulong (scalar_t__,int) ;
 int putushort (scalar_t__,int) ;
 int updatefats (struct msdosfsmount*,struct buf*,scalar_t__) ;
 int usemap_free (struct msdosfsmount*,scalar_t__) ;

int
freeclusterchain(struct msdosfsmount *pmp, u_long cluster)
{
 int error;
 struct buf *bp = ((void*)0);
 u_long bn, bo, bsize, byteoffset;
 u_long readcn, lbn = -1;

 while (cluster >= CLUST_FIRST && cluster <= pmp->pm_maxcluster) {
  byteoffset = FATOFS(pmp, cluster);
  fatblock(pmp, byteoffset, &bn, &bsize, &bo);
  if (lbn != bn) {
   if (bp)
    updatefats(pmp, bp, lbn);
   error = bread(pmp->pm_devvp, bn, bsize, NOCRED, &bp);
   if (error) {
    brelse(bp);
    return (error);
   }
   lbn = bn;
  }
  usemap_free(pmp, cluster);
  switch (pmp->pm_fatmask) {
  case 130:
   readcn = getushort(bp->b_data + bo);
   if (cluster & 1) {
    cluster = readcn >> 4;
    readcn &= 0x000f;
    readcn |= MSDOSFSFREE << 4;
   } else {
    cluster = readcn;
    readcn &= 0xf000;
    readcn |= MSDOSFSFREE & 0xfff;
   }
   putushort(bp->b_data + bo, readcn);
   break;
  case 129:
   cluster = getushort(bp->b_data + bo);
   putushort(bp->b_data + bo, MSDOSFSFREE);
   break;
  case 128:
   cluster = getulong(bp->b_data + bo);
   putulong(bp->b_data + bo,
     (MSDOSFSFREE & 128) | (cluster & ~128));
   break;
  }
  cluster &= pmp->pm_fatmask;
  if ((cluster | ~pmp->pm_fatmask) >= CLUST_RSRVD)
   cluster |= pmp->pm_fatmask;
 }
 if (bp)
  updatefats(pmp, bp, bn);
 return (0);
}
