
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devfs_mount {int dm_lock; } ;


 int M_DEVFS ;
 int free (struct devfs_mount*,int ) ;
 int sx_destroy (int *) ;

void
devfs_unmount_final(struct devfs_mount *fmp)
{
 sx_destroy(&fmp->dm_lock);
 free(fmp, M_DEVFS);
}
