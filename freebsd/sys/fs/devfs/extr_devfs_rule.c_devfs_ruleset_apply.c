
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devfs_ruleset {int dummy; } ;
struct devfs_mount {scalar_t__ dm_ruleset; int dm_lock; } ;


 int SX_XLOCKED ;
 int devfs_ruleset_applydm (struct devfs_ruleset*,struct devfs_mount*) ;
 struct devfs_ruleset* devfs_ruleset_bynum (scalar_t__) ;
 int sx_assert (int *,int ) ;
 int sx_rules ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;

void
devfs_ruleset_apply(struct devfs_mount *dm)
{
 struct devfs_ruleset *ds;

 sx_assert(&dm->dm_lock, SX_XLOCKED);

 sx_xlock(&sx_rules);
 if (dm->dm_ruleset == 0) {
  sx_xunlock(&sx_rules);
  return;
 }
 ds = devfs_ruleset_bynum(dm->dm_ruleset);
 if (ds != ((void*)0))
  devfs_ruleset_applydm(ds, dm);
 sx_xunlock(&sx_rules);
}
