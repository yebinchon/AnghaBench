
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devfs_mount {int dm_ruleset; } ;
typedef int devfs_rid ;


 int mkrid (int ,int ) ;
 int rid2rn (int ) ;
 scalar_t__ rid2rsn (int ) ;

__attribute__((used)) static devfs_rid
devfs_rid_input(devfs_rid rid, struct devfs_mount *dm)
{

 if (rid2rsn(rid) == 0)
  return (mkrid(dm->dm_ruleset, rid2rn(rid)));
 else
  return (rid);
}
