
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct usb_ether {int dummy; } ;
struct ifnet {int if_flags; } ;
struct axge_softc {int dummy; } ;


 int AXGE_ACCESS_MAC ;
 int AXGE_LOCK_ASSERT (struct axge_softc*,int ) ;
 int AXGE_MFA ;
 int AXGE_RCR ;
 int IFF_ALLMULTI ;
 int IFF_BROADCAST ;
 int IFF_PROMISC ;
 int MA_OWNED ;
 int RCR_ACPT_ALL_MCAST ;
 int RCR_ACPT_BCAST ;
 int RCR_ACPT_MCAST ;
 int RCR_DROP_CRCERR ;
 int RCR_PROMISC ;
 int RCR_START ;
 int axge_hash_maddr ;
 int axge_write_cmd_2 (struct axge_softc*,int ,int,int ,int) ;
 int axge_write_mem (struct axge_softc*,int ,int,int ,void*,int) ;
 int if_foreach_llmaddr (struct ifnet*,int ,int **) ;
 struct ifnet* uether_getifp (struct usb_ether*) ;
 struct axge_softc* uether_getsc (struct usb_ether*) ;

__attribute__((used)) static void
axge_rxfilter(struct usb_ether *ue)
{
 struct axge_softc *sc;
 struct ifnet *ifp;
 uint16_t rxmode;
 uint8_t hashtbl[8] = { 0, 0, 0, 0, 0, 0, 0, 0 };

 sc = uether_getsc(ue);
 ifp = uether_getifp(ue);
 AXGE_LOCK_ASSERT(sc, MA_OWNED);
 rxmode = RCR_DROP_CRCERR | RCR_START;
 if (ifp->if_flags & IFF_BROADCAST)
  rxmode |= RCR_ACPT_BCAST;
 if (ifp->if_flags & (IFF_ALLMULTI | IFF_PROMISC)) {
  if (ifp->if_flags & IFF_PROMISC)
   rxmode |= RCR_PROMISC;
  rxmode |= RCR_ACPT_ALL_MCAST;
  axge_write_cmd_2(sc, AXGE_ACCESS_MAC, 2, AXGE_RCR, rxmode);
  return;
 }

 rxmode |= RCR_ACPT_MCAST;
 if_foreach_llmaddr(ifp, axge_hash_maddr, &hashtbl);

 axge_write_mem(sc, AXGE_ACCESS_MAC, 8, AXGE_MFA, (void *)&hashtbl, 8);
 axge_write_cmd_2(sc, AXGE_ACCESS_MAC, 2, AXGE_RCR, rxmode);
}
