
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_mirror_softc {scalar_t__ sc_type; int sc_flags; int sc_lock; } ;
struct g_mirror_metadata {int dummy; } ;
struct g_mirror_disk {struct g_mirror_softc* d_softc; } ;


 int G_MIRROR_DEBUG (int,char*,int ,...) ;
 int G_MIRROR_DEVICE_FLAG_WIPE ;
 scalar_t__ G_MIRROR_TYPE_AUTOMATIC ;
 int SX_LOCKED ;
 int g_mirror_fill_metadata (struct g_mirror_softc*,struct g_mirror_disk*,struct g_mirror_metadata*) ;
 int g_mirror_get_diskname (struct g_mirror_disk*) ;
 int g_mirror_write_metadata (struct g_mirror_disk*,struct g_mirror_metadata*) ;
 int g_topology_assert_not () ;
 int sx_assert (int *,int ) ;

void
g_mirror_update_metadata(struct g_mirror_disk *disk)
{
 struct g_mirror_softc *sc;
 struct g_mirror_metadata md;
 int error;

 g_topology_assert_not();
 sc = disk->d_softc;
 sx_assert(&sc->sc_lock, SX_LOCKED);

 if (sc->sc_type != G_MIRROR_TYPE_AUTOMATIC)
  return;
 if ((sc->sc_flags & G_MIRROR_DEVICE_FLAG_WIPE) == 0)
  g_mirror_fill_metadata(sc, disk, &md);
 error = g_mirror_write_metadata(disk, &md);
 if (error == 0) {
  G_MIRROR_DEBUG(2, "Metadata on %s updated.",
      g_mirror_get_diskname(disk));
 } else {
  G_MIRROR_DEBUG(0,
      "Cannot update metadata on disk %s (error=%d).",
      g_mirror_get_diskname(disk), error);
 }
}
