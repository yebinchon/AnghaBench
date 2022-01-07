
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_long ;
struct msdosfsmount {int pm_flags; int pm_devvp; } ;
struct buf {int b_flags; int * b_data; } ;


 int B_INVALONERR ;
 int EROFS ;
 scalar_t__ FAT12 (struct msdosfsmount*) ;
 scalar_t__ FAT32 (struct msdosfsmount*) ;
 size_t FATOFS (struct msdosfsmount*,int) ;
 int MSDOSFSMNT_RONLY ;
 int NOCRED ;
 int bread (int ,size_t,size_t,int ,struct buf**) ;
 int bwrite (struct buf*) ;
 int fatblock (struct msdosfsmount*,size_t,size_t*,size_t*,size_t*) ;
 size_t getulong (int *) ;
 size_t getushort (int *) ;
 int putulong (int *,size_t) ;
 int putushort (int *,size_t) ;

int
markvoldirty_upgrade(struct msdosfsmount *pmp, bool dirty, bool rw_upgrade)
{
 struct buf *bp;
 u_long bn, bo, bsize, byteoffset, fatval;
 int error;





 if (FAT12(pmp))
  return (0);





 if ((pmp->pm_flags & MSDOSFSMNT_RONLY) != 0 && !rw_upgrade)
  return (EROFS);





 byteoffset = FATOFS(pmp, 1);
 fatblock(pmp, byteoffset, &bn, &bsize, &bo);
 error = bread(pmp->pm_devvp, bn, bsize, NOCRED, &bp);
 if (error)
  return (error);






 if (FAT32(pmp)) {

  fatval = getulong(&bp->b_data[bo]);
  if (dirty)
   fatval &= 0xF7FFFFFF;
  else
   fatval |= 0x08000000;
  putulong(&bp->b_data[bo], fatval);
 } else {

  fatval = getushort(&bp->b_data[bo]);
  if (dirty)
   fatval &= 0x7FFF;
  else
   fatval |= 0x8000;
  putushort(&bp->b_data[bo], fatval);
 }
 bp->b_flags |= B_INVALONERR;


 return (bwrite(bp));
}
