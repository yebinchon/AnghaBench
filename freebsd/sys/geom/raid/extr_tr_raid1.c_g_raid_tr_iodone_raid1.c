
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct g_raid_volume {int v_softc; } ;
struct g_raid_tr_raid1_object {scalar_t__ trso_type; int trso_flags; scalar_t__ trso_meta_update; scalar_t__ trso_recover_slabs; scalar_t__ trso_stopping; struct g_raid_subdisk* trso_failed_sd; } ;
struct g_raid_tr_object {struct g_raid_volume* tro_volume; } ;
struct g_raid_subdisk {scalar_t__ sd_rebuild_pos; scalar_t__ sd_size; int sd_pos; TYPE_1__* sd_disk; int sd_softc; int sd_volume; int sd_recovery; } ;
struct bio {int bio_cflags; scalar_t__ bio_cmd; int bio_error; scalar_t__ bio_length; int bio_inbed; int bio_children; int bio_pflags; scalar_t__ bio_completed; int bio_offset; struct g_raid_subdisk* bio_driver1; struct g_raid_subdisk* bio_caller1; int bio_driver2; struct bio* bio_parent; } ;
struct TYPE_3__ {int d_read_errs; } ;


 scalar_t__ BIO_READ ;
 scalar_t__ BIO_WRITE ;
 int G_RAID_BIO_FLAG_LOCKED ;
 int G_RAID_BIO_FLAG_REMAP ;
 int G_RAID_BIO_FLAG_SYNC ;
 int G_RAID_LOGREQ (int,struct bio*,char*,...) ;
 int TR_RAID1_F_ABORT ;
 int TR_RAID1_F_DOING_SOME ;
 int TR_RAID1_F_LOCKED ;
 scalar_t__ TR_RAID1_REBUILD ;
 scalar_t__ TR_RAID1_RESYNC ;
 struct bio* g_clone_bio (struct bio*) ;
 int g_destroy_bio (struct bio*) ;
 scalar_t__ g_raid1_rebuild_meta_update ;
 int g_raid_iodone (struct bio*,int) ;
 int g_raid_lock_range (int ,int ,scalar_t__,struct bio*,struct bio*) ;
 int g_raid_read_err_thresh ;
 int g_raid_subdisk_iostart (struct g_raid_subdisk*,struct bio*) ;
 int g_raid_tr_raid1_fail_disk (int ,struct g_raid_subdisk*,TYPE_1__*) ;
 int g_raid_tr_raid1_rebuild_abort (struct g_raid_tr_object*) ;
 int g_raid_tr_raid1_rebuild_finish (struct g_raid_tr_object*) ;
 int g_raid_tr_raid1_rebuild_some (struct g_raid_tr_object*) ;
 struct g_raid_subdisk* g_raid_tr_raid1_select_read_disk (struct g_raid_volume*,struct bio*,uintptr_t) ;
 int g_raid_unlock_range (int ,int ,scalar_t__) ;
 int g_raid_write_metadata (int ,struct g_raid_volume*,struct g_raid_subdisk*,TYPE_1__*) ;
 int panic (char*) ;

__attribute__((used)) static void
g_raid_tr_iodone_raid1(struct g_raid_tr_object *tr,
    struct g_raid_subdisk *sd, struct bio *bp)
{
 struct bio *cbp;
 struct g_raid_subdisk *nsd;
 struct g_raid_volume *vol;
 struct bio *pbp;
 struct g_raid_tr_raid1_object *trs;
 uintptr_t *mask;
 int error, do_write;

 trs = (struct g_raid_tr_raid1_object *)tr;
 vol = tr->tro_volume;
 if (bp->bio_cflags & G_RAID_BIO_FLAG_SYNC) {
  if (trs->trso_type == TR_RAID1_REBUILD) {
   if (bp->bio_cmd == BIO_READ) {


    if (trs->trso_flags & TR_RAID1_F_ABORT) {
     trs->trso_flags &= ~TR_RAID1_F_DOING_SOME;
     g_raid_tr_raid1_rebuild_abort(tr);
     return;
    }


    if (bp->bio_error != 0) {
     G_RAID_LOGREQ(0, bp,
         "Read error during rebuild (%d), "
         "possible data loss!",
         bp->bio_error);
     goto rebuild_round_done;
    }





    G_RAID_LOGREQ(4, bp, "rebuild read done. %d",
        bp->bio_error);
    bp->bio_cmd = BIO_WRITE;
    bp->bio_cflags = G_RAID_BIO_FLAG_SYNC;
    G_RAID_LOGREQ(4, bp, "Queueing rebuild write.");
    g_raid_subdisk_iostart(trs->trso_failed_sd, bp);
   } else {






    G_RAID_LOGREQ(4, bp,
        "rebuild write done. Error %d",
        bp->bio_error);
    nsd = trs->trso_failed_sd;
    if (bp->bio_error != 0 ||
        trs->trso_flags & TR_RAID1_F_ABORT) {
     if ((trs->trso_flags &
         TR_RAID1_F_ABORT) == 0) {
      g_raid_tr_raid1_fail_disk(sd->sd_softc,
          nsd, nsd->sd_disk);
     }
     trs->trso_flags &= ~TR_RAID1_F_DOING_SOME;
     g_raid_tr_raid1_rebuild_abort(tr);
     return;
    }
rebuild_round_done:
    nsd = trs->trso_failed_sd;
    trs->trso_flags &= ~TR_RAID1_F_LOCKED;
    g_raid_unlock_range(sd->sd_volume,
        bp->bio_offset, bp->bio_length);
    nsd->sd_rebuild_pos += bp->bio_length;
    if (nsd->sd_rebuild_pos >= nsd->sd_size) {
     g_raid_tr_raid1_rebuild_finish(tr);
     return;
    }


    if (trs->trso_stopping) {
     trs->trso_flags &= ~TR_RAID1_F_DOING_SOME;
     g_raid_tr_raid1_rebuild_abort(tr);
     return;
    }

    if (--trs->trso_meta_update <= 0) {
     g_raid_write_metadata(vol->v_softc,
         vol, nsd, nsd->sd_disk);
     trs->trso_meta_update =
         g_raid1_rebuild_meta_update;
    }
    trs->trso_flags &= ~TR_RAID1_F_DOING_SOME;
    if (--trs->trso_recover_slabs <= 0)
     return;
    g_raid_tr_raid1_rebuild_some(tr);
   }
  } else if (trs->trso_type == TR_RAID1_RESYNC) {





   panic("Somehow, we think we're doing a resync");
  }
  return;
 }
 pbp = bp->bio_parent;
 pbp->bio_inbed++;
 if (bp->bio_cmd == BIO_READ && bp->bio_error != 0) {





  sd->sd_disk->d_read_errs++;
  G_RAID_LOGREQ(0, bp,
      "Read error (%d), %d read errors total",
      bp->bio_error, sd->sd_disk->d_read_errs);







  do_write = 1;
  if (sd->sd_disk->d_read_errs > g_raid_read_err_thresh) {
   g_raid_tr_raid1_fail_disk(sd->sd_softc, sd, sd->sd_disk);
   if (pbp->bio_children == 1)
    do_write = 0;
  }




  mask = (uintptr_t *)(&pbp->bio_driver2);
  if (pbp->bio_children == 1) {

   pbp->bio_driver1 = do_write ? sd : ((void*)0);
   *mask = 0;
  }
  *mask |= 1 << sd->sd_pos;
  nsd = g_raid_tr_raid1_select_read_disk(vol, pbp, *mask);
  if (nsd != ((void*)0) && (cbp = g_clone_bio(pbp)) != ((void*)0)) {
   g_destroy_bio(bp);
   G_RAID_LOGREQ(2, cbp, "Retrying read from %d",
       nsd->sd_pos);
   if (pbp->bio_children == 2 && do_write) {
    sd->sd_recovery++;
    cbp->bio_caller1 = nsd;
    pbp->bio_pflags = G_RAID_BIO_FLAG_LOCKED;

    g_raid_lock_range(sd->sd_volume,
        cbp->bio_offset, cbp->bio_length, pbp, cbp);
   } else {
    g_raid_subdisk_iostart(nsd, cbp);
   }
   return;
  }






  G_RAID_LOGREQ(2, bp, "Couldn't retry read, failing it");
 }
 if (bp->bio_cmd == BIO_READ &&
     bp->bio_error == 0 &&
     pbp->bio_children > 1 &&
     pbp->bio_driver1 != ((void*)0)) {
  G_RAID_LOGREQ(3, bp, "Recovered data from other drive");
  cbp = g_clone_bio(pbp);
  if (cbp != ((void*)0)) {
   g_destroy_bio(bp);
   cbp->bio_cmd = BIO_WRITE;
   cbp->bio_cflags = G_RAID_BIO_FLAG_REMAP;
   G_RAID_LOGREQ(2, cbp,
       "Attempting bad sector remap on failing drive.");
   g_raid_subdisk_iostart(pbp->bio_driver1, cbp);
   return;
  }
 }
 if (pbp->bio_pflags & G_RAID_BIO_FLAG_LOCKED) {
  if (bp->bio_cmd == BIO_WRITE && bp->bio_error) {
   G_RAID_LOGREQ(0, bp, "Remap write failed: "
       "failing subdisk.");
   g_raid_tr_raid1_fail_disk(sd->sd_softc, sd, sd->sd_disk);
   bp->bio_error = 0;
  }
  if (pbp->bio_driver1 != ((void*)0)) {
   ((struct g_raid_subdisk *)pbp->bio_driver1)
       ->sd_recovery--;
  }
  G_RAID_LOGREQ(2, bp, "REMAP done %d.", bp->bio_error);
  g_raid_unlock_range(sd->sd_volume, bp->bio_offset,
      bp->bio_length);
 }
 if (pbp->bio_cmd != BIO_READ) {
  if (pbp->bio_inbed == 1 || pbp->bio_error != 0)
   pbp->bio_error = bp->bio_error;
  if (pbp->bio_cmd == BIO_WRITE && bp->bio_error != 0) {
   G_RAID_LOGREQ(0, bp, "Write failed: failing subdisk.");
   g_raid_tr_raid1_fail_disk(sd->sd_softc, sd, sd->sd_disk);
  }
  error = pbp->bio_error;
 } else
  error = bp->bio_error;
 g_destroy_bio(bp);
 if (pbp->bio_children == pbp->bio_inbed) {
  pbp->bio_completed = pbp->bio_length;
  g_raid_iodone(pbp, error);
 }
}
