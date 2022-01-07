
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct usb_ether {int dummy; } ;
struct ure_softc {int dummy; } ;
struct ifnet {int if_flags; } ;


 int IFF_ALLMULTI ;
 int IFF_BROADCAST ;
 int IFF_PROMISC ;
 int MA_OWNED ;
 int URE_LOCK_ASSERT (struct ure_softc*,int ) ;
 int URE_MCU_TYPE_PLA ;
 int URE_PLA_MAR0 ;
 int URE_PLA_MAR4 ;
 int URE_PLA_RCR ;
 int URE_RCR_AAP ;
 int URE_RCR_AB ;
 int URE_RCR_AM ;
 int URE_RCR_APM ;
 int bswap32 (int) ;
 int if_foreach_llmaddr (struct ifnet*,int ,int**) ;
 struct ifnet* uether_getifp (struct usb_ether*) ;
 struct ure_softc* uether_getsc (struct usb_ether*) ;
 int ure_hash_maddr ;
 int ure_write_4 (struct ure_softc*,int ,int ,int) ;

__attribute__((used)) static void
ure_rxfilter(struct usb_ether *ue)
{
 struct ure_softc *sc = uether_getsc(ue);
 struct ifnet *ifp = uether_getifp(ue);
 uint32_t rxmode;
 uint32_t h, hashes[2] = { 0, 0 };

 URE_LOCK_ASSERT(sc, MA_OWNED);

 rxmode = URE_RCR_APM;
 if (ifp->if_flags & IFF_BROADCAST)
   rxmode |= URE_RCR_AB;
 if (ifp->if_flags & (IFF_ALLMULTI | IFF_PROMISC)) {
  if (ifp->if_flags & IFF_PROMISC)
   rxmode |= URE_RCR_AAP;
  rxmode |= URE_RCR_AM;
  hashes[0] = hashes[1] = 0xffffffff;
  goto done;
 }

 rxmode |= URE_RCR_AM;
 if_foreach_llmaddr(ifp, ure_hash_maddr, &hashes);

 h = bswap32(hashes[0]);
 hashes[0] = bswap32(hashes[1]);
 hashes[1] = h;
 rxmode |= URE_RCR_AM;

done:
 ure_write_4(sc, URE_PLA_MAR0, URE_MCU_TYPE_PLA, hashes[0]);
 ure_write_4(sc, URE_PLA_MAR4, URE_MCU_TYPE_PLA, hashes[1]);
 ure_write_4(sc, URE_PLA_RCR, URE_MCU_TYPE_PLA, rxmode);
}
