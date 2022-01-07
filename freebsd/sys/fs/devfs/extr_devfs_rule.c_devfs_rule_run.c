
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devfs_ruleset {int dummy; } ;
struct devfs_rule {int dr_iacts; int dr_bacts; int dr_incset; int dr_mode; int dr_gid; int dr_uid; } ;
struct devfs_mount {int dummy; } ;
struct devfs_krule {struct devfs_rule dk_rule; } ;
struct devfs_dirent {int de_mode; int de_gid; int de_uid; int de_flags; } ;


 int DE_WHITEOUT ;
 int DRA_BACTS ;
 int DRA_GID ;
 int DRA_INCSET ;
 int DRA_MODE ;
 int DRA_UID ;
 int DRB_HIDE ;
 int DRB_UNHIDE ;
 int KASSERT (int ,char*) ;
 int devfs_rule_match (struct devfs_krule*,struct devfs_mount*,struct devfs_dirent*) ;
 int devfs_ruleset_applyde (struct devfs_ruleset*,struct devfs_mount*,struct devfs_dirent*,unsigned int) ;
 struct devfs_ruleset* devfs_ruleset_bynum (int ) ;

__attribute__((used)) static void
devfs_rule_run(struct devfs_krule *dk, struct devfs_mount *dm,
    struct devfs_dirent *de, unsigned depth)
{
 struct devfs_rule *dr = &dk->dk_rule;
 struct devfs_ruleset *ds;

 if (!devfs_rule_match(dk, dm, de))
  return;
 if (dr->dr_iacts & DRA_BACTS) {
  if (dr->dr_bacts & DRB_HIDE)
   de->de_flags |= DE_WHITEOUT;
  if (dr->dr_bacts & DRB_UNHIDE)
   de->de_flags &= ~DE_WHITEOUT;
 }
 if (dr->dr_iacts & DRA_UID)
  de->de_uid = dr->dr_uid;
 if (dr->dr_iacts & DRA_GID)
  de->de_gid = dr->dr_gid;
 if (dr->dr_iacts & DRA_MODE)
  de->de_mode = dr->dr_mode;
 if (dr->dr_iacts & DRA_INCSET) {
  if (depth > 0) {
   ds = devfs_ruleset_bynum(dk->dk_rule.dr_incset);
   KASSERT(ds != ((void*)0), ("DRA_INCSET but bad dr_incset"));
   devfs_ruleset_applyde(ds, dm, de, depth - 1);
  }
 }
}
