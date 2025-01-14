
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct g_raid3_softc {size_t sc_ndisks; struct g_raid3_disk* sc_disks; int sc_lock; } ;
struct g_raid3_disk {int d_state; } ;


 int G_RAID3_DISK_STATE_NODISK ;
 int SX_LOCKED ;
 int sx_assert (int *,int ) ;

u_int
g_raid3_ndisks(struct g_raid3_softc *sc, int state)
{
 struct g_raid3_disk *disk;
 u_int n, ndisks;

 sx_assert(&sc->sc_lock, SX_LOCKED);

 for (n = ndisks = 0; n < sc->sc_ndisks; n++) {
  disk = &sc->sc_disks[n];
  if (disk->d_state == G_RAID3_DISK_STATE_NODISK)
   continue;
  if (state == -1 || disk->d_state == state)
   ndisks++;
 }
 return (ndisks);
}
