
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct g_raid3_softc {scalar_t__ sc_state; int sc_lock; int sc_name; struct g_raid3_disk* sc_syncdisk; } ;
struct TYPE_2__ {struct g_consumer* ds_consumer; int * ds_bios; } ;
struct g_raid3_disk {scalar_t__ d_state; int d_flags; TYPE_1__ d_sync; } ;
struct g_consumer {int dummy; } ;


 int G_RAID3_DEBUG (int ,char*,int ,int ) ;
 scalar_t__ G_RAID3_DEVICE_STATE_DEGRADED ;
 int G_RAID3_DISK_FLAG_DIRTY ;
 scalar_t__ G_RAID3_DISK_STATE_SYNCHRONIZING ;
 int KASSERT (int,char*) ;
 int M_RAID3 ;
 int SX_LOCKED ;
 int free (int *,int ) ;
 int g_raid3_disk_state2str (scalar_t__) ;
 int g_raid3_get_diskname (struct g_raid3_disk*) ;
 int g_raid3_kill_consumer (struct g_raid3_softc*,struct g_consumer*) ;
 int g_topology_assert_not () ;
 int g_topology_lock () ;
 int g_topology_unlock () ;
 int sx_assert (int *,int ) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;

__attribute__((used)) static void
g_raid3_sync_stop(struct g_raid3_softc *sc, int type)
{
 struct g_raid3_disk *disk;
 struct g_consumer *cp;

 g_topology_assert_not();
 sx_assert(&sc->sc_lock, SX_LOCKED);

 KASSERT(sc->sc_state == G_RAID3_DEVICE_STATE_DEGRADED,
     ("Device not in DEGRADED state (%s, %u).", sc->sc_name,
     sc->sc_state));
 disk = sc->sc_syncdisk;
 sc->sc_syncdisk = ((void*)0);
 KASSERT(disk != ((void*)0), ("No disk was synchronized (%s).", sc->sc_name));
 KASSERT(disk->d_state == G_RAID3_DISK_STATE_SYNCHRONIZING,
     ("Wrong disk state (%s, %s).", g_raid3_get_diskname(disk),
     g_raid3_disk_state2str(disk->d_state)));
 if (disk->d_sync.ds_consumer == ((void*)0))
  return;

 if (type == 0) {
  G_RAID3_DEBUG(0, "Device %s: rebuilding provider %s finished.",
      sc->sc_name, g_raid3_get_diskname(disk));
 } else {
  G_RAID3_DEBUG(0, "Device %s: rebuilding provider %s stopped.",
      sc->sc_name, g_raid3_get_diskname(disk));
 }
 free(disk->d_sync.ds_bios, M_RAID3);
 disk->d_sync.ds_bios = ((void*)0);
 cp = disk->d_sync.ds_consumer;
 disk->d_sync.ds_consumer = ((void*)0);
 disk->d_flags &= ~G_RAID3_DISK_FLAG_DIRTY;
 sx_xunlock(&sc->sc_lock);
 g_topology_lock();
 g_raid3_kill_consumer(sc, cp);
 g_topology_unlock();
 sx_xlock(&sc->sc_lock);
}
