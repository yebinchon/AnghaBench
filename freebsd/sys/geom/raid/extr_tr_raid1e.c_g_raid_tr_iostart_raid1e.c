
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_raid_volume {scalar_t__ v_state; int v_name; } ;
struct g_raid_tr_raid1e_object {scalar_t__ trso_fair_io; scalar_t__ trso_recover_slabs; int * trso_failed_sd; } ;
struct g_raid_tr_object {struct g_raid_volume* tro_volume; } ;
struct bio {int bio_cflags; int bio_cmd; } ;






 int EIO ;
 int G_RAID_BIO_FLAG_SPECIAL ;
 scalar_t__ G_RAID_VOLUME_S_DEGRADED ;
 scalar_t__ G_RAID_VOLUME_S_OPTIMAL ;
 scalar_t__ G_RAID_VOLUME_S_SUBOPTIMAL ;
 int KASSERT (int,char*) ;
 scalar_t__ g_raid1e_rebuild_fair_io ;
 int g_raid_iodone (struct bio*,int ) ;
 int g_raid_tr_flush_common (struct g_raid_tr_object*,struct bio*) ;
 int g_raid_tr_iostart_raid1e_read (struct g_raid_tr_object*,struct bio*) ;
 int g_raid_tr_iostart_raid1e_write (struct g_raid_tr_object*,struct bio*) ;
 int g_raid_tr_raid1e_rebuild_some (struct g_raid_tr_object*) ;

__attribute__((used)) static void
g_raid_tr_iostart_raid1e(struct g_raid_tr_object *tr, struct bio *bp)
{
 struct g_raid_volume *vol;
 struct g_raid_tr_raid1e_object *trs;

 vol = tr->tro_volume;
 trs = (struct g_raid_tr_raid1e_object *)tr;
 if (vol->v_state != G_RAID_VOLUME_S_OPTIMAL &&
     vol->v_state != G_RAID_VOLUME_S_SUBOPTIMAL &&
     vol->v_state != G_RAID_VOLUME_S_DEGRADED) {
  g_raid_iodone(bp, EIO);
  return;
 }






 if (trs->trso_failed_sd != ((void*)0) &&
     !(bp->bio_cflags & G_RAID_BIO_FLAG_SPECIAL)) {

  trs->trso_recover_slabs = 0;
  if (--trs->trso_fair_io <= 0) {
   trs->trso_fair_io = g_raid1e_rebuild_fair_io;
   g_raid_tr_raid1e_rebuild_some(tr);
  }
 }
 switch (bp->bio_cmd) {
 case 129:
  g_raid_tr_iostart_raid1e_read(tr, bp);
  break;
 case 128:
 case 131:
  g_raid_tr_iostart_raid1e_write(tr, bp);
  break;
 case 130:
  g_raid_tr_flush_common(tr, bp);
  break;
 default:
  KASSERT(1 == 0, ("Invalid command here: %u (volume=%s)",
      bp->bio_cmd, vol->v_name));
  break;
 }
}
