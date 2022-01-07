
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct g_raid_softc {scalar_t__ sc_md; int sc_lock; } ;


 int G_RAID_DEBUG1 (int,struct g_raid_softc*,char*,int ) ;
 int G_RAID_MD_EVENT (scalar_t__,int *,scalar_t__) ;
 scalar_t__ G_RAID_NODE_E_WAKE ;
 int SX_XLOCKED ;
 int g_raid_node_event2str (scalar_t__) ;
 int sx_assert (int *,int ) ;

__attribute__((used)) static int
g_raid_update_node(struct g_raid_softc *sc, u_int event)
{
 sx_assert(&sc->sc_lock, SX_XLOCKED);

 G_RAID_DEBUG1(2, sc, "Event %s for the array.",
     g_raid_node_event2str(event));

 if (event == G_RAID_NODE_E_WAKE)
  return (0);
 if (sc->sc_md)
  G_RAID_MD_EVENT(sc->sc_md, ((void*)0), event);
 return (0);
}
