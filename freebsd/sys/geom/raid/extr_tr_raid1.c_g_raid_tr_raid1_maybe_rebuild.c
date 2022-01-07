
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_raid_volume {int dummy; } ;
struct g_raid_tr_raid1_object {int trso_type; struct g_raid_subdisk* trso_failed_sd; scalar_t__ trso_stopping; } ;
struct g_raid_tr_object {struct g_raid_volume* tro_volume; } ;
struct g_raid_subdisk {int dummy; } ;


 int G_RAID_SUBDISK_S_ACTIVE ;
 int G_RAID_SUBDISK_S_NEW ;
 int G_RAID_SUBDISK_S_REBUILD ;
 int G_RAID_SUBDISK_S_RESYNC ;
 int G_RAID_SUBDISK_S_STALE ;
 int G_RAID_SUBDISK_S_UNINITIALIZED ;



 int g_raid_nsubdisks (struct g_raid_volume*,int ) ;
 int g_raid_tr_raid1_rebuild_abort (struct g_raid_tr_object*) ;
 int g_raid_tr_raid1_rebuild_start (struct g_raid_tr_object*) ;

__attribute__((used)) static void
g_raid_tr_raid1_maybe_rebuild(struct g_raid_tr_object *tr,
    struct g_raid_subdisk *sd)
{
 struct g_raid_volume *vol;
 struct g_raid_tr_raid1_object *trs;
 int na, nr;







 vol = tr->tro_volume;
 trs = (struct g_raid_tr_raid1_object *)tr;
 if (trs->trso_stopping)
  return;
 na = g_raid_nsubdisks(vol, G_RAID_SUBDISK_S_ACTIVE);
 nr = g_raid_nsubdisks(vol, G_RAID_SUBDISK_S_REBUILD) +
     g_raid_nsubdisks(vol, G_RAID_SUBDISK_S_RESYNC);
 switch(trs->trso_type) {
 case 130:
  if (na == 0)
   return;
  if (nr == 0) {
   nr = g_raid_nsubdisks(vol, G_RAID_SUBDISK_S_NEW) +
       g_raid_nsubdisks(vol, G_RAID_SUBDISK_S_STALE) +
       g_raid_nsubdisks(vol, G_RAID_SUBDISK_S_UNINITIALIZED);
   if (nr == 0)
    return;
  }
  g_raid_tr_raid1_rebuild_start(tr);
  break;
 case 129:
  if (na == 0 || nr == 0 || trs->trso_failed_sd == sd)
   g_raid_tr_raid1_rebuild_abort(tr);
  break;
 case 128:
  break;
 }
}
