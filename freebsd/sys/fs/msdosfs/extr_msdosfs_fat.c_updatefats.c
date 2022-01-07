
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ u_long ;
struct msdosfsmount {int pm_flags; scalar_t__ pm_fatblk; int pm_FATs; scalar_t__ pm_FATsecs; TYPE_1__* pm_mountp; int pm_devvp; } ;
struct buf {scalar_t__ b_data; int b_bcount; } ;
struct TYPE_2__ {int mnt_flag; } ;


 scalar_t__ FAT12 (struct msdosfsmount*) ;
 scalar_t__ FAT16 (struct msdosfsmount*) ;
 int MNT_SYNCHRONOUS ;
 int MSDOSFS_FATMIRROR ;
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
   if (pmp->pm_mountp->mnt_flag & MNT_SYNCHRONOUS)
    bwrite(bpn);
   else
    bdwrite(bpn);
  }
 }




 if (pmp->pm_mountp->mnt_flag & MNT_SYNCHRONOUS)
  bwrite(bp);
 else
  bdwrite(bp);
}
