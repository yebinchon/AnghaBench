
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct msdosfsmount {int pm_fatblocksize; int pm_fatblocksec; int pm_FATsecs; int pm_curfat; scalar_t__ pm_fatblk; } ;


 int DEV_BSIZE ;
 int min (int,int) ;

__attribute__((used)) static void
fatblock(struct msdosfsmount *pmp, u_long ofs, u_long *bnp, u_long *sizep,
    u_long *bop)
{
 u_long bn, size;

 bn = ofs / pmp->pm_fatblocksize * pmp->pm_fatblocksec;
 size = min(pmp->pm_fatblocksec, pmp->pm_FATsecs - bn)
     * DEV_BSIZE;
 bn += pmp->pm_fatblk + pmp->pm_curfat * pmp->pm_FATsecs;

 if (bnp)
  *bnp = bn;
 if (sizep)
  *sizep = size;
 if (bop)
  *bop = ofs % pmp->pm_fatblocksize;
}
