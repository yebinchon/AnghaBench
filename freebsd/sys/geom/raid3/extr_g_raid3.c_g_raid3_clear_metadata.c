
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct g_raid3_disk {TYPE_1__* d_softc; } ;
struct TYPE_2__ {int sc_lock; } ;


 int G_RAID3_DEBUG (int,char*,int ,...) ;
 int SX_LOCKED ;
 int g_raid3_get_diskname (struct g_raid3_disk*) ;
 int g_raid3_write_metadata (struct g_raid3_disk*,int *) ;
 int g_topology_assert_not () ;
 int sx_assert (int *,int ) ;

int
g_raid3_clear_metadata(struct g_raid3_disk *disk)
{
 int error;

 g_topology_assert_not();
 sx_assert(&disk->d_softc->sc_lock, SX_LOCKED);

 error = g_raid3_write_metadata(disk, ((void*)0));
 if (error == 0) {
  G_RAID3_DEBUG(2, "Metadata on %s cleared.",
      g_raid3_get_diskname(disk));
 } else {
  G_RAID3_DEBUG(0,
      "Cannot clear metadata on disk %s (error=%d).",
      g_raid3_get_diskname(disk), error);
 }
 return (error);
}
