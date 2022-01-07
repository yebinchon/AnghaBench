
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_raid_subdisk {int sd_volume; } ;
struct g_raid_softc {int dummy; } ;
struct g_raid_disk {int dummy; } ;


 int G_RAID_SUBDISK_S_ACTIVE ;
 int g_raid_fail_disk (struct g_raid_softc*,struct g_raid_subdisk*,struct g_raid_disk*) ;
 struct g_raid_subdisk* g_raid_get_subdisk (int ,int ) ;
 int g_raid_nsubdisks (int ,int ) ;

__attribute__((used)) static void
g_raid_tr_raid1_fail_disk(struct g_raid_softc *sc, struct g_raid_subdisk *sd,
    struct g_raid_disk *disk)
{
 if (g_raid_nsubdisks(sd->sd_volume, G_RAID_SUBDISK_S_ACTIVE) == 1 &&
     g_raid_get_subdisk(sd->sd_volume, G_RAID_SUBDISK_S_ACTIVE) == sd)
  return;
 g_raid_fail_disk(sc, sd, disk);
}
