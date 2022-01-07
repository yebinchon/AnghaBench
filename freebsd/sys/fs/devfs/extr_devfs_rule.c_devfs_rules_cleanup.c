
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devfs_ruleset {int ds_refcount; } ;
struct devfs_mount {scalar_t__ dm_ruleset; int dm_lock; } ;


 int SX_XLOCKED ;
 struct devfs_ruleset* devfs_ruleset_bynum (scalar_t__) ;
 int devfs_ruleset_reap (struct devfs_ruleset*) ;
 int sx_assert (int *,int ) ;

void
devfs_rules_cleanup(struct devfs_mount *dm)
{
 struct devfs_ruleset *ds;

 sx_assert(&dm->dm_lock, SX_XLOCKED);
 if (dm->dm_ruleset != 0) {
  ds = devfs_ruleset_bynum(dm->dm_ruleset);
  --ds->ds_refcount;
  devfs_ruleset_reap(ds);
 }
}
