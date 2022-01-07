
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct usb_ether {int dummy; } ;
struct ifnet {int if_flags; } ;
struct aue_softc {int dummy; } ;


 int AUE_CLRBIT (struct aue_softc*,int ,int ) ;
 int AUE_CTL0 ;
 int AUE_CTL0_ALLMULTI ;
 int AUE_LOCK_ASSERT (struct aue_softc*,int ) ;
 scalar_t__ AUE_MAR0 ;
 int AUE_SETBIT (struct aue_softc*,int ,int ) ;
 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 int MA_OWNED ;
 int aue_csr_write_1 (struct aue_softc*,scalar_t__,int ) ;
 int aue_hash_maddr ;
 int if_foreach_llmaddr (struct ifnet*,int ,int *) ;
 struct ifnet* uether_getifp (struct usb_ether*) ;
 struct aue_softc* uether_getsc (struct usb_ether*) ;

__attribute__((used)) static void
aue_setmulti(struct usb_ether *ue)
{
 struct aue_softc *sc = uether_getsc(ue);
 struct ifnet *ifp = uether_getifp(ue);
 uint32_t i;
 uint8_t hashtbl[8] = { 0, 0, 0, 0, 0, 0, 0, 0 };

 AUE_LOCK_ASSERT(sc, MA_OWNED);

 if (ifp->if_flags & IFF_ALLMULTI || ifp->if_flags & IFF_PROMISC) {
  AUE_SETBIT(sc, AUE_CTL0, AUE_CTL0_ALLMULTI);
  return;
 }

 AUE_CLRBIT(sc, AUE_CTL0, AUE_CTL0_ALLMULTI);


 if_foreach_llmaddr(ifp, aue_hash_maddr, hashtbl);


 for (i = 0; i != 8; i++)
  aue_csr_write_1(sc, AUE_MAR0 + i, hashtbl[i]);
}
