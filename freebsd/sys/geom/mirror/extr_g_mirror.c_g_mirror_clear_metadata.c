
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct g_mirror_disk {TYPE_1__* d_softc; } ;
struct TYPE_2__ {scalar_t__ sc_type; int sc_lock; } ;


 int G_MIRROR_DEBUG (int,char*,int ,...) ;
 scalar_t__ G_MIRROR_TYPE_AUTOMATIC ;
 int SX_LOCKED ;
 int g_mirror_get_diskname (struct g_mirror_disk*) ;
 int g_mirror_write_metadata (struct g_mirror_disk*,int *) ;
 int g_topology_assert_not () ;
 int sx_assert (int *,int ) ;

__attribute__((used)) static int
g_mirror_clear_metadata(struct g_mirror_disk *disk)
{
 int error;

 g_topology_assert_not();
 sx_assert(&disk->d_softc->sc_lock, SX_LOCKED);

 if (disk->d_softc->sc_type != G_MIRROR_TYPE_AUTOMATIC)
  return (0);
 error = g_mirror_write_metadata(disk, ((void*)0));
 if (error == 0) {
  G_MIRROR_DEBUG(2, "Metadata on %s cleared.",
      g_mirror_get_diskname(disk));
 } else {
  G_MIRROR_DEBUG(0,
      "Cannot clear metadata on disk %s (error=%d).",
      g_mirror_get_diskname(disk), error);
 }
 return (error);
}
