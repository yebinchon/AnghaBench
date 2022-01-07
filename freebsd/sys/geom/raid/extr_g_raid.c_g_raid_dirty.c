
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_raid_volume {int v_dirty; int v_name; struct g_raid_softc* v_softc; } ;
struct g_raid_softc {int sc_lock; } ;


 int G_RAID_DEBUG1 (int,struct g_raid_softc*,char*,int ) ;
 int SX_XLOCKED ;
 int g_raid_write_metadata (struct g_raid_softc*,struct g_raid_volume*,int *,int *) ;
 int g_topology_assert_not () ;
 int sx_assert (int *,int ) ;

__attribute__((used)) static void
g_raid_dirty(struct g_raid_volume *vol)
{
 struct g_raid_softc *sc;

 sc = vol->v_softc;
 g_topology_assert_not();
 sx_assert(&sc->sc_lock, SX_XLOCKED);



 vol->v_dirty = 1;
 G_RAID_DEBUG1(1, sc, "Volume %s marked as dirty.",
     vol->v_name);
 g_raid_write_metadata(sc, vol, ((void*)0), ((void*)0));
}
