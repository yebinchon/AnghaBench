
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct g_raid3_disk {TYPE_1__* d_softc; } ;
struct g_consumer {struct g_raid3_disk* private; } ;
struct TYPE_2__ {int sc_bump_id; } ;


 int G_RAID3_BUMP_SYNCID ;
 int G_RAID3_DISK_STATE_DISCONNECTED ;
 int G_RAID3_EVENT_DONTWAIT ;
 int g_raid3_event_send (struct g_raid3_disk*,int ,int ) ;
 int g_topology_assert () ;

__attribute__((used)) static void
g_raid3_orphan(struct g_consumer *cp)
{
 struct g_raid3_disk *disk;

 g_topology_assert();

 disk = cp->private;
 if (disk == ((void*)0))
  return;
 disk->d_softc->sc_bump_id = G_RAID3_BUMP_SYNCID;
 g_raid3_event_send(disk, G_RAID3_DISK_STATE_DISCONNECTED,
     G_RAID3_EVENT_DONTWAIT);
}
