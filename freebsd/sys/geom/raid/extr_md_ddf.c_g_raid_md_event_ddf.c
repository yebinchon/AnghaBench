
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct g_raid_softc {int dummy; } ;
struct g_raid_md_object {struct g_raid_softc* mdo_softc; } ;
struct g_raid_disk {int dummy; } ;



 int G_RAID_DISK_S_NONE ;
 int g_raid_change_disk_state (struct g_raid_disk*,int ) ;
 int g_raid_destroy_disk (struct g_raid_disk*) ;
 int g_raid_destroy_node (struct g_raid_softc*,int ) ;
 int g_raid_md_ddf_purge_volumes (struct g_raid_softc*) ;
 int g_raid_md_ddf_refill (struct g_raid_softc*) ;
 int g_raid_md_write_ddf (struct g_raid_md_object*,int *,int *,int *) ;
 int g_raid_ndisks (struct g_raid_softc*,int) ;

__attribute__((used)) static int
g_raid_md_event_ddf(struct g_raid_md_object *md,
    struct g_raid_disk *disk, u_int event)
{
 struct g_raid_softc *sc;

 sc = md->mdo_softc;
 if (disk == ((void*)0))
  return (-1);
 switch (event) {
 case 128:

  g_raid_change_disk_state(disk, G_RAID_DISK_S_NONE);
  g_raid_destroy_disk(disk);
  g_raid_md_ddf_purge_volumes(sc);


  g_raid_md_write_ddf(md, ((void*)0), ((void*)0), ((void*)0));


  if (g_raid_ndisks(sc, -1) == 0)
   g_raid_destroy_node(sc, 0);
  else
   g_raid_md_ddf_refill(sc);
  return (0);
 }
 return (-2);
}
