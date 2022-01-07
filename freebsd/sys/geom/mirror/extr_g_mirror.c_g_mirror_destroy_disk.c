
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_mirror_softc {struct g_mirror_disk* sc_hint; int sc_lock; } ;
struct g_mirror_disk {int d_state; int d_consumer; struct g_mirror_softc* d_softc; } ;






 int KASSERT (int,char*) ;
 int LIST_REMOVE (struct g_mirror_disk*,int ) ;
 int M_MIRROR ;
 int SX_XLOCKED ;
 int d_next ;
 int free (struct g_mirror_disk*,int ) ;
 int g_mirror_disconnect_consumer (struct g_mirror_softc*,int ) ;
 int g_mirror_disk_state2str (int) ;
 int g_mirror_event_cancel (struct g_mirror_disk*) ;
 int g_mirror_get_diskname (struct g_mirror_disk*) ;
 int g_mirror_sync_stop (struct g_mirror_disk*,int) ;
 int g_topology_assert_not () ;
 int g_topology_lock () ;
 int g_topology_unlock () ;
 int sx_assert (int *,int ) ;

__attribute__((used)) static void
g_mirror_destroy_disk(struct g_mirror_disk *disk)
{
 struct g_mirror_softc *sc;

 g_topology_assert_not();
 sc = disk->d_softc;
 sx_assert(&sc->sc_lock, SX_XLOCKED);

 g_topology_lock();
 LIST_REMOVE(disk, d_next);
 g_topology_unlock();
 g_mirror_event_cancel(disk);
 if (sc->sc_hint == disk)
  sc->sc_hint = ((void*)0);
 switch (disk->d_state) {
 case 128:
  g_mirror_sync_stop(disk, 1);

 case 130:
 case 129:
 case 131:
  g_topology_lock();
  g_mirror_disconnect_consumer(sc, disk->d_consumer);
  g_topology_unlock();
  free(disk, M_MIRROR);
  break;
 default:
  KASSERT(0 == 1, ("Wrong disk state (%s, %s).",
      g_mirror_get_diskname(disk),
      g_mirror_disk_state2str(disk->d_state)));
 }
}
