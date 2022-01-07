
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct devfs_ruleset {int ds_rules; int ds_refcount; } ;
struct TYPE_2__ {int dr_iacts; int dr_incset; } ;
struct devfs_krule {struct devfs_ruleset* dk_ruleset; TYPE_1__ dk_rule; } ;


 int DRA_INCSET ;
 int KASSERT (int ,char*) ;
 int M_DEVFSRULE ;
 int TAILQ_REMOVE (int *,struct devfs_krule*,int ) ;
 struct devfs_ruleset* devfs_ruleset_bynum (int ) ;
 int devfs_ruleset_reap (struct devfs_ruleset*) ;
 int dk_list ;
 int free (struct devfs_krule*,int ) ;

__attribute__((used)) static int
devfs_rule_delete(struct devfs_krule *dk)
{
 struct devfs_ruleset *ds;

 if (dk->dk_rule.dr_iacts & DRA_INCSET) {
  ds = devfs_ruleset_bynum(dk->dk_rule.dr_incset);
  KASSERT(ds != ((void*)0), ("DRA_INCSET but bad dr_incset"));
  --ds->ds_refcount;
  devfs_ruleset_reap(ds);
 }
 ds = dk->dk_ruleset;
 TAILQ_REMOVE(&ds->ds_rules, dk, dk_list);
 devfs_ruleset_reap(ds);
 free(dk, M_DEVFSRULE);
 return (0);
}
