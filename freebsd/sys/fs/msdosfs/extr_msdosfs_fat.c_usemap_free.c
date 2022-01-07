
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_long ;
struct msdosfsmount {size_t pm_maxcluster; int pm_flags; unsigned int* pm_inusemap; int pm_freeclustercount; } ;


 int KASSERT (int,char*) ;
 int MSDOSFSMNT_RONLY ;
 int MSDOSFS_ASSERT_MP_LOCKED (struct msdosfsmount*) ;
 int MSDOSFS_FSIMOD ;
 size_t N_INUSEBITS ;

__attribute__((used)) static __inline void
usemap_free(struct msdosfsmount *pmp, u_long cn)
{

 MSDOSFS_ASSERT_MP_LOCKED(pmp);

 KASSERT(cn <= pmp->pm_maxcluster, ("cn too large %lu %lu", cn,
     pmp->pm_maxcluster));
 KASSERT((pmp->pm_flags & MSDOSFSMNT_RONLY) == 0,
     ("usemap_free on ro msdosfs mount"));
 pmp->pm_freeclustercount++;
 pmp->pm_flags |= MSDOSFS_FSIMOD;
 KASSERT((pmp->pm_inusemap[cn / N_INUSEBITS] &
     (1U << (cn % N_INUSEBITS))) != 0,
     ("Freeing unused sector %ld %ld %x", cn, cn % N_INUSEBITS,
     (unsigned)pmp->pm_inusemap[cn / N_INUSEBITS]));
 pmp->pm_inusemap[cn / N_INUSEBITS] &= ~(1U << (cn % N_INUSEBITS));
}
