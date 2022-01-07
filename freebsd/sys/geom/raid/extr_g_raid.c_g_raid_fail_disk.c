
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_raid_subdisk {struct g_raid_disk* sd_disk; } ;
struct g_raid_softc {scalar_t__ sc_md; } ;
struct g_raid_disk {scalar_t__ d_state; } ;


 int G_RAID_DEBUG1 (int ,struct g_raid_softc*,char*,...) ;
 scalar_t__ G_RAID_DISK_S_ACTIVE ;
 int G_RAID_MD_FAIL_DISK (scalar_t__,struct g_raid_subdisk*,struct g_raid_disk*) ;
 int g_raid_disk_state2str (scalar_t__) ;

void g_raid_fail_disk(struct g_raid_softc *sc,
    struct g_raid_subdisk *sd, struct g_raid_disk *disk)
{

 if (disk == ((void*)0))
  disk = sd->sd_disk;
 if (disk == ((void*)0)) {
  G_RAID_DEBUG1(0, sc, "Warning! Fail request to an absent disk!");
  return;
 }
 if (disk->d_state != G_RAID_DISK_S_ACTIVE) {
  G_RAID_DEBUG1(0, sc, "Warning! Fail request to a disk in a "
      "wrong state (%s)!", g_raid_disk_state2str(disk->d_state));
  return;
 }
 if (sc->sc_md)
  G_RAID_MD_FAIL_DISK(sc->sc_md, sd, disk);
}
