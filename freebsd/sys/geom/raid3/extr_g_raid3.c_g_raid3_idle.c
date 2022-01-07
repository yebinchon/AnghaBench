
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int ;
struct g_raid3_softc {int sc_flags; int sc_idle; scalar_t__ sc_writes; int sc_last_write; size_t sc_ndisks; int sc_name; struct g_raid3_disk* sc_disks; TYPE_1__* sc_provider; int sc_lock; } ;
struct g_raid3_disk {scalar_t__ d_state; int d_flags; } ;
struct TYPE_2__ {scalar_t__ acw; } ;


 int G_RAID3_DEBUG (int,char*,int ,int ) ;
 int G_RAID3_DEVICE_FLAG_NOFAILSYNC ;
 int G_RAID3_DISK_FLAG_DIRTY ;
 scalar_t__ G_RAID3_DISK_STATE_ACTIVE ;
 int SX_XLOCKED ;
 int g_raid3_get_diskname (struct g_raid3_disk*) ;
 int g_raid3_idletime ;
 int g_raid3_shutdown ;
 int g_raid3_update_metadata (struct g_raid3_disk*) ;
 int g_topology_assert_not () ;
 int sx_assert (int *,int ) ;
 int time_uptime ;

__attribute__((used)) static int
g_raid3_idle(struct g_raid3_softc *sc, int acw)
{
 struct g_raid3_disk *disk;
 u_int i;
 int timeout;

 g_topology_assert_not();
 sx_assert(&sc->sc_lock, SX_XLOCKED);

 if (sc->sc_provider == ((void*)0))
  return (0);
 if ((sc->sc_flags & G_RAID3_DEVICE_FLAG_NOFAILSYNC) != 0)
  return (0);
 if (sc->sc_idle)
  return (0);
 if (sc->sc_writes > 0)
  return (0);
 if (acw > 0 || (acw == -1 && sc->sc_provider->acw > 0)) {
  timeout = g_raid3_idletime - (time_uptime - sc->sc_last_write);
  if (!g_raid3_shutdown && timeout > 0)
   return (timeout);
 }
 sc->sc_idle = 1;
 for (i = 0; i < sc->sc_ndisks; i++) {
  disk = &sc->sc_disks[i];
  if (disk->d_state != G_RAID3_DISK_STATE_ACTIVE)
   continue;
  G_RAID3_DEBUG(1, "Disk %s (device %s) marked as clean.",
      g_raid3_get_diskname(disk), sc->sc_name);
  disk->d_flags &= ~G_RAID3_DISK_FLAG_DIRTY;
  g_raid3_update_metadata(disk);
 }
 return (0);
}
