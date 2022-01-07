
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devfs_ruleset {scalar_t__ ds_number; scalar_t__ ds_refcount; int ds_rules; } ;


 int KASSERT (int,char*) ;
 int M_DEVFSRULE ;
 int TAILQ_EMPTY (int *) ;
 int TAILQ_REMOVE (int *,struct devfs_ruleset*,int ) ;
 int devfs_rulesets ;
 int ds_list ;
 int free (struct devfs_ruleset*,int ) ;

__attribute__((used)) static void
devfs_ruleset_reap(struct devfs_ruleset *ds)
{

 KASSERT(ds->ds_number != 0, ("reaping ruleset zero "));

 if (!TAILQ_EMPTY(&ds->ds_rules) || ds->ds_refcount != 0)
  return;

 TAILQ_REMOVE(&devfs_rulesets, ds, ds_list);
 free(ds, M_DEVFSRULE);
}
