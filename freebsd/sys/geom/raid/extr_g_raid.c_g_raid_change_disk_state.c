
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_raid_disk {int d_state; int d_softc; } ;


 int G_RAID_DEBUG1 (int ,int ,char*,int ,int ,int ) ;
 int g_raid_disk_state2str (int) ;
 int g_raid_get_diskname (struct g_raid_disk*) ;
 int g_raid_report_disk_state (struct g_raid_disk*) ;

void
g_raid_change_disk_state(struct g_raid_disk *disk, int state)
{

 G_RAID_DEBUG1(0, disk->d_softc, "Disk %s state changed from %s to %s.",
     g_raid_get_diskname(disk),
     g_raid_disk_state2str(disk->d_state),
     g_raid_disk_state2str(state));
 disk->d_state = state;
 g_raid_report_disk_state(disk);
}
