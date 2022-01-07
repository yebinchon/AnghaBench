
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct glc_softc {int sc_mtx; TYPE_1__* sc_ifp; int sc_dev; int sc_bus; int sc_interrupt_status; } ;
struct TYPE_2__ {int if_link_state; } ;


 int GELIC_GET_LINK_STATUS ;
 int GELIC_INT_PHY ;
 int GELIC_INT_RXDONE ;
 int GELIC_INT_RXFRAME ;
 int GELIC_INT_TXDONE ;
 int GELIC_INT_TX_CHAIN_END ;
 int GELIC_LINK_UP ;
 int GELIC_VLAN_TX_ETHERNET ;
 int LINK_STATE_DOWN ;
 int LINK_STATE_UP ;
 int atomic_readandclear_64 (int *) ;
 int glc_rxintr (struct glc_softc*) ;
 int glc_txintr (struct glc_softc*) ;
 int if_link_state_change (TYPE_1__*,int) ;
 int lv1_net_control (int ,int ,int ,int ,int ,int ,int*,int*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static void
glc_intr(void *xsc)
{
 struct glc_softc *sc = xsc;
 uint64_t status, linkstat, junk;

 mtx_lock(&sc->sc_mtx);

 status = atomic_readandclear_64(&sc->sc_interrupt_status);

 if (status == 0) {
  mtx_unlock(&sc->sc_mtx);
  return;
 }

 if (status & (GELIC_INT_RXDONE | GELIC_INT_RXFRAME))
  glc_rxintr(sc);

 if (status & (GELIC_INT_TXDONE | GELIC_INT_TX_CHAIN_END))
  glc_txintr(sc);

 if (status & GELIC_INT_PHY) {
  lv1_net_control(sc->sc_bus, sc->sc_dev, GELIC_GET_LINK_STATUS,
      GELIC_VLAN_TX_ETHERNET, 0, 0, &linkstat, &junk);

  linkstat = (linkstat & GELIC_LINK_UP) ?
      LINK_STATE_UP : LINK_STATE_DOWN;
  if (linkstat != sc->sc_ifp->if_link_state)
   if_link_state_change(sc->sc_ifp, linkstat);
 }

 mtx_unlock(&sc->sc_mtx);
}
