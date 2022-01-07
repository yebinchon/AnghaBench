
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct g_raid3_softc {int sc_ndisks; scalar_t__ sc_state; struct g_provider* sc_provider; struct g_raid3_disk* sc_disks; int sc_sectorsize; int sc_mediasize; int sc_name; int sc_geom; int sc_lock; } ;
struct g_raid3_disk {TYPE_2__* d_consumer; } ;
struct g_provider {int stripesize; int stripeoffset; int name; int sectorsize; int mediasize; } ;
struct TYPE_4__ {TYPE_1__* provider; } ;
struct TYPE_3__ {int stripesize; int stripeoffset; } ;


 int G_RAID3_DEBUG (int ,char*,int ,int ,int) ;
 scalar_t__ G_RAID3_DEVICE_STATE_DEGRADED ;
 int G_RAID3_DISK_STATE_ACTIVE ;
 int SX_LOCKED ;
 int g_error_provider (struct g_provider*,int ) ;
 struct g_provider* g_new_providerf (int ,char*,int ) ;
 int g_raid3_ndisks (struct g_raid3_softc*,int ) ;
 int g_raid3_sync_start (struct g_raid3_softc*) ;
 int g_topology_lock () ;
 int g_topology_unlock () ;
 int sx_assert (int *,int ) ;

__attribute__((used)) static void
g_raid3_launch_provider(struct g_raid3_softc *sc)
{
 struct g_provider *pp;
 struct g_raid3_disk *disk;
 int n;

 sx_assert(&sc->sc_lock, SX_LOCKED);

 g_topology_lock();
 pp = g_new_providerf(sc->sc_geom, "raid3/%s", sc->sc_name);
 pp->mediasize = sc->sc_mediasize;
 pp->sectorsize = sc->sc_sectorsize;
 pp->stripesize = 0;
 pp->stripeoffset = 0;
 for (n = 0; n < sc->sc_ndisks; n++) {
  disk = &sc->sc_disks[n];
  if (disk->d_consumer && disk->d_consumer->provider &&
      disk->d_consumer->provider->stripesize > pp->stripesize) {
   pp->stripesize = disk->d_consumer->provider->stripesize;
   pp->stripeoffset = disk->d_consumer->provider->stripeoffset;
  }
 }
 pp->stripesize *= sc->sc_ndisks - 1;
 pp->stripeoffset *= sc->sc_ndisks - 1;
 sc->sc_provider = pp;
 g_error_provider(pp, 0);
 g_topology_unlock();
 G_RAID3_DEBUG(0, "Device %s launched (%u/%u).", pp->name,
     g_raid3_ndisks(sc, G_RAID3_DISK_STATE_ACTIVE), sc->sc_ndisks);

 if (sc->sc_state == G_RAID3_DEVICE_STATE_DEGRADED)
  g_raid3_sync_start(sc);
}
