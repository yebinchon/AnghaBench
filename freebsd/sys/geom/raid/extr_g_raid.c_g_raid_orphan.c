
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_raid_disk {int dummy; } ;
struct g_consumer {struct g_raid_disk* private; } ;


 int G_RAID_DISK_E_DISCONNECTED ;
 int G_RAID_EVENT_DISK ;
 int g_raid_event_send (struct g_raid_disk*,int ,int ) ;
 int g_topology_assert () ;

__attribute__((used)) static void
g_raid_orphan(struct g_consumer *cp)
{
 struct g_raid_disk *disk;

 g_topology_assert();

 disk = cp->private;
 if (disk == ((void*)0))
  return;
 g_raid_event_send(disk, G_RAID_DISK_E_DISCONNECTED,
     G_RAID_EVENT_DISK);
}
