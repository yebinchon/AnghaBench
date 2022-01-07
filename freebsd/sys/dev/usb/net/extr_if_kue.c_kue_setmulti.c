
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ether {int dummy; } ;
struct kue_softc {int sc_rxfilt; int sc_mcfilters; } ;
struct ifnet {int if_flags; } ;


 int ETHER_ADDR_LEN ;
 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 int KUE_CMD_SET_MCAST_FILTERS ;
 int KUE_CMD_SET_PKT_FILTER ;
 int KUE_CTL_WRITE ;
 int KUE_LOCK_ASSERT (struct kue_softc*,int ) ;
 int KUE_MCFILTCNT (struct kue_softc*) ;
 int KUE_RXFILT_ALLMULTI ;
 int KUE_RXFILT_MULTICAST ;
 int MA_OWNED ;
 int if_foreach_llmaddr (struct ifnet*,int ,struct kue_softc*) ;
 int kue_copy_maddr ;
 int kue_ctl (struct kue_softc*,int ,int ,int,int ,int) ;
 int kue_setword (struct kue_softc*,int ,int ) ;
 struct ifnet* uether_getifp (struct usb_ether*) ;
 struct kue_softc* uether_getsc (struct usb_ether*) ;

__attribute__((used)) static void
kue_setmulti(struct usb_ether *ue)
{
 struct kue_softc *sc = uether_getsc(ue);
 struct ifnet *ifp = uether_getifp(ue);
 int i;

 KUE_LOCK_ASSERT(sc, MA_OWNED);

 if (ifp->if_flags & IFF_ALLMULTI || ifp->if_flags & IFF_PROMISC) {
  sc->sc_rxfilt |= KUE_RXFILT_ALLMULTI;
  sc->sc_rxfilt &= ~KUE_RXFILT_MULTICAST;
  kue_setword(sc, KUE_CMD_SET_PKT_FILTER, sc->sc_rxfilt);
  return;
 }

 sc->sc_rxfilt &= ~KUE_RXFILT_ALLMULTI;

 i = if_foreach_llmaddr(ifp, kue_copy_maddr, sc);

 if (i >= KUE_MCFILTCNT(sc))
  sc->sc_rxfilt |= KUE_RXFILT_ALLMULTI;
 else {
  sc->sc_rxfilt |= KUE_RXFILT_MULTICAST;
  kue_ctl(sc, KUE_CTL_WRITE, KUE_CMD_SET_MCAST_FILTERS,
      i, sc->sc_mcfilters, i * ETHER_ADDR_LEN);
 }

 kue_setword(sc, KUE_CMD_SET_PKT_FILTER, sc->sc_rxfilt);
}
