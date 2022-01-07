
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_raid3_softc {int * sc_syncdisk; int sc_lock; } ;
struct g_raid3_disk {int d_state; int * d_consumer; struct g_raid3_softc* d_softc; } ;




 int G_RAID3_DISK_STATE_NODISK ;


 int KASSERT (int,char*) ;
 int SX_XLOCKED ;
 int g_raid3_disconnect_consumer (struct g_raid3_softc*,int *) ;
 int g_raid3_disk_state2str (int) ;
 int g_raid3_event_cancel (struct g_raid3_disk*) ;
 int g_raid3_get_diskname (struct g_raid3_disk*) ;
 int g_raid3_sync_stop (struct g_raid3_softc*,int) ;
 int g_topology_assert_not () ;
 int g_topology_lock () ;
 int g_topology_unlock () ;
 int sx_assert (int *,int ) ;

__attribute__((used)) static void
g_raid3_destroy_disk(struct g_raid3_disk *disk)
{
 struct g_raid3_softc *sc;

 g_topology_assert_not();
 sc = disk->d_softc;
 sx_assert(&sc->sc_lock, SX_XLOCKED);

 if (disk->d_state == G_RAID3_DISK_STATE_NODISK)
  return;
 g_raid3_event_cancel(disk);
 switch (disk->d_state) {
 case 128:
  if (sc->sc_syncdisk != ((void*)0))
   g_raid3_sync_stop(sc, 1);

 case 130:
 case 129:
 case 131:
  g_topology_lock();
  g_raid3_disconnect_consumer(sc, disk->d_consumer);
  g_topology_unlock();
  disk->d_consumer = ((void*)0);
  break;
 default:
  KASSERT(0 == 1, ("Wrong disk state (%s, %s).",
      g_raid3_get_diskname(disk),
      g_raid3_disk_state2str(disk->d_state)));
 }
 disk->d_state = G_RAID3_DISK_STATE_NODISK;
}
