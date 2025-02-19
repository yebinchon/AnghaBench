
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u_int ;
struct TYPE_3__ {int ds_geom; } ;
struct g_raid3_softc {scalar_t__ sc_state; size_t sc_ndisks; int sc_flags; int sc_provider; scalar_t__ sc_mediasize; struct g_raid3_disk* sc_syncdisk; int sc_name; int sc_lock; TYPE_1__ sc_sync; struct g_raid3_disk* sc_disks; } ;
struct TYPE_4__ {int ds_offset; int ds_inflight; struct g_consumer* ds_consumer; struct bio** ds_bios; } ;
struct g_raid3_disk {scalar_t__ d_state; TYPE_2__ d_sync; int d_flags; } ;
struct g_consumer {scalar_t__ index; struct g_raid3_disk* private; } ;
struct bio {int bio_offset; int bio_length; void* bio_caller1; int bio_to; struct g_consumer* bio_from; int bio_done; scalar_t__ bio_cflags; void* bio_data; int bio_cmd; int * bio_parent; } ;


 int BIO_READ ;
 int G_RAID3_DEBUG (int ,char*,int ,int ) ;
 int G_RAID3_DEVICE_FLAG_NOFAILSYNC ;
 scalar_t__ G_RAID3_DEVICE_STATE_DEGRADED ;
 int G_RAID3_DISK_FLAG_DIRTY ;
 scalar_t__ G_RAID3_DISK_STATE_SYNCHRONIZING ;
 int G_RAID3_LOGREQ (int,struct bio*,char*) ;
 int KASSERT (int,char*) ;
 int MAXPHYS ;
 int MIN (int,scalar_t__) ;
 int M_RAID3 ;
 int M_WAITOK ;
 int SX_XLOCKED ;
 int g_access (struct g_consumer*,int,int ,int ) ;
 struct bio* g_alloc_bio () ;
 int g_attach (struct g_consumer*,int ) ;
 int g_io_request (struct bio*,struct g_consumer*) ;
 struct g_consumer* g_new_consumer (int ) ;
 int g_raid3_get_diskname (struct g_raid3_disk*) ;
 scalar_t__ g_raid3_regular_collision (struct g_raid3_softc*,struct bio*) ;
 int g_raid3_sync_delay (struct g_raid3_softc*,struct bio*) ;
 int g_raid3_sync_done ;
 int g_raid3_syncreqs ;
 int g_topology_assert_not () ;
 int g_topology_lock () ;
 int g_topology_unlock () ;
 void* malloc (int,int ,int ) ;
 int sx_assert (int *,int ) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;

__attribute__((used)) static void
g_raid3_sync_start(struct g_raid3_softc *sc)
{
 struct g_raid3_disk *disk;
 struct g_consumer *cp;
 struct bio *bp;
 int error;
 u_int n;

 g_topology_assert_not();
 sx_assert(&sc->sc_lock, SX_XLOCKED);

 KASSERT(sc->sc_state == G_RAID3_DEVICE_STATE_DEGRADED,
     ("Device not in DEGRADED state (%s, %u).", sc->sc_name,
     sc->sc_state));
 KASSERT(sc->sc_syncdisk == ((void*)0), ("Syncdisk is not NULL (%s, %u).",
     sc->sc_name, sc->sc_state));
 disk = ((void*)0);
 for (n = 0; n < sc->sc_ndisks; n++) {
  if (sc->sc_disks[n].d_state != G_RAID3_DISK_STATE_SYNCHRONIZING)
   continue;
  disk = &sc->sc_disks[n];
  break;
 }
 if (disk == ((void*)0))
  return;

 sx_xunlock(&sc->sc_lock);
 g_topology_lock();
 cp = g_new_consumer(sc->sc_sync.ds_geom);
 error = g_attach(cp, sc->sc_provider);
 KASSERT(error == 0,
     ("Cannot attach to %s (error=%d).", sc->sc_name, error));
 error = g_access(cp, 1, 0, 0);
 KASSERT(error == 0, ("Cannot open %s (error=%d).", sc->sc_name, error));
 g_topology_unlock();
 sx_xlock(&sc->sc_lock);

 G_RAID3_DEBUG(0, "Device %s: rebuilding provider %s.", sc->sc_name,
     g_raid3_get_diskname(disk));
 if ((sc->sc_flags & G_RAID3_DEVICE_FLAG_NOFAILSYNC) == 0)
  disk->d_flags |= G_RAID3_DISK_FLAG_DIRTY;
 KASSERT(disk->d_sync.ds_consumer == ((void*)0),
     ("Sync consumer already exists (device=%s, disk=%s).",
     sc->sc_name, g_raid3_get_diskname(disk)));

 disk->d_sync.ds_consumer = cp;
 disk->d_sync.ds_consumer->private = disk;
 disk->d_sync.ds_consumer->index = 0;
 sc->sc_syncdisk = disk;




 disk->d_sync.ds_bios = malloc(sizeof(struct bio *) * g_raid3_syncreqs,
     M_RAID3, M_WAITOK);
 for (n = 0; n < g_raid3_syncreqs; n++) {
  bp = g_alloc_bio();
  disk->d_sync.ds_bios[n] = bp;
  bp->bio_parent = ((void*)0);
  bp->bio_cmd = BIO_READ;
  bp->bio_data = malloc(MAXPHYS, M_RAID3, M_WAITOK);
  bp->bio_cflags = 0;
  bp->bio_offset = disk->d_sync.ds_offset * (sc->sc_ndisks - 1);
  bp->bio_length = MIN(MAXPHYS, sc->sc_mediasize - bp->bio_offset);
  disk->d_sync.ds_offset += bp->bio_length / (sc->sc_ndisks - 1);
  bp->bio_done = g_raid3_sync_done;
  bp->bio_from = disk->d_sync.ds_consumer;
  bp->bio_to = sc->sc_provider;
  bp->bio_caller1 = (void *)(uintptr_t)n;
 }


 disk->d_sync.ds_inflight = g_raid3_syncreqs;




 for (n = 0; n < g_raid3_syncreqs; n++) {
  bp = disk->d_sync.ds_bios[n];
  G_RAID3_LOGREQ(3, bp, "Sending synchronization request.");
  disk->d_sync.ds_consumer->index++;



  if (g_raid3_regular_collision(sc, bp))
   g_raid3_sync_delay(sc, bp);
  else
   g_io_request(bp, disk->d_sync.ds_consumer);
 }
}
