
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct g_raid_volume {scalar_t__ v_writes; int v_last_write; int v_name; scalar_t__ v_dirty; TYPE_1__* v_provider; struct g_raid_softc* v_softc; } ;
struct g_raid_softc {int sc_lock; } ;
struct TYPE_2__ {scalar_t__ acw; } ;


 int G_RAID_DEBUG1 (int,struct g_raid_softc*,char*,int ) ;
 int SX_XLOCKED ;
 int g_raid_clean_time ;
 int g_raid_shutdown ;
 int g_raid_write_metadata (struct g_raid_softc*,struct g_raid_volume*,int *,int *) ;
 int g_topology_assert_not () ;
 int sx_assert (int *,int ) ;
 int time_uptime ;

__attribute__((used)) static void
g_raid_clean(struct g_raid_volume *vol, int acw)
{
 struct g_raid_softc *sc;
 int timeout;

 sc = vol->v_softc;
 g_topology_assert_not();
 sx_assert(&sc->sc_lock, SX_XLOCKED);



 if (!vol->v_dirty)
  return;
 if (vol->v_writes > 0)
  return;
 if (acw > 0 || (acw == -1 &&
     vol->v_provider != ((void*)0) && vol->v_provider->acw > 0)) {
  timeout = g_raid_clean_time - (time_uptime - vol->v_last_write);
  if (!g_raid_shutdown && timeout > 0)
   return;
 }
 vol->v_dirty = 0;
 G_RAID_DEBUG1(1, sc, "Volume %s marked as clean.",
     vol->v_name);
 g_raid_write_metadata(sc, vol, ((void*)0), ((void*)0));
}
