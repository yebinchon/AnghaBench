
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ether {int dummy; } ;
struct rue_softc {int dummy; } ;
struct ifnet {int if_flags; } ;


 int IFF_PROMISC ;
 int MA_OWNED ;
 int RUE_CLRBIT (struct rue_softc*,int ,int ) ;
 int RUE_LOCK_ASSERT (struct rue_softc*,int ) ;
 int RUE_RCR ;
 int RUE_RCR_AAP ;
 int RUE_SETBIT (struct rue_softc*,int ,int ) ;
 struct ifnet* uether_getifp (struct usb_ether*) ;
 struct rue_softc* uether_getsc (struct usb_ether*) ;

__attribute__((used)) static void
rue_setpromisc(struct usb_ether *ue)
{
 struct rue_softc *sc = uether_getsc(ue);
 struct ifnet *ifp = uether_getifp(ue);

 RUE_LOCK_ASSERT(sc, MA_OWNED);


 if (ifp->if_flags & IFF_PROMISC)
  RUE_SETBIT(sc, RUE_RCR, RUE_RCR_AAP);
 else
  RUE_CLRBIT(sc, RUE_RCR, RUE_RCR_AAP);
}
