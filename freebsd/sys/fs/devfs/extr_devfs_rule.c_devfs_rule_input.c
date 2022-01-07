
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devfs_rule {scalar_t__ dr_magic; int dr_id; } ;
struct devfs_mount {int dummy; } ;


 scalar_t__ DEVFS_MAGIC ;
 int ERPCMISMATCH ;
 int devfs_rid_input (int ,struct devfs_mount*) ;

__attribute__((used)) static int
devfs_rule_input(struct devfs_rule *dr, struct devfs_mount *dm)
{

 if (dr->dr_magic != DEVFS_MAGIC)
  return (ERPCMISMATCH);
 dr->dr_id = devfs_rid_input(dr->dr_id, dm);
 return (0);
}
