
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct g_raid3_disk {struct g_consumer* d_consumer; TYPE_1__* d_softc; } ;
struct g_provider {int name; } ;
struct g_consumer {scalar_t__ index; struct g_raid3_disk* private; } ;
struct TYPE_2__ {int sc_geom; int sc_name; } ;


 int G_RAID3_DEBUG (int,char*,int ,...) ;
 int KASSERT (int ,char*) ;
 int g_access (struct g_consumer*,int,int,int) ;
 int g_attach (struct g_consumer*,struct g_provider*) ;
 int g_destroy_consumer (struct g_consumer*) ;
 int g_detach (struct g_consumer*) ;
 struct g_consumer* g_new_consumer (int ) ;
 int g_raid3_get_diskname (struct g_raid3_disk*) ;
 int g_topology_assert_not () ;
 int g_topology_lock () ;
 int g_topology_unlock () ;

__attribute__((used)) static int
g_raid3_connect_disk(struct g_raid3_disk *disk, struct g_provider *pp)
{
 struct g_consumer *cp;
 int error;

 g_topology_assert_not();
 KASSERT(disk->d_consumer == ((void*)0),
     ("Disk already connected (device %s).", disk->d_softc->sc_name));

 g_topology_lock();
 cp = g_new_consumer(disk->d_softc->sc_geom);
 error = g_attach(cp, pp);
 if (error != 0) {
  g_destroy_consumer(cp);
  g_topology_unlock();
  return (error);
 }
 error = g_access(cp, 1, 1, 1);
  g_topology_unlock();
 if (error != 0) {
  g_detach(cp);
  g_destroy_consumer(cp);
  G_RAID3_DEBUG(0, "Cannot open consumer %s (error=%d).",
      pp->name, error);
  return (error);
 }
 disk->d_consumer = cp;
 disk->d_consumer->private = disk;
 disk->d_consumer->index = 0;
 G_RAID3_DEBUG(2, "Disk %s connected.", g_raid3_get_diskname(disk));
 return (0);
}
