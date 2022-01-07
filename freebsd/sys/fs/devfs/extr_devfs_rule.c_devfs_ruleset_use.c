
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devfs_ruleset {int ds_refcount; } ;
struct devfs_mount {scalar_t__ dm_ruleset; } ;
typedef scalar_t__ devfs_rsnum ;


 struct devfs_ruleset* devfs_ruleset_bynum (scalar_t__) ;
 struct devfs_ruleset* devfs_ruleset_create (scalar_t__) ;
 int devfs_ruleset_reap (struct devfs_ruleset*) ;

__attribute__((used)) static int
devfs_ruleset_use(devfs_rsnum rsnum, struct devfs_mount *dm)
{
 struct devfs_ruleset *cds, *ds;

 if (dm->dm_ruleset != 0) {
  cds = devfs_ruleset_bynum(dm->dm_ruleset);
  --cds->ds_refcount;
  devfs_ruleset_reap(cds);
 }

 if (rsnum == 0) {
  dm->dm_ruleset = 0;
  return (0);
 }

 ds = devfs_ruleset_bynum(rsnum);
 if (ds == ((void*)0))
  ds = devfs_ruleset_create(rsnum);

 ++ds->ds_refcount;
 dm->dm_ruleset = rsnum;

 return (0);
}
