
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_raid3_softc {int sc_lock; } ;
struct g_raid3_metadata {int dummy; } ;
struct g_raid3_disk {struct g_raid3_softc* d_softc; } ;


 int G_RAID3_DEBUG (int,char*,int ,...) ;
 int SX_LOCKED ;
 int g_raid3_fill_metadata (struct g_raid3_disk*,struct g_raid3_metadata*) ;
 int g_raid3_get_diskname (struct g_raid3_disk*) ;
 int g_raid3_write_metadata (struct g_raid3_disk*,struct g_raid3_metadata*) ;
 int g_topology_assert_not () ;
 int sx_assert (int *,int ) ;

void
g_raid3_update_metadata(struct g_raid3_disk *disk)
{
 struct g_raid3_softc *sc;
 struct g_raid3_metadata md;
 int error;

 g_topology_assert_not();
 sc = disk->d_softc;
 sx_assert(&sc->sc_lock, SX_LOCKED);

 g_raid3_fill_metadata(disk, &md);
 error = g_raid3_write_metadata(disk, &md);
 if (error == 0) {
  G_RAID3_DEBUG(2, "Metadata on %s updated.",
      g_raid3_get_diskname(disk));
 } else {
  G_RAID3_DEBUG(0,
      "Cannot update metadata on disk %s (error=%d).",
      g_raid3_get_diskname(disk), error);
 }
}
