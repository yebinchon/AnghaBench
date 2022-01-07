
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct msdosfsmount {int pm_maxcluster; int pm_fatmask; int pm_fmod; int pm_devvp; } ;
struct buf {int b_data; } ;


 int CLUST_FIRST ;
 int EINVAL ;



 int FATOFS (struct msdosfsmount*,int) ;
 int NOCRED ;
 int bread (int ,int,int,int ,struct buf**) ;
 int brelse (struct buf*) ;
 int fatblock (struct msdosfsmount*,int,int*,int*,int*) ;
 int getulong (int) ;
 int getushort (int) ;
 int printf (char*,struct msdosfsmount*,int,int,int) ;
 int putulong (int,int) ;
 int putushort (int,int) ;
 int updatefats (struct msdosfsmount*,struct buf*,int) ;

__attribute__((used)) static int
fatchain(struct msdosfsmount *pmp, u_long start, u_long count, u_long fillwith)
{
 int error;
 u_long bn, bo, bsize, byteoffset, readcn, newc;
 struct buf *bp;
 if (start < CLUST_FIRST || start + count - 1 > pmp->pm_maxcluster)
  return (EINVAL);

 while (count > 0) {
  byteoffset = FATOFS(pmp, start);
  fatblock(pmp, byteoffset, &bn, &bsize, &bo);
  error = bread(pmp->pm_devvp, bn, bsize, NOCRED, &bp);
  if (error) {
   brelse(bp);
   return (error);
  }
  while (count > 0) {
   start++;
   newc = --count > 0 ? start : fillwith;
   switch (pmp->pm_fatmask) {
   case 130:
    readcn = getushort(bp->b_data + bo);
    if (start & 1) {
     readcn &= 0xf000;
     readcn |= newc & 0xfff;
    } else {
     readcn &= 0x000f;
     readcn |= newc << 4;
    }
    putushort(bp->b_data + bo, readcn);
    bo++;
    if (!(start & 1))
     bo++;
    break;
   case 129:
    putushort(bp->b_data + bo, newc);
    bo += 2;
    break;
   case 128:
    readcn = getulong(bp->b_data + bo);
    readcn &= ~pmp->pm_fatmask;
    readcn |= newc & pmp->pm_fatmask;
    putulong(bp->b_data + bo, readcn);
    bo += 4;
    break;
   }
   if (bo >= bsize)
    break;
  }
  updatefats(pmp, bp, bn);
 }
 pmp->pm_fmod = 1;
 return (0);
}
