
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devfs_ruleset {int dummy; } ;
struct devfs_mount {scalar_t__ dm_ruleset; int dm_lock; } ;
struct devfs_dirent {int dummy; } ;


 int KASSERT (int ,char*) ;
 int SX_XLOCKED ;
 int devfs_rule_depth ;
 int devfs_ruleset_applyde (struct devfs_ruleset*,struct devfs_mount*,struct devfs_dirent*,int ) ;
 struct devfs_ruleset* devfs_ruleset_bynum (scalar_t__) ;
 int sx_assert (int *,int ) ;
 int sx_rules ;
 int sx_slock (int *) ;
 int sx_sunlock (int *) ;

void
devfs_rules_apply(struct devfs_mount *dm, struct devfs_dirent *de)
{
 struct devfs_ruleset *ds;

 sx_assert(&dm->dm_lock, SX_XLOCKED);

 if (dm->dm_ruleset == 0)
  return;
 sx_slock(&sx_rules);
 ds = devfs_ruleset_bynum(dm->dm_ruleset);
 KASSERT(ds != ((void*)0), ("mount-point has NULL ruleset"));
 devfs_ruleset_applyde(ds, dm, de, devfs_rule_depth);
 sx_sunlock(&sx_rules);
}
