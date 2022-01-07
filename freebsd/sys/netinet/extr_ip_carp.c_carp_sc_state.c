
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct carp_softc {int sc_suppress; int sc_md6_tmo; int sc_md_tmo; int sc_ad_tmo; TYPE_1__* sc_carpdev; } ;
struct TYPE_2__ {scalar_t__ if_link_state; int if_flags; } ;


 int CARP_LOCK_ASSERT (struct carp_softc*) ;
 int IFF_UP ;
 int INIT ;
 scalar_t__ LINK_STATE_UP ;
 int V_carp_allow ;
 int V_carp_ifdown_adj ;
 int callout_stop (int *) ;
 int carp_demote_adj (int ,char*) ;
 int carp_set_state (struct carp_softc*,int ,char*) ;
 int carp_setrun (struct carp_softc*,int ) ;

__attribute__((used)) static void
carp_sc_state(struct carp_softc *sc)
{

 CARP_LOCK_ASSERT(sc);

 if (sc->sc_carpdev->if_link_state != LINK_STATE_UP ||
     !(sc->sc_carpdev->if_flags & IFF_UP) ||
     !V_carp_allow) {
  callout_stop(&sc->sc_ad_tmo);






  carp_set_state(sc, INIT, "hardware interface down");
  carp_setrun(sc, 0);
  if (!sc->sc_suppress)
   carp_demote_adj(V_carp_ifdown_adj, "interface down");
  sc->sc_suppress = 1;
 } else {
  carp_set_state(sc, INIT, "hardware interface up");
  carp_setrun(sc, 0);
  if (sc->sc_suppress)
   carp_demote_adj(-V_carp_ifdown_adj, "interface up");
  sc->sc_suppress = 0;
 }
}
