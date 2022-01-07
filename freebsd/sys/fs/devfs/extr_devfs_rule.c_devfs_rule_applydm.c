
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devfs_mount {int dm_rootdir; } ;
struct devfs_krule {int dummy; } ;


 int devfs_rule_applyde_recursive (struct devfs_krule*,struct devfs_mount*,int ) ;

__attribute__((used)) static void
devfs_rule_applydm(struct devfs_krule *dk, struct devfs_mount *dm)
{

 devfs_rule_applyde_recursive(dk, dm, dm->dm_rootdir);
}
