
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_raid_volume {int v_disks_count; int v_strip_size; } ;
struct g_raid_tr_raid1e_object {scalar_t__ trso_type; int trso_recover_slabs; int trso_fair_io; } ;
struct g_raid_tr_object {struct g_raid_volume* tro_volume; } ;


 int N ;
 scalar_t__ TR_RAID1E_REBUILD ;
 int g_raid1e_rebuild_cluster_idle ;
 int g_raid1e_rebuild_fair_io ;
 int g_raid1e_rebuild_slab ;
 int g_raid_tr_raid1e_rebuild_some (struct g_raid_tr_object*) ;

__attribute__((used)) static int
g_raid_tr_idle_raid1e(struct g_raid_tr_object *tr)
{
 struct g_raid_tr_raid1e_object *trs;
 struct g_raid_volume *vol;

 vol = tr->tro_volume;
 trs = (struct g_raid_tr_raid1e_object *)tr;
 trs->trso_fair_io = g_raid1e_rebuild_fair_io;
 trs->trso_recover_slabs = g_raid1e_rebuild_cluster_idle;

 if ((vol->v_disks_count % N) != 0 &&
     vol->v_strip_size < g_raid1e_rebuild_slab) {
  trs->trso_recover_slabs *= g_raid1e_rebuild_slab;
  trs->trso_recover_slabs /= vol->v_strip_size;
 }
 if (trs->trso_type == TR_RAID1E_REBUILD)
  g_raid_tr_raid1e_rebuild_some(tr);
 return (0);
}
