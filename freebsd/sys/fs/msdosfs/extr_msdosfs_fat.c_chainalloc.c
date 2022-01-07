
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_long ;
struct msdosfsmount {int pm_flags; scalar_t__ pm_nxtfree; scalar_t__ pm_maxcluster; } ;


 scalar_t__ CLUST_FIRST ;
 int KASSERT (int,char*) ;
 int MSDOSFSMNT_RONLY ;
 int MSDOSFS_ASSERT_MP_LOCKED (struct msdosfsmount*) ;
 int MSDOSFS_FSIMOD ;
 int fatchain (struct msdosfsmount*,scalar_t__,scalar_t__,scalar_t__) ;
 int printf (char*,scalar_t__,scalar_t__) ;
 int usemap_alloc (struct msdosfsmount*,int ) ;
 int usemap_free (struct msdosfsmount*,int ) ;

__attribute__((used)) static int
chainalloc(struct msdosfsmount *pmp, u_long start, u_long count,
    u_long fillwith, u_long *retcluster, u_long *got)
{
 int error;
 u_long cl, n;

 MSDOSFS_ASSERT_MP_LOCKED(pmp);
 KASSERT((pmp->pm_flags & MSDOSFSMNT_RONLY) == 0,
     ("chainalloc on ro msdosfs mount"));

 for (cl = start, n = count; n-- > 0;)
  usemap_alloc(pmp, cl++);
 pmp->pm_nxtfree = start + count;
 if (pmp->pm_nxtfree > pmp->pm_maxcluster)
  pmp->pm_nxtfree = CLUST_FIRST;
 pmp->pm_flags |= MSDOSFS_FSIMOD;
 error = fatchain(pmp, start, count, fillwith);
 if (error != 0) {
  for (cl = start, n = count; n-- > 0;)
   usemap_free(pmp, cl++);
  return (error);
 }




 if (retcluster)
  *retcluster = start;
 if (got)
  *got = count;
 return (0);
}
