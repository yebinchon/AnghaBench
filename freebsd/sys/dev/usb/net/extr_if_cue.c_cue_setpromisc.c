
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ether {int dummy; } ;
struct ifnet {int if_flags; } ;
struct cue_softc {int dummy; } ;


 int CUE_CLRBIT (struct cue_softc*,int ,int ) ;
 int CUE_ETHCTL ;
 int CUE_ETHCTL_PROMISC ;
 int CUE_LOCK_ASSERT (struct cue_softc*,int ) ;
 int CUE_SETBIT (struct cue_softc*,int ,int ) ;
 int IFF_PROMISC ;
 int MA_OWNED ;
 int cue_setmulti (struct usb_ether*) ;
 struct ifnet* uether_getifp (struct usb_ether*) ;
 struct cue_softc* uether_getsc (struct usb_ether*) ;

__attribute__((used)) static void
cue_setpromisc(struct usb_ether *ue)
{
 struct cue_softc *sc = uether_getsc(ue);
 struct ifnet *ifp = uether_getifp(ue);

 CUE_LOCK_ASSERT(sc, MA_OWNED);


 if (ifp->if_flags & IFF_PROMISC)
  CUE_SETBIT(sc, CUE_ETHCTL, CUE_ETHCTL_PROMISC);
 else
  CUE_CLRBIT(sc, CUE_ETHCTL, CUE_ETHCTL_PROMISC);


 cue_setmulti(ue);
}
