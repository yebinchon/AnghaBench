
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct devfs_ruleset {int ds_number; int ds_rules; } ;
struct TYPE_2__ {int dr_id; } ;
struct devfs_krule {TYPE_1__ dk_rule; } ;
typedef scalar_t__ devfs_rnum ;


 int ERANGE ;
 int KASSERT (int ,char*) ;
 struct devfs_krule* TAILQ_LAST (int *,int ) ;
 int * devfs_rule_byid (int ) ;
 int mkrid (int ,scalar_t__) ;
 scalar_t__ rid2rn (int ) ;
 int rulehead ;

__attribute__((used)) static int
devfs_rule_autonumber(struct devfs_ruleset *ds, devfs_rnum *rnump)
{
 struct devfs_krule *dk;


 dk = TAILQ_LAST(&ds->ds_rules, rulehead);
 if (dk == ((void*)0))
  *rnump = 100;
 else {
  *rnump = rid2rn(dk->dk_rule.dr_id) + 100;

  if (*rnump < rid2rn(dk->dk_rule.dr_id))
   return (ERANGE);
 }
 KASSERT(devfs_rule_byid(mkrid(ds->ds_number, *rnump)) == ((void*)0),
     ("autonumbering resulted in an already existing rule"));
 return (0);
}
