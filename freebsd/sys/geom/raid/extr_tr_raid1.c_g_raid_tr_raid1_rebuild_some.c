
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio {int bio_length; scalar_t__ bio_offset; struct g_raid_subdisk* bio_caller1; int bio_cflags; int bio_cmd; int bio_data; } ;
struct g_raid_tr_raid1_object {int trso_flags; int trso_buffer; struct bio trso_bio; struct g_raid_subdisk* trso_failed_sd; } ;
struct g_raid_tr_object {int dummy; } ;
struct g_raid_subdisk {int sd_volume; scalar_t__ sd_rebuild_pos; scalar_t__ sd_size; } ;


 int BIO_READ ;
 int G_RAID_BIO_FLAG_SYNC ;
 int G_RAID_SUBDISK_S_ACTIVE ;
 int MIN (int ,scalar_t__) ;
 int TR_RAID1_F_DOING_SOME ;
 int TR_RAID1_F_LOCKED ;
 int g_raid1_rebuild_slab ;
 struct g_raid_subdisk* g_raid_get_subdisk (int ,int ) ;
 int g_raid_lock_range (int ,scalar_t__,int ,int *,struct bio*) ;
 int g_raid_tr_raid1_rebuild_abort (struct g_raid_tr_object*) ;
 int memset (struct bio*,int ,int) ;

__attribute__((used)) static void
g_raid_tr_raid1_rebuild_some(struct g_raid_tr_object *tr)
{
 struct g_raid_tr_raid1_object *trs;
 struct g_raid_subdisk *sd, *good_sd;
 struct bio *bp;

 trs = (struct g_raid_tr_raid1_object *)tr;
 if (trs->trso_flags & TR_RAID1_F_DOING_SOME)
  return;
 sd = trs->trso_failed_sd;
 good_sd = g_raid_get_subdisk(sd->sd_volume, G_RAID_SUBDISK_S_ACTIVE);
 if (good_sd == ((void*)0)) {
  g_raid_tr_raid1_rebuild_abort(tr);
  return;
 }
 bp = &trs->trso_bio;
 memset(bp, 0, sizeof(*bp));
 bp->bio_offset = sd->sd_rebuild_pos;
 bp->bio_length = MIN(g_raid1_rebuild_slab,
     sd->sd_size - sd->sd_rebuild_pos);
 bp->bio_data = trs->trso_buffer;
 bp->bio_cmd = BIO_READ;
 bp->bio_cflags = G_RAID_BIO_FLAG_SYNC;
 bp->bio_caller1 = good_sd;
 trs->trso_flags |= TR_RAID1_F_DOING_SOME;
 trs->trso_flags |= TR_RAID1_F_LOCKED;
 g_raid_lock_range(sd->sd_volume,
    bp->bio_offset, bp->bio_length, ((void*)0), bp);
}
