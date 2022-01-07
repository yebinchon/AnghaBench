
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devfs_mount {int dm_rootdir; int dm_lock; } ;


 int SX_XLOCKED ;
 scalar_t__ devfs_populate_loop (struct devfs_mount*,int) ;
 int devfs_purge (struct devfs_mount*,int ) ;
 int sx_assert (int *,int ) ;

void
devfs_cleanup(struct devfs_mount *dm)
{

 sx_assert(&dm->dm_lock, SX_XLOCKED);
 while (devfs_populate_loop(dm, 1))
  continue;
 devfs_purge(dm, dm->dm_rootdir);
}
