
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_raid_tr_raid1_object {scalar_t__ trso_type; int trso_recover_slabs; int trso_fair_io; } ;
struct g_raid_tr_object {int dummy; } ;


 scalar_t__ TR_RAID1_REBUILD ;
 int g_raid1_rebuild_cluster_idle ;
 int g_raid1_rebuild_fair_io ;
 int g_raid_tr_raid1_rebuild_some (struct g_raid_tr_object*) ;

__attribute__((used)) static int
g_raid_tr_idle_raid1(struct g_raid_tr_object *tr)
{
 struct g_raid_tr_raid1_object *trs;

 trs = (struct g_raid_tr_raid1_object *)tr;
 trs->trso_fair_io = g_raid1_rebuild_fair_io;
 trs->trso_recover_slabs = g_raid1_rebuild_cluster_idle;
 if (trs->trso_type == TR_RAID1_REBUILD)
  g_raid_tr_raid1_rebuild_some(tr);
 return (0);
}
