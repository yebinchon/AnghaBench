
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int ;
typedef int u_char ;
struct g_raid3_softc {int sc_sectorsize; int sc_mediasize; int sc_flags; int sc_name; int sc_ndisks; int sc_provider; int sc_bump_id; int sc_lock; } ;
struct g_raid3_disk_sync {int ds_offset; int ds_offset_done; struct bio** ds_bios; struct g_consumer* ds_consumer; int ds_inflight; } ;
struct g_raid3_disk {int d_no; struct g_raid3_disk_sync d_sync; struct g_consumer* d_consumer; } ;
struct g_consumer {int acr; int acw; int ace; int index; TYPE_2__* provider; struct g_raid3_disk* private; TYPE_1__* geom; } ;
struct bio {int bio_cmd; int bio_length; int bio_offset; int bio_to; struct g_consumer* bio_from; int * bio_data; int bio_done; int bio_caller1; int bio_error; int bio_inbed; int bio_children; int bio_cflags; int bio_pflags; int * bio_driver2; int bio_driver1; } ;
typedef int off_t ;
struct TYPE_4__ {int name; } ;
struct TYPE_3__ {struct g_raid3_softc* softc; } ;




 int G_RAID3_BUMP_GENID ;
 int G_RAID3_DEVICE_FLAG_DESTROY ;
 int G_RAID3_DISK_STATE_ACTIVE ;
 int G_RAID3_DISK_STATE_DISCONNECTED ;
 int G_RAID3_EVENT_DONTWAIT ;
 int G_RAID3_LOGREQ (int,struct bio*,char*,...) ;
 int KASSERT (int,char*) ;
 int MAXPHYS ;
 int MIN (int,int) ;
 int M_RAID3 ;
 int bcopy (int *,int *,int) ;
 int free (int *,int ) ;
 int g_destroy_bio (struct bio*) ;
 int g_io_request (struct bio*,struct g_consumer*) ;
 int g_raid3_event_send (struct g_raid3_disk*,int ,int ) ;
 int g_raid3_kill_consumer (struct g_raid3_softc*,struct g_consumer*) ;
 int g_raid3_regular_collision (struct g_raid3_softc*,struct bio*) ;
 int g_raid3_regular_release (struct g_raid3_softc*) ;
 int g_raid3_sync_delay (struct g_raid3_softc*,struct bio*) ;
 int g_raid3_sync_done ;
 int g_raid3_syncreqs ;
 int g_raid3_update_metadata (struct g_raid3_disk*) ;
 int g_raid3_xor (int *,int *,int) ;
 int g_reset_bio (struct bio*) ;
 int g_topology_lock () ;
 int g_topology_unlock () ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;

__attribute__((used)) static void
g_raid3_sync_request(struct bio *bp)
{
 struct g_raid3_softc *sc;
 struct g_raid3_disk *disk;

 bp->bio_from->index--;
 sc = bp->bio_from->geom->softc;
 disk = bp->bio_from->private;
 if (disk == ((void*)0)) {
  sx_xunlock(&sc->sc_lock);
  g_topology_lock();
  g_raid3_kill_consumer(sc, bp->bio_from);
  g_topology_unlock();
  free(bp->bio_data, M_RAID3);
  g_destroy_bio(bp);
  sx_xlock(&sc->sc_lock);
  return;
 }




 switch (bp->bio_cmd) {
 case 129:
     {
  struct g_consumer *cp;
  u_char *dst, *src;
  off_t left;
  u_int atom;

  if (bp->bio_error != 0) {
   G_RAID3_LOGREQ(0, bp,
       "Synchronization request failed (error=%d).",
       bp->bio_error);
   g_destroy_bio(bp);
   return;
  }
  G_RAID3_LOGREQ(3, bp, "Synchronization request finished.");
  atom = sc->sc_sectorsize / (sc->sc_ndisks - 1);
  dst = src = bp->bio_data;
  if (disk->d_no == sc->sc_ndisks - 1) {
   u_int n;


   for (left = bp->bio_length; left > 0;
       left -= sc->sc_sectorsize) {
    bcopy(src, dst, atom);
    src += atom;
    for (n = 1; n < sc->sc_ndisks - 1; n++) {
     g_raid3_xor(src, dst, atom);
     src += atom;
    }
    dst += atom;
   }
  } else {

   src += atom * disk->d_no;
   for (left = bp->bio_length; left > 0;
       left -= sc->sc_sectorsize) {
    bcopy(src, dst, atom);
    src += sc->sc_sectorsize;
    dst += atom;
   }
  }
  bp->bio_driver1 = bp->bio_driver2 = ((void*)0);
  bp->bio_pflags = 0;
  bp->bio_offset /= sc->sc_ndisks - 1;
  bp->bio_length /= sc->sc_ndisks - 1;
  bp->bio_cmd = 128;
  bp->bio_cflags = 0;
  bp->bio_children = bp->bio_inbed = 0;
  cp = disk->d_consumer;
  KASSERT(cp->acr >= 1 && cp->acw >= 1 && cp->ace >= 1,
      ("Consumer %s not opened (r%dw%de%d).", cp->provider->name,
      cp->acr, cp->acw, cp->ace));
  cp->index++;
  g_io_request(bp, cp);
  return;
     }
 case 128:
     {
  struct g_raid3_disk_sync *sync;
  off_t boffset, moffset;
  void *data;
  int i;

  if (bp->bio_error != 0) {
   G_RAID3_LOGREQ(0, bp,
       "Synchronization request failed (error=%d).",
       bp->bio_error);
   g_destroy_bio(bp);
   sc->sc_bump_id |= G_RAID3_BUMP_GENID;
   g_raid3_event_send(disk,
       G_RAID3_DISK_STATE_DISCONNECTED,
       G_RAID3_EVENT_DONTWAIT);
   return;
  }
  G_RAID3_LOGREQ(3, bp, "Synchronization request finished.");
  sync = &disk->d_sync;
  if (sync->ds_offset == sc->sc_mediasize / (sc->sc_ndisks - 1) ||
      sync->ds_consumer == ((void*)0) ||
      (sc->sc_flags & G_RAID3_DEVICE_FLAG_DESTROY) != 0) {

   sync->ds_inflight--;
   if (sync->ds_bios != ((void*)0)) {
    i = (int)(uintptr_t)bp->bio_caller1;
    sync->ds_bios[i] = ((void*)0);
   }
   free(bp->bio_data, M_RAID3);
   g_destroy_bio(bp);
   if (sync->ds_inflight > 0)
    return;
   if (sync->ds_consumer == ((void*)0) ||
       (sc->sc_flags & G_RAID3_DEVICE_FLAG_DESTROY) != 0) {
    return;
   }



   g_raid3_event_send(disk, G_RAID3_DISK_STATE_ACTIVE,
       G_RAID3_EVENT_DONTWAIT);
   return;
  }


  data = bp->bio_data;
  g_reset_bio(bp);
  bp->bio_cmd = 129;
  bp->bio_offset = sync->ds_offset * (sc->sc_ndisks - 1);
  bp->bio_length = MIN(MAXPHYS, sc->sc_mediasize - bp->bio_offset);
  sync->ds_offset += bp->bio_length / (sc->sc_ndisks - 1);
  bp->bio_done = g_raid3_sync_done;
  bp->bio_data = data;
  bp->bio_from = sync->ds_consumer;
  bp->bio_to = sc->sc_provider;
  G_RAID3_LOGREQ(3, bp, "Sending synchronization request.");
  sync->ds_consumer->index++;



  if (g_raid3_regular_collision(sc, bp))
   g_raid3_sync_delay(sc, bp);
  else
   g_io_request(bp, sync->ds_consumer);


  g_raid3_regular_release(sc);


  moffset = sc->sc_mediasize;
  for (i = 0; i < g_raid3_syncreqs; i++) {
   bp = sync->ds_bios[i];
   boffset = bp->bio_offset;
   if (bp->bio_cmd == 128)
    boffset *= sc->sc_ndisks - 1;
   if (boffset < moffset)
    moffset = boffset;
  }
  if (sync->ds_offset_done + (MAXPHYS * 100) < moffset) {

   sync->ds_offset_done = moffset;
   g_raid3_update_metadata(disk);
  }
  return;
     }
 default:
  KASSERT(1 == 0, ("Invalid command here: %u (device=%s)",
      bp->bio_cmd, sc->sc_name));
  break;
 }
}
