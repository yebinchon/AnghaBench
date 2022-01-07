
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_raid_volume {int v_disks_count; scalar_t__ v_strip_size; int * v_subdisks; struct g_raid_softc* v_softc; } ;
struct bio {int * bio_caller1; int bio_cflags; int bio_cmd; int bio_data; scalar_t__ bio_length; scalar_t__ bio_offset; } ;
struct g_raid_tr_raid1e_object {int trso_flags; scalar_t__ trso_lock_len; scalar_t__ trso_lock_pos; int trso_buffer; struct bio trso_bio; struct g_raid_subdisk* trso_failed_sd; } ;
struct g_raid_tr_object {struct g_raid_volume* tro_volume; } ;
struct g_raid_subdisk {scalar_t__ sd_rebuild_pos; scalar_t__ sd_size; int sd_volume; int sd_pos; } ;
struct g_raid_softc {int dummy; } ;
typedef scalar_t__ off_t ;


 int BIO_READ ;
 int G_RAID_BIO_FLAG_SYNC ;
 int G_RAID_DEBUG1 (int,struct g_raid_softc*,char*,scalar_t__,scalar_t__) ;
 int G_RAID_LOGREQ (int,struct bio*,char*) ;
 scalar_t__ MIN (scalar_t__,scalar_t__) ;
 int N ;
 int P2V (struct g_raid_volume*,int ,scalar_t__,scalar_t__*,int*) ;
 int TR_RAID1E_F_DOING_SOME ;
 int TR_RAID1E_F_LOCKED ;
 int V2P (struct g_raid_volume*,scalar_t__,int*,scalar_t__*,scalar_t__*) ;
 scalar_t__ g_raid1e_rebuild_slab ;
 int g_raid_lock_range (int ,scalar_t__,scalar_t__,int *,struct bio*) ;
 int g_raid_tr_raid1e_rebuild_abort (struct g_raid_tr_object*) ;
 int g_raid_tr_raid1e_rebuild_finish (struct g_raid_tr_object*) ;
 int g_raid_tr_raid1e_select_read_disk (struct g_raid_volume*,int,scalar_t__,scalar_t__,int ) ;
 int memset (struct bio*,int ,int) ;

__attribute__((used)) static void
g_raid_tr_raid1e_rebuild_some(struct g_raid_tr_object *tr)
{
 struct g_raid_tr_raid1e_object *trs;
 struct g_raid_softc *sc;
 struct g_raid_volume *vol;
 struct g_raid_subdisk *sd;
 struct bio *bp;
 off_t len, virtual, vend, offset, start;
 int disk, copy, best;

 trs = (struct g_raid_tr_raid1e_object *)tr;
 if (trs->trso_flags & TR_RAID1E_F_DOING_SOME)
  return;
 vol = tr->tro_volume;
 sc = vol->v_softc;
 sd = trs->trso_failed_sd;

 while (1) {
  if (sd->sd_rebuild_pos >= sd->sd_size) {
   g_raid_tr_raid1e_rebuild_finish(tr);
   return;
  }

  P2V(vol, sd->sd_pos, sd->sd_rebuild_pos, &virtual, &copy);

  V2P(vol, virtual, &disk, &offset, &start);

  len = MIN(g_raid1e_rebuild_slab,
      sd->sd_size - sd->sd_rebuild_pos);
  if ((vol->v_disks_count % N) != 0)
   len = MIN(len, vol->v_strip_size - start);

  best = g_raid_tr_raid1e_select_read_disk(vol, disk,
      offset + start, len, 0);
  if (best < 0) {

   g_raid_tr_raid1e_rebuild_abort(tr);
   return;
  } else if (best != copy) {

   break;
  }

  G_RAID_DEBUG1(3, sc, "Skipping rebuild for range %ju - %ju",
      sd->sd_rebuild_pos, sd->sd_rebuild_pos + len);
  sd->sd_rebuild_pos += len;
 }

 bp = &trs->trso_bio;
 memset(bp, 0, sizeof(*bp));
 bp->bio_offset = offset + start +
     ((disk + best >= vol->v_disks_count) ? vol->v_strip_size : 0);
 bp->bio_length = len;
 bp->bio_data = trs->trso_buffer;
 bp->bio_cmd = BIO_READ;
 bp->bio_cflags = G_RAID_BIO_FLAG_SYNC;
 bp->bio_caller1 = &vol->v_subdisks[(disk + best) % vol->v_disks_count];
 G_RAID_LOGREQ(3, bp, "Queueing rebuild read");




 if (start + len > vol->v_strip_size) {
  P2V(vol, sd->sd_pos, sd->sd_rebuild_pos + len, &vend, &copy);
  len = vend - virtual;
 }
 trs->trso_flags |= TR_RAID1E_F_DOING_SOME;
 trs->trso_flags |= TR_RAID1E_F_LOCKED;
 trs->trso_lock_pos = virtual;
 trs->trso_lock_len = len;

 g_raid_lock_range(sd->sd_volume, virtual, len, ((void*)0), bp);
}
