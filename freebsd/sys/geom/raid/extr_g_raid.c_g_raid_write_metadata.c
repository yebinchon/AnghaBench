
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_raid_volume {int dummy; } ;
struct g_raid_subdisk {int dummy; } ;
struct g_raid_softc {scalar_t__ sc_stopping; scalar_t__ sc_md; } ;
struct g_raid_disk {int dummy; } ;


 scalar_t__ G_RAID_DESTROY_HARD ;
 int G_RAID_MD_WRITE (scalar_t__,struct g_raid_volume*,struct g_raid_subdisk*,struct g_raid_disk*) ;

void g_raid_write_metadata(struct g_raid_softc *sc, struct g_raid_volume *vol,
    struct g_raid_subdisk *sd, struct g_raid_disk *disk)
{

 if (sc->sc_stopping == G_RAID_DESTROY_HARD)
  return;
 if (sc->sc_md)
  G_RAID_MD_WRITE(sc->sc_md, vol, sd, disk);
}
