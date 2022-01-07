
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ u_long ;
struct msdosfsmount {int pm_flags; scalar_t__ pm_fatblk; int pm_FATs; scalar_t__ pm_FATsecs; int pm_devvp; } ;
struct buf {scalar_t__ b_data; int b_bcount; } ;


 scalar_t__ FAT12 (struct msdosfsmount*) ;
 scalar_t__ FAT16 (struct msdosfsmount*) ;
 int MSDOSFS_FATMIRROR ;
 scalar_t__ SYNCHRONOUS_WRITES (struct msdosfsmount*) ;
 int bdwrite (struct buf*) ;
 int bwrite (struct buf*) ;
 struct buf* getblk (int ,scalar_t__,int ,int ,int ,int ) ;
 int memcpy (scalar_t__,scalar_t__,int ) ;
 int printf (char*,struct msdosfsmount*,struct buf*,scalar_t__) ;

__attribute__((used)) static void
updatefats(struct msdosfsmount *pmp, struct buf *bp, u_long fatbn)
{
 struct buf *bpn;
 int cleanfat, i;





 if (pmp->pm_flags & MSDOSFS_FATMIRROR) {
  if (fatbn != pmp->pm_fatblk || FAT12(pmp))
   cleanfat = 0;
  else if (FAT16(pmp))
   cleanfat = 16;
  else
   cleanfat = 32;
  for (i = 1; i < pmp->pm_FATs; i++) {
   fatbn += pmp->pm_FATsecs;

   bpn = getblk(pmp->pm_devvp, fatbn, bp->b_bcount,
       0, 0, 0);
   memcpy(bpn->b_data, bp->b_data, bp->b_bcount);

   if (cleanfat == 16)
    ((uint8_t *)bpn->b_data)[3] |= 0x80;
   else if (cleanfat == 32)
    ((uint8_t *)bpn->b_data)[7] |= 0x08;
   if (SYNCHRONOUS_WRITES(pmp))
    bwrite(bpn);
   else
    bdwrite(bpn);
  }
 }




 if (SYNCHRONOUS_WRITES(pmp))
  bwrite(bp);
 else
  bdwrite(bp);
}
