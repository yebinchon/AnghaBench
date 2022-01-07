
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ds_ndisks; int ds_geom; } ;
struct g_mirror_softc {scalar_t__ sc_state; int sc_flags; TYPE_1__ sc_sync; int sc_name; int sc_lock; int sc_provider; } ;
struct g_mirror_disk_sync {int ds_inflight; struct g_consumer* ds_consumer; struct bio** ds_bios; int ds_offset; } ;
struct g_mirror_disk {scalar_t__ d_state; int d_flags; struct g_mirror_disk_sync d_sync; struct g_mirror_softc* d_softc; } ;
struct g_consumer {int flags; scalar_t__ index; struct g_mirror_disk* private; } ;
struct bio {scalar_t__ bio_length; void* bio_caller1; void* bio_data; } ;


 int G_CF_DIRECT_RECEIVE ;
 int G_CF_DIRECT_SEND ;
 int G_MIRROR_DEBUG (int ,char*,int ,int ) ;
 int G_MIRROR_DEVICE_FLAG_NOFAILSYNC ;
 scalar_t__ G_MIRROR_DEVICE_STATE_RUNNING ;
 int G_MIRROR_DISK_FLAG_DIRTY ;
 scalar_t__ G_MIRROR_DISK_STATE_SYNCHRONIZING ;
 int G_MIRROR_LOGREQ (int,struct bio*,char*) ;
 int KASSERT (int,char*) ;
 int MAXPHYS ;
 int M_MIRROR ;
 int M_WAITOK ;
 int SX_LOCKED ;
 int g_access (struct g_consumer*,int,int ,int ) ;
 struct bio* g_alloc_bio () ;
 int g_attach (struct g_consumer*,int ) ;
 int g_io_request (struct bio*,struct g_consumer*) ;
 int g_mirror_get_diskname (struct g_mirror_disk*) ;
 scalar_t__ g_mirror_regular_collision (struct g_mirror_softc*,struct bio*) ;
 int g_mirror_sync_delay (struct g_mirror_softc*,struct bio*) ;
 int g_mirror_sync_reinit (struct g_mirror_disk*,struct bio*,int ) ;
 int g_mirror_syncreqs ;
 struct g_consumer* g_new_consumer (int ) ;
 int g_topology_assert_not () ;
 int g_topology_lock () ;
 int g_topology_unlock () ;
 void* malloc (int,int ,int ) ;
 int sx_assert (int *,int ) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;

__attribute__((used)) static void
g_mirror_sync_start(struct g_mirror_disk *disk)
{
 struct g_mirror_softc *sc;
 struct g_mirror_disk_sync *sync;
 struct g_consumer *cp;
 struct bio *bp;
 int error, i;

 g_topology_assert_not();
 sc = disk->d_softc;
 sync = &disk->d_sync;
 sx_assert(&sc->sc_lock, SX_LOCKED);

 KASSERT(disk->d_state == G_MIRROR_DISK_STATE_SYNCHRONIZING,
     ("Disk %s is not marked for synchronization.",
     g_mirror_get_diskname(disk)));
 KASSERT(sc->sc_state == G_MIRROR_DEVICE_STATE_RUNNING,
     ("Device not in RUNNING state (%s, %u).", sc->sc_name,
     sc->sc_state));

 sx_xunlock(&sc->sc_lock);
 g_topology_lock();
 cp = g_new_consumer(sc->sc_sync.ds_geom);
 cp->flags |= G_CF_DIRECT_SEND | G_CF_DIRECT_RECEIVE;
 error = g_attach(cp, sc->sc_provider);
 KASSERT(error == 0,
     ("Cannot attach to %s (error=%d).", sc->sc_name, error));
 error = g_access(cp, 1, 0, 0);
 KASSERT(error == 0, ("Cannot open %s (error=%d).", sc->sc_name, error));
 g_topology_unlock();
 sx_xlock(&sc->sc_lock);

 G_MIRROR_DEBUG(0, "Device %s: rebuilding provider %s.", sc->sc_name,
     g_mirror_get_diskname(disk));
 if ((sc->sc_flags & G_MIRROR_DEVICE_FLAG_NOFAILSYNC) == 0)
  disk->d_flags |= G_MIRROR_DISK_FLAG_DIRTY;
 KASSERT(sync->ds_consumer == ((void*)0),
     ("Sync consumer already exists (device=%s, disk=%s).",
     sc->sc_name, g_mirror_get_diskname(disk)));

 sync->ds_consumer = cp;
 sync->ds_consumer->private = disk;
 sync->ds_consumer->index = 0;




 sync->ds_bios = malloc(sizeof(struct bio *) * g_mirror_syncreqs,
     M_MIRROR, M_WAITOK);
 for (i = 0; i < g_mirror_syncreqs; i++) {
  bp = g_alloc_bio();
  sync->ds_bios[i] = bp;

  bp->bio_data = malloc(MAXPHYS, M_MIRROR, M_WAITOK);
  bp->bio_caller1 = (void *)(uintptr_t)i;
  g_mirror_sync_reinit(disk, bp, sync->ds_offset);
  sync->ds_offset += bp->bio_length;
 }


 sc->sc_sync.ds_ndisks++;

 sync->ds_inflight = g_mirror_syncreqs;




 for (i = 0; i < g_mirror_syncreqs; i++) {
  bp = sync->ds_bios[i];
  G_MIRROR_LOGREQ(3, bp, "Sending synchronization request.");
  sync->ds_consumer->index++;



  if (g_mirror_regular_collision(sc, bp))
   g_mirror_sync_delay(sc, bp);
  else
   g_io_request(bp, sync->ds_consumer);
 }
}
