
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct msdosfsmount {int dummy; } ;


 int MSDOSFS_LOCK_MP (struct msdosfsmount*) ;
 int MSDOSFS_UNLOCK_MP (struct msdosfsmount*) ;
 int clusteralloc1 (struct msdosfsmount*,int ,int ,int ,int *,int *) ;

int
clusteralloc(struct msdosfsmount *pmp, u_long start, u_long count,
    u_long fillwith, u_long *retcluster, u_long *got)
{
 int error;

 MSDOSFS_LOCK_MP(pmp);
 error = clusteralloc1(pmp, start, count, fillwith, retcluster, got);
 MSDOSFS_UNLOCK_MP(pmp);
 return (error);
}
