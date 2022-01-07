
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtnet_softc {int vtnet_link_active; struct ifnet* vtnet_ifp; } ;
struct ifnet {int dummy; } ;


 int LINK_STATE_DOWN ;
 int LINK_STATE_UP ;
 int VTNET_CORE_LOCK_ASSERT (struct vtnet_softc*) ;
 int if_link_state_change (struct ifnet*,int ) ;
 int vtnet_is_link_up (struct vtnet_softc*) ;

__attribute__((used)) static void
vtnet_update_link_status(struct vtnet_softc *sc)
{
 struct ifnet *ifp;
 int link;

 ifp = sc->vtnet_ifp;

 VTNET_CORE_LOCK_ASSERT(sc);
 link = vtnet_is_link_up(sc);


 if (link != 0 && sc->vtnet_link_active == 0) {
  sc->vtnet_link_active = 1;
  if_link_state_change(ifp, LINK_STATE_UP);
 } else if (link == 0 && sc->vtnet_link_active != 0) {
  sc->vtnet_link_active = 0;
  if_link_state_change(ifp, LINK_STATE_DOWN);
 }
}
