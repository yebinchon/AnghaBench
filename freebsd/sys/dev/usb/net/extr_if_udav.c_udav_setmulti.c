
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct usb_ether {struct udav_softc* ue_sc; } ;
struct udav_softc {int sc_ue; } ;
struct ifnet {int if_flags; } ;
typedef int hashtbl ;


 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 int MA_OWNED ;
 int UDAV_CLRBIT (struct udav_softc*,int ,int) ;
 int UDAV_LOCK_ASSERT (struct udav_softc*,int ) ;
 int UDAV_MAR ;
 int UDAV_RCR ;
 int UDAV_RCR_ALL ;
 int UDAV_RCR_PRMSC ;
 int UDAV_SETBIT (struct udav_softc*,int ,int) ;
 int if_foreach_llmaddr (struct ifnet*,int ,int*) ;
 int memset (int*,int,int) ;
 int udav_csr_write (struct udav_softc*,int ,int*,int) ;
 int udav_hash_maddr ;
 struct ifnet* uether_getifp (int *) ;

__attribute__((used)) static void
udav_setmulti(struct usb_ether *ue)
{
 struct udav_softc *sc = ue->ue_sc;
 struct ifnet *ifp = uether_getifp(&sc->sc_ue);
 uint8_t hashtbl[8] = { 0, 0, 0, 0, 0, 0, 0, 0 };

 UDAV_LOCK_ASSERT(sc, MA_OWNED);

 if (ifp->if_flags & IFF_ALLMULTI || ifp->if_flags & IFF_PROMISC) {
  UDAV_SETBIT(sc, UDAV_RCR, UDAV_RCR_ALL|UDAV_RCR_PRMSC);
  return;
 }


 memset(hashtbl, 0x00, sizeof(hashtbl));
 hashtbl[7] |= 0x80;
 udav_csr_write(sc, UDAV_MAR, hashtbl, sizeof(hashtbl));


 if_foreach_llmaddr(ifp, udav_hash_maddr, hashtbl);


 UDAV_CLRBIT(sc, UDAV_RCR, UDAV_RCR_ALL);


 udav_csr_write(sc, UDAV_MAR, hashtbl, sizeof(hashtbl));
}
