
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct g_raid_softc {scalar_t__ sc_md; int sc_lock; } ;
struct g_raid_disk {struct g_raid_softc* d_softc; } ;


 int G_RAID_DEBUG1 (int,struct g_raid_softc*,char*,int ,int ) ;
 int G_RAID_MD_EVENT (scalar_t__,struct g_raid_disk*,int ) ;
 int SX_XLOCKED ;
 int g_raid_disk_event2str (int ) ;
 int g_raid_get_diskname (struct g_raid_disk*) ;
 int sx_assert (int *,int ) ;

__attribute__((used)) static int
g_raid_update_disk(struct g_raid_disk *disk, u_int event)
{
 struct g_raid_softc *sc;

 sc = disk->d_softc;
 sx_assert(&sc->sc_lock, SX_XLOCKED);

 G_RAID_DEBUG1(2, sc, "Event %s for disk %s.",
     g_raid_disk_event2str(event),
     g_raid_get_diskname(disk));

 if (sc->sc_md)
  G_RAID_MD_EVENT(sc->sc_md, disk, event);
 return (0);
}
