
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_raid_volume {scalar_t__ v_disks_count; } ;
struct g_raid_subdisk {scalar_t__ sd_state; struct g_raid_volume* sd_volume; } ;
struct g_raid_softc {int dummy; } ;
struct g_raid_disk {int dummy; } ;


 scalar_t__ G_RAID_SUBDISK_S_ACTIVE ;
 scalar_t__ G_RAID_SUBDISK_S_RESYNC ;
 scalar_t__ G_RAID_SUBDISK_S_STALE ;
 scalar_t__ G_RAID_SUBDISK_S_UNINITIALIZED ;
 int g_raid_fail_disk (struct g_raid_softc*,struct g_raid_subdisk*,struct g_raid_disk*) ;
 scalar_t__ g_raid_nsubdisks (struct g_raid_volume*,scalar_t__) ;

__attribute__((used)) static void
g_raid_tr_raid1e_fail_disk(struct g_raid_softc *sc, struct g_raid_subdisk *sd,
    struct g_raid_disk *disk)
{
 struct g_raid_volume *vol;

 vol = sd->sd_volume;
 if ((g_raid_nsubdisks(vol, G_RAID_SUBDISK_S_ACTIVE) +
      g_raid_nsubdisks(vol, G_RAID_SUBDISK_S_RESYNC) +
      g_raid_nsubdisks(vol, G_RAID_SUBDISK_S_STALE) +
      g_raid_nsubdisks(vol, G_RAID_SUBDISK_S_UNINITIALIZED) <
      vol->v_disks_count) &&
     (sd->sd_state >= G_RAID_SUBDISK_S_UNINITIALIZED))
  return;
 g_raid_fail_disk(sc, sd, disk);
}
