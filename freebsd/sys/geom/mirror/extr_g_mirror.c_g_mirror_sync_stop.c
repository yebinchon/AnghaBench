
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int ds_ndisks; } ;
struct g_mirror_softc {int sc_lock; TYPE_2__ sc_sync; int sc_name; } ;
struct TYPE_3__ {struct g_consumer* ds_consumer; int * ds_bios; } ;
struct g_mirror_disk {scalar_t__ d_state; int d_flags; TYPE_1__ d_sync; struct g_mirror_softc* d_softc; } ;
struct g_consumer {int dummy; } ;


 int G_MIRROR_DEBUG (int ,char*,int ,int ) ;
 int G_MIRROR_DISK_FLAG_DIRTY ;
 scalar_t__ G_MIRROR_DISK_STATE_SYNCHRONIZING ;
 int KASSERT (int,char*) ;
 int M_MIRROR ;
 int SX_LOCKED ;
 int free (int *,int ) ;
 int g_mirror_disk_state2str (scalar_t__) ;
 int g_mirror_get_diskname (struct g_mirror_disk*) ;
 int g_mirror_kill_consumer (struct g_mirror_softc*,struct g_consumer*) ;
 int g_mirror_regular_release (struct g_mirror_softc*) ;
 int g_topology_assert_not () ;
 int g_topology_lock () ;
 int g_topology_unlock () ;
 int sx_assert (int *,int ) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;

__attribute__((used)) static void
g_mirror_sync_stop(struct g_mirror_disk *disk, int type)
{
 struct g_mirror_softc *sc;
 struct g_consumer *cp;

 g_topology_assert_not();
 sc = disk->d_softc;
 sx_assert(&sc->sc_lock, SX_LOCKED);

 KASSERT(disk->d_state == G_MIRROR_DISK_STATE_SYNCHRONIZING,
     ("Wrong disk state (%s, %s).", g_mirror_get_diskname(disk),
     g_mirror_disk_state2str(disk->d_state)));
 if (disk->d_sync.ds_consumer == ((void*)0))
  return;

 if (type == 0) {
  G_MIRROR_DEBUG(0, "Device %s: rebuilding provider %s finished.",
      sc->sc_name, g_mirror_get_diskname(disk));
 } else {
  G_MIRROR_DEBUG(0, "Device %s: rebuilding provider %s stopped.",
      sc->sc_name, g_mirror_get_diskname(disk));
 }
 g_mirror_regular_release(sc);
 free(disk->d_sync.ds_bios, M_MIRROR);
 disk->d_sync.ds_bios = ((void*)0);
 cp = disk->d_sync.ds_consumer;
 disk->d_sync.ds_consumer = ((void*)0);
 disk->d_flags &= ~G_MIRROR_DISK_FLAG_DIRTY;
 sc->sc_sync.ds_ndisks--;
 sx_xunlock(&sc->sc_lock);
 g_topology_lock();
 g_mirror_kill_consumer(sc, cp);
 g_topology_unlock();
 sx_xlock(&sc->sc_lock);
}
