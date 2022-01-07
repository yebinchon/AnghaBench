
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct g_raid_volume {scalar_t__ v_tr; int v_name; } ;
struct g_raid_subdisk {scalar_t__ sd_disk; int sd_pos; struct g_raid_volume* sd_volume; struct g_raid_softc* sd_softc; } ;
struct g_raid_softc {int sc_lock; } ;


 int G_RAID_DEBUG1 (int,struct g_raid_softc*,char*,int ,int ,int ,char*) ;
 int G_RAID_TR_EVENT (scalar_t__,struct g_raid_subdisk*,int ) ;
 int SX_XLOCKED ;
 char* g_raid_get_diskname (scalar_t__) ;
 int g_raid_subdisk_event2str (int ) ;
 int sx_assert (int *,int ) ;

__attribute__((used)) static int
g_raid_update_subdisk(struct g_raid_subdisk *sd, u_int event)
{
 struct g_raid_softc *sc;
 struct g_raid_volume *vol;

 sc = sd->sd_softc;
 vol = sd->sd_volume;
 sx_assert(&sc->sc_lock, SX_XLOCKED);

 G_RAID_DEBUG1(2, sc, "Event %s for subdisk %s:%d-%s.",
     g_raid_subdisk_event2str(event),
     vol->v_name, sd->sd_pos,
     sd->sd_disk ? g_raid_get_diskname(sd->sd_disk) : "[none]");
 if (vol->v_tr)
  G_RAID_TR_EVENT(vol->v_tr, sd, event);

 return (0);
}
