
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct usb_ether {struct udav_softc* ue_sc; } ;
struct udav_softc {int sc_ue; } ;
struct ifnet {int if_flags; } ;


 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 int UDAV_RCR ;
 int UDAV_RCR_ALL ;
 int UDAV_RCR_PRMSC ;
 int udav_csr_read1 (struct udav_softc*,int ) ;
 int udav_csr_write1 (struct udav_softc*,int ,int) ;
 struct ifnet* uether_getifp (int *) ;

__attribute__((used)) static void
udav_setpromisc(struct usb_ether *ue)
{
 struct udav_softc *sc = ue->ue_sc;
 struct ifnet *ifp = uether_getifp(&sc->sc_ue);
 uint8_t rxmode;

 rxmode = udav_csr_read1(sc, UDAV_RCR);
 rxmode &= ~(UDAV_RCR_ALL | UDAV_RCR_PRMSC);

 if (ifp->if_flags & IFF_PROMISC)
  rxmode |= UDAV_RCR_ALL | UDAV_RCR_PRMSC;
 else if (ifp->if_flags & IFF_ALLMULTI)
  rxmode |= UDAV_RCR_ALL;


 udav_csr_write1(sc, UDAV_RCR, rxmode);
}
