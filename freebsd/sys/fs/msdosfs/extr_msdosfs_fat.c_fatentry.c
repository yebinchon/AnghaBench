
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct msdosfsmount {int pm_maxcluster; int pm_fatmask; int pm_fmod; int pm_devvp; } ;
struct buf {int b_data; } ;


 int CLUST_FIRST ;
 int CLUST_RSRVD ;
 int EINVAL ;
 int FAT12 (struct msdosfsmount*) ;


 scalar_t__ FAT32 (struct msdosfsmount*) ;

 int FATOFS (struct msdosfsmount*,int) ;
 int FAT_GET ;
 int FAT_SET ;
 int NOCRED ;
 int bread (int ,int,int,int ,struct buf**) ;
 int brelse (struct buf*) ;
 int fatblock (struct msdosfsmount*,int,int*,int*,int*) ;
 int getulong (int) ;
 int getushort (int) ;
 int printf (char*,...) ;
 int putulong (int,int) ;
 int putushort (int,int) ;
 int updatefats (struct msdosfsmount*,struct buf*,int) ;

int
fatentry(int function, struct msdosfsmount *pmp, u_long cn, u_long *oldcontents,
    u_long newcontents)
{
 int error;
 u_long readcn;
 u_long bn, bo, bsize, byteoffset;
 struct buf *bp;
 if (cn < CLUST_FIRST || cn > pmp->pm_maxcluster)
  return (EINVAL);

 byteoffset = FATOFS(pmp, cn);
 fatblock(pmp, byteoffset, &bn, &bsize, &bo);
 error = bread(pmp->pm_devvp, bn, bsize, NOCRED, &bp);
 if (error) {
  return (error);
 }

 if (function & FAT_GET) {
  if (FAT32(pmp))
   readcn = getulong(bp->b_data + bo);
  else
   readcn = getushort(bp->b_data + bo);
  if (FAT12(pmp) & (cn & 1))
   readcn >>= 4;
  readcn &= pmp->pm_fatmask;

  if ((readcn | ~pmp->pm_fatmask) >= CLUST_RSRVD)
   readcn |= ~pmp->pm_fatmask;
  *oldcontents = readcn;
 }
 if (function & FAT_SET) {
  switch (pmp->pm_fatmask) {
  case 130:
   readcn = getushort(bp->b_data + bo);
   if (cn & 1) {
    readcn &= 0x000f;
    readcn |= newcontents << 4;
   } else {
    readcn &= 0xf000;
    readcn |= newcontents & 0xfff;
   }
   putushort(bp->b_data + bo, readcn);
   break;
  case 129:
   putushort(bp->b_data + bo, newcontents);
   break;
  case 128:




   readcn = getulong(bp->b_data + bo);
   readcn &= ~128;
   readcn |= newcontents & 128;
   putulong(bp->b_data + bo, readcn);
   break;
  }
  updatefats(pmp, bp, bn);
  bp = ((void*)0);
  pmp->pm_fmod = 1;
 }
 if (bp)
  brelse(bp);
 return (0);
}
