
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ether {int dummy; } ;
struct kue_softc {int sc_rxfilt; } ;
struct ifnet {int if_flags; } ;


 int IFF_PROMISC ;
 int KUE_CMD_SET_PKT_FILTER ;
 int KUE_LOCK_ASSERT (struct kue_softc*,int ) ;
 int KUE_RXFILT_PROMISC ;
 int MA_OWNED ;
 int kue_setword (struct kue_softc*,int ,int ) ;
 struct ifnet* uether_getifp (struct usb_ether*) ;
 struct kue_softc* uether_getsc (struct usb_ether*) ;

__attribute__((used)) static void
kue_setpromisc(struct usb_ether *ue)
{
 struct kue_softc *sc = uether_getsc(ue);
 struct ifnet *ifp = uether_getifp(ue);

 KUE_LOCK_ASSERT(sc, MA_OWNED);

 if (ifp->if_flags & IFF_PROMISC)
  sc->sc_rxfilt |= KUE_RXFILT_PROMISC;
 else
  sc->sc_rxfilt &= ~KUE_RXFILT_PROMISC;

 kue_setword(sc, KUE_CMD_SET_PKT_FILTER, sc->sc_rxfilt);
}
