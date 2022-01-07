
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_mirror_softc {struct g_mirror_disk* sc_hint; int sc_disks; } ;
struct g_mirror_disk {scalar_t__ d_state; } ;


 scalar_t__ G_MIRROR_DISK_STATE_ACTIVE ;
 struct g_mirror_disk* LIST_FIRST (int *) ;
 void* g_mirror_find_next (struct g_mirror_softc*,struct g_mirror_disk*) ;

__attribute__((used)) static struct g_mirror_disk *
g_mirror_get_disk(struct g_mirror_softc *sc)
{
 struct g_mirror_disk *disk;

 if (sc->sc_hint == ((void*)0)) {
  sc->sc_hint = LIST_FIRST(&sc->sc_disks);
  if (sc->sc_hint == ((void*)0))
   return (((void*)0));
 }
 disk = sc->sc_hint;
 if (disk->d_state != G_MIRROR_DISK_STATE_ACTIVE) {
  disk = g_mirror_find_next(sc, disk);
  if (disk == ((void*)0))
   return (((void*)0));
 }
 sc->sc_hint = g_mirror_find_next(sc, disk);
 return (disk);
}
