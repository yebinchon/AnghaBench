
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ ds_geom; } ;
struct g_mirror_softc {scalar_t__ sc_geom; int sc_flags; int sc_mediasize; int sc_bump_id; int sc_lock; TYPE_1__ sc_sync; } ;
struct g_mirror_disk_sync {scalar_t__ ds_update_ts; int ds_offset_done; struct bio** ds_bios; struct g_consumer* ds_consumer; int ds_offset; int ds_inflight; } ;
struct g_mirror_disk {struct g_consumer* d_consumer; struct g_mirror_disk_sync d_sync; } ;
struct g_consumer {int acr; int acw; int ace; int index; TYPE_2__* provider; } ;
struct bio {int bio_cmd; int bio_offset; int bio_length; int bio_error; int bio_cflags; TYPE_3__* bio_from; } ;
typedef int off_t ;
struct TYPE_6__ {scalar_t__ geom; struct g_mirror_disk* private; int index; } ;
struct TYPE_5__ {int name; } ;




 int DEBUG_FP ;
 int G_MIRROR_BUMP_GENID ;
 int G_MIRROR_DEVICE_FLAG_DESTROY ;
 int G_MIRROR_DISK_STATE_ACTIVE ;
 int G_MIRROR_DISK_STATE_DISCONNECTED ;
 int G_MIRROR_EVENT_DONTWAIT ;
 int G_MIRROR_LOGREQ (int,struct bio*,char*,...) ;
 int KASSERT (int,char*) ;
 int KFAIL_POINT_ERROR (int ,int ,int ) ;
 int g_io_request (struct bio*,struct g_consumer*) ;
 int g_mirror_event_send (struct g_mirror_disk*,int ,int ) ;
 int g_mirror_kill_consumer (struct g_mirror_softc*,TYPE_3__*) ;
 int g_mirror_regular_collision (struct g_mirror_softc*,struct bio*) ;
 int g_mirror_regular_release (struct g_mirror_softc*) ;
 int g_mirror_sync_delay (struct g_mirror_softc*,struct bio*) ;
 scalar_t__ g_mirror_sync_period ;
 int g_mirror_sync_reinit (struct g_mirror_disk*,struct bio*,int ) ;
 int g_mirror_sync_request_free (struct g_mirror_disk*,struct bio*) ;
 int g_mirror_sync_request_read ;
 int g_mirror_sync_request_write ;
 int g_mirror_syncreqs ;
 int g_mirror_update_metadata (struct g_mirror_disk*) ;
 int g_topology_lock () ;
 int g_topology_unlock () ;
 int panic (char*,struct bio*) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;
 scalar_t__ time_uptime ;

__attribute__((used)) static void
g_mirror_sync_request(struct g_mirror_softc *sc, struct bio *bp)
{
 struct g_mirror_disk *disk;
 struct g_mirror_disk_sync *sync;

 KASSERT((bp->bio_cmd == 129 &&
     bp->bio_from->geom == sc->sc_sync.ds_geom) ||
     (bp->bio_cmd == 128 && bp->bio_from->geom == sc->sc_geom),
     ("Sync BIO %p with unexpected origin", bp));

 bp->bio_from->index--;
 disk = bp->bio_from->private;
 if (disk == ((void*)0)) {
  sx_xunlock(&sc->sc_lock);
  g_topology_lock();
  g_mirror_kill_consumer(sc, bp->bio_from);
  g_topology_unlock();
  g_mirror_sync_request_free(((void*)0), bp);
  sx_xlock(&sc->sc_lock);
  return;
 }

 sync = &disk->d_sync;




 switch (bp->bio_cmd) {
 case 129: {
  struct g_consumer *cp;

  KFAIL_POINT_ERROR(DEBUG_FP, g_mirror_sync_request_read,
      bp->bio_error);

  if (bp->bio_error != 0) {
   G_MIRROR_LOGREQ(0, bp,
       "Synchronization request failed (error=%d).",
       bp->bio_error);
   g_mirror_sync_request_free(disk, bp);
   g_mirror_event_send(disk,
       G_MIRROR_DISK_STATE_DISCONNECTED,
       G_MIRROR_EVENT_DONTWAIT);
   return;
  }
  G_MIRROR_LOGREQ(3, bp,
      "Synchronization request half-finished.");
  bp->bio_cmd = 128;
  bp->bio_cflags = 0;
  cp = disk->d_consumer;
  KASSERT(cp->acr >= 1 && cp->acw >= 1 && cp->ace >= 1,
      ("Consumer %s not opened (r%dw%de%d).", cp->provider->name,
      cp->acr, cp->acw, cp->ace));
  cp->index++;
  g_io_request(bp, cp);
  return;
 }
 case 128: {
  off_t offset;
  int i;

  KFAIL_POINT_ERROR(DEBUG_FP, g_mirror_sync_request_write,
      bp->bio_error);

  if (bp->bio_error != 0) {
   G_MIRROR_LOGREQ(0, bp,
       "Synchronization request failed (error=%d).",
       bp->bio_error);
   g_mirror_sync_request_free(disk, bp);
   sc->sc_bump_id |= G_MIRROR_BUMP_GENID;
   g_mirror_event_send(disk,
       G_MIRROR_DISK_STATE_DISCONNECTED,
       G_MIRROR_EVENT_DONTWAIT);
   return;
  }
  G_MIRROR_LOGREQ(3, bp, "Synchronization request finished.");
  if (sync->ds_offset >= sc->sc_mediasize ||
      sync->ds_consumer == ((void*)0) ||
      (sc->sc_flags & G_MIRROR_DEVICE_FLAG_DESTROY) != 0) {

   sync->ds_inflight--;
   g_mirror_sync_request_free(disk, bp);
   if (sync->ds_inflight > 0)
    return;
   if (sync->ds_consumer == ((void*)0) ||
       (sc->sc_flags & G_MIRROR_DEVICE_FLAG_DESTROY) != 0) {
    return;
   }

   g_mirror_event_send(disk, G_MIRROR_DISK_STATE_ACTIVE,
       G_MIRROR_EVENT_DONTWAIT);
   return;
  }


  g_mirror_sync_reinit(disk, bp, sync->ds_offset);
  sync->ds_offset += bp->bio_length;

  G_MIRROR_LOGREQ(3, bp, "Sending synchronization request.");
  sync->ds_consumer->index++;




  if (g_mirror_regular_collision(sc, bp))
   g_mirror_sync_delay(sc, bp);
  else
   g_io_request(bp, sync->ds_consumer);


  g_mirror_regular_release(sc);


  offset = sc->sc_mediasize;
  for (i = 0; i < g_mirror_syncreqs; i++) {
   bp = sync->ds_bios[i];
   if (bp != ((void*)0) && bp->bio_offset < offset)
    offset = bp->bio_offset;
  }
  if (g_mirror_sync_period > 0 &&
      time_uptime - sync->ds_update_ts > g_mirror_sync_period) {
   sync->ds_offset_done = offset;
   g_mirror_update_metadata(disk);
   sync->ds_update_ts = time_uptime;
  }
  return;
 }
 default:
  panic("Invalid I/O request %p", bp);
 }
}
