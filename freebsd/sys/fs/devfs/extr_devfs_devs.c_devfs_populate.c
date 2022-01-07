
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devfs_mount {unsigned int dm_generation; int dm_lock; } ;


 int SX_XLOCKED ;
 unsigned int devfs_generation ;
 scalar_t__ devfs_populate_loop (struct devfs_mount*,int ) ;
 int sx_assert (int *,int ) ;

void
devfs_populate(struct devfs_mount *dm)
{
 unsigned gen;

 sx_assert(&dm->dm_lock, SX_XLOCKED);
 gen = devfs_generation;
 if (dm->dm_generation == gen)
  return;
 while (devfs_populate_loop(dm, 0))
  continue;
 dm->dm_generation = gen;
}
