
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int ;
struct mpt_softc {int raid_disks; int dev; int phydisk_sim; int sim; } ;
struct TYPE_3__ {int HotSparePool; } ;
struct TYPE_4__ {TYPE_1__ PhysDiskSettings; int PhysDiskID; } ;
struct mpt_raid_disk {TYPE_2__ config_page; } ;
typedef TYPE_2__ CONFIG_PAGE_RAID_PHYS_DISK_0 ;


 int cam_sim_bus (int ) ;
 int device_get_nameunit (int ) ;
 int mpt_disk_prt (struct mpt_softc*,struct mpt_raid_disk*,char*,char*,...) ;
 int mpt_prtc (struct mpt_softc*,char*,...) ;
 scalar_t__ powerof2 (int) ;

__attribute__((used)) static void
mpt_announce_disk(struct mpt_softc *mpt, struct mpt_raid_disk *mpt_disk)
{
 CONFIG_PAGE_RAID_PHYS_DISK_0 *disk_pg;
 int rd_bus = cam_sim_bus(mpt->sim);
 int pt_bus = cam_sim_bus(mpt->phydisk_sim);
 u_int i;

 disk_pg = &mpt_disk->config_page;
 mpt_disk_prt(mpt, mpt_disk,
       "Physical (%s:%d:%d:0), Pass-thru (%s:%d:%d:0)\n",
       device_get_nameunit(mpt->dev), rd_bus,
       disk_pg->PhysDiskID, device_get_nameunit(mpt->dev),
       pt_bus, mpt_disk - mpt->raid_disks);
 if (disk_pg->PhysDiskSettings.HotSparePool == 0)
  return;
 mpt_disk_prt(mpt, mpt_disk, "Member of Hot Spare Pool%s",
       powerof2(disk_pg->PhysDiskSettings.HotSparePool)
     ? ":" : "s:");
 for (i = 0; i < 8; i++) {
  u_int mask;

  mask = 0x1 << i;
  if ((disk_pg->PhysDiskSettings.HotSparePool & mask) == 0)
   continue;
  mpt_prtc(mpt, " %d", i);
 }
 mpt_prtc(mpt, "\n");
}
