
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_raid_softc {struct g_raid_md_object* sc_md; } ;
struct g_raid_md_object {int dummy; } ;
struct g_raid_md_nvidia_object {int mdio_started; } ;


 int G_RAID_DEBUG1 (int ,struct g_raid_softc*,char*) ;
 int G_RAID_NODE_E_START ;
 int g_raid_event_send (struct g_raid_softc*,int ,int ) ;

__attribute__((used)) static void
g_raid_nvidia_go(void *arg)
{
 struct g_raid_softc *sc;
 struct g_raid_md_object *md;
 struct g_raid_md_nvidia_object *mdi;

 sc = arg;
 md = sc->sc_md;
 mdi = (struct g_raid_md_nvidia_object *)md;
 if (!mdi->mdio_started) {
  G_RAID_DEBUG1(0, sc, "Force array start due to timeout.");
  g_raid_event_send(sc, G_RAID_NODE_E_START, 0);
 }
}
