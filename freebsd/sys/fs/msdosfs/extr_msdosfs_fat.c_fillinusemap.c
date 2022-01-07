
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_long ;
struct TYPE_2__ {int bpbMedia; } ;
struct msdosfsmount {size_t pm_maxcluster; unsigned int* pm_inusemap; size_t pm_fatblocksize; size_t pm_fatmask; TYPE_1__ pm_bpb; int pm_devvp; scalar_t__ pm_freeclustercount; } ;
struct buf {scalar_t__ b_data; } ;


 size_t CLUST_FREE ;
 int EINVAL ;
 scalar_t__ FAT12 (struct msdosfsmount*) ;
 scalar_t__ FAT32 (struct msdosfsmount*) ;
 size_t FATOFS (struct msdosfsmount*,size_t) ;
 unsigned int FULL_RUN ;
 int MSDOSFS_ASSERT_MP_LOCKED (struct msdosfsmount*) ;
 int NOCRED ;
 size_t N_INUSEBITS ;
 int bread (int ,size_t,size_t,int ,struct buf**) ;
 int brelse (struct buf*) ;
 int fatblock (struct msdosfsmount*,size_t,size_t*,size_t*,int *) ;
 size_t getulong (scalar_t__) ;
 size_t getushort (scalar_t__) ;
 int printf (char*) ;
 int usemap_free (struct msdosfsmount*,size_t) ;

int
fillinusemap(struct msdosfsmount *pmp)
{
 struct buf *bp;
 u_long bn, bo, bsize, byteoffset, cn, readcn;
 int error;

 MSDOSFS_ASSERT_MP_LOCKED(pmp);
 bp = ((void*)0);





 for (cn = 0; cn < (pmp->pm_maxcluster + N_INUSEBITS) / N_INUSEBITS; cn++)
  pmp->pm_inusemap[cn] = FULL_RUN;






 pmp->pm_freeclustercount = 0;
 for (cn = 0; cn <= pmp->pm_maxcluster; cn++) {
  byteoffset = FATOFS(pmp, cn);
  bo = byteoffset % pmp->pm_fatblocksize;
  if (bo == 0) {

   if (bp != ((void*)0))
    brelse(bp);
   fatblock(pmp, byteoffset, &bn, &bsize, ((void*)0));
   error = bread(pmp->pm_devvp, bn, bsize, NOCRED, &bp);
   if (error != 0)
    return (error);
  }
  if (FAT32(pmp))
   readcn = getulong(bp->b_data + bo);
  else
   readcn = getushort(bp->b_data + bo);
  if (FAT12(pmp) && (cn & 1))
   readcn >>= 4;
  readcn &= pmp->pm_fatmask;





  if (cn == 0 && readcn != ((pmp->pm_fatmask & 0xffffff00) |
      pmp->pm_bpb.bpbMedia)) {




   brelse(bp);
   return (EINVAL);
  } else if (readcn == CLUST_FREE)
   usemap_free(pmp, cn);
 }
 if (bp != ((void*)0))
  brelse(bp);

 for (cn = pmp->pm_maxcluster + 1; cn < (pmp->pm_maxcluster +
     N_INUSEBITS) / N_INUSEBITS; cn++)
  pmp->pm_inusemap[cn / N_INUSEBITS] |= 1U << (cn % N_INUSEBITS);

 return (0);
}
