
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devfs_mount {int dm_lock; } ;
typedef int devfs_rsnum ;


 int SX_XLOCKED ;
 int devfs_ruleset_use (int ,struct devfs_mount*) ;
 int sx_assert (int *,int ) ;
 int sx_rules ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;

void
devfs_ruleset_set(devfs_rsnum rsnum, struct devfs_mount *dm)
{

 sx_assert(&dm->dm_lock, SX_XLOCKED);

 sx_xlock(&sx_rules);
 devfs_ruleset_use(rsnum, dm);
 sx_xunlock(&sx_rules);
}
