
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct usb_ether {int dummy; } ;
struct rue_softc {int dummy; } ;
struct ifnet {int if_flags; } ;


 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 int MA_OWNED ;
 int RUE_LOCK_ASSERT (struct rue_softc*,int ) ;
 int RUE_MAR0 ;
 int RUE_MAR4 ;
 int RUE_RCR ;
 int RUE_RCR_AAM ;
 int RUE_RCR_AAP ;
 int RUE_RCR_AM ;
 int if_foreach_llmaddr (struct ifnet*,int ,int**) ;
 int rue_csr_read_2 (struct rue_softc*,int ) ;
 int rue_csr_write_2 (struct rue_softc*,int ,int) ;
 int rue_csr_write_4 (struct rue_softc*,int ,int) ;
 int rue_hash_maddr ;
 struct ifnet* uether_getifp (struct usb_ether*) ;
 struct rue_softc* uether_getsc (struct usb_ether*) ;

__attribute__((used)) static void
rue_setmulti(struct usb_ether *ue)
{
 struct rue_softc *sc = uether_getsc(ue);
 struct ifnet *ifp = uether_getifp(ue);
 uint16_t rxcfg;
 uint32_t hashes[2] = { 0, 0 };
 int mcnt;

 RUE_LOCK_ASSERT(sc, MA_OWNED);

 rxcfg = rue_csr_read_2(sc, RUE_RCR);

 if (ifp->if_flags & IFF_ALLMULTI || ifp->if_flags & IFF_PROMISC) {
  rxcfg |= (RUE_RCR_AAM | RUE_RCR_AAP);
  rxcfg &= ~RUE_RCR_AM;
  rue_csr_write_2(sc, RUE_RCR, rxcfg);
  rue_csr_write_4(sc, RUE_MAR0, 0xFFFFFFFF);
  rue_csr_write_4(sc, RUE_MAR4, 0xFFFFFFFF);
  return;
 }


 rue_csr_write_4(sc, RUE_MAR0, 0);
 rue_csr_write_4(sc, RUE_MAR4, 0);


 mcnt = if_foreach_llmaddr(ifp, rue_hash_maddr, &hashes);

 if (mcnt)
  rxcfg |= RUE_RCR_AM;
 else
  rxcfg &= ~RUE_RCR_AM;

 rxcfg &= ~(RUE_RCR_AAM | RUE_RCR_AAP);

 rue_csr_write_2(sc, RUE_RCR, rxcfg);
 rue_csr_write_4(sc, RUE_MAR0, hashes[0]);
 rue_csr_write_4(sc, RUE_MAR4, hashes[1]);
}
