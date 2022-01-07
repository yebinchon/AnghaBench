
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ether {int dummy; } ;
struct ifnet {int if_flags; } ;
struct aue_softc {int dummy; } ;


 int AUE_CLRBIT (struct aue_softc*,int ,int ) ;
 int AUE_CTL2 ;
 int AUE_CTL2_RX_PROMISC ;
 int AUE_LOCK_ASSERT (struct aue_softc*,int ) ;
 int AUE_SETBIT (struct aue_softc*,int ,int ) ;
 int IFF_PROMISC ;
 int MA_OWNED ;
 struct ifnet* uether_getifp (struct usb_ether*) ;
 struct aue_softc* uether_getsc (struct usb_ether*) ;

__attribute__((used)) static void
aue_setpromisc(struct usb_ether *ue)
{
 struct aue_softc *sc = uether_getsc(ue);
 struct ifnet *ifp = uether_getifp(ue);

 AUE_LOCK_ASSERT(sc, MA_OWNED);


 if (ifp->if_flags & IFF_PROMISC)
  AUE_SETBIT(sc, AUE_CTL2, AUE_CTL2_RX_PROMISC);
 else
  AUE_CLRBIT(sc, AUE_CTL2, AUE_CTL2_RX_PROMISC);
}
