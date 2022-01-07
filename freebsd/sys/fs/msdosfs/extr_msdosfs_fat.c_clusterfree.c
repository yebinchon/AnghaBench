
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct msdosfsmount {int dummy; } ;


 int FAT_GET_AND_SET ;
 int MSDOSFSFREE ;
 int MSDOSFS_LOCK_MP (struct msdosfsmount*) ;
 int MSDOSFS_UNLOCK_MP (struct msdosfsmount*) ;
 int fatentry (int ,struct msdosfsmount*,int ,int *,int ) ;
 int usemap_free (struct msdosfsmount*,int ) ;

int
clusterfree(struct msdosfsmount *pmp, u_long cluster, u_long *oldcnp)
{
 int error;
 u_long oldcn;

 error = fatentry(FAT_GET_AND_SET, pmp, cluster, &oldcn, MSDOSFSFREE);
 if (error)
  return (error);





 MSDOSFS_LOCK_MP(pmp);
 usemap_free(pmp, cluster);
 MSDOSFS_UNLOCK_MP(pmp);
 if (oldcnp)
  *oldcnp = oldcn;
 return (0);
}
