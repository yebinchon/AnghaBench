
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct ifnet {int if_flags; } ;
struct hme_softc {int sc_dev; struct ifnet* sc_ifp; } ;


 int HME_LOCK_ASSERT (struct hme_softc*,int ) ;
 int HME_MACI_HASHTAB0 ;
 int HME_MACI_HASHTAB1 ;
 int HME_MACI_HASHTAB2 ;
 int HME_MACI_HASHTAB3 ;
 int HME_MACI_RXCFG ;
 int HME_MAC_READ_4 (struct hme_softc*,int ) ;
 int HME_MAC_RXCFG_ENABLE ;
 int HME_MAC_RXCFG_HENABLE ;
 int HME_MAC_RXCFG_ME ;
 int HME_MAC_RXCFG_PGRP ;
 int HME_MAC_RXCFG_PMISC ;
 int HME_MAC_WRITE_4 (struct hme_softc*,int ,int) ;
 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 int MA_OWNED ;
 int device_printf (int ,char*) ;
 int hme_hash_maddr ;
 int hme_mac_bitflip (struct hme_softc*,int ,int,int,int) ;
 int if_foreach_llmaddr (struct ifnet*,int ,int**) ;

__attribute__((used)) static void
hme_setladrf(struct hme_softc *sc, int reenable)
{
 struct ifnet *ifp = sc->sc_ifp;
 u_int32_t hash[4];
 u_int32_t macc;

 HME_LOCK_ASSERT(sc, MA_OWNED);

 hash[3] = hash[2] = hash[1] = hash[0] = 0;


 macc = HME_MAC_READ_4(sc, HME_MACI_RXCFG);






 macc &= ~(HME_MAC_RXCFG_PGRP | HME_MAC_RXCFG_PMISC);







 if (!hme_mac_bitflip(sc, HME_MACI_RXCFG, macc,
     HME_MAC_RXCFG_ENABLE, 0))
  device_printf(sc->sc_dev, "cannot disable RX MAC\n");

 if (!hme_mac_bitflip(sc, HME_MACI_RXCFG, macc,
     HME_MAC_RXCFG_HENABLE, 0))
  device_printf(sc->sc_dev, "cannot disable hash filter\n");


 macc |= HME_MAC_RXCFG_ME;
 if (reenable)
  macc |= HME_MAC_RXCFG_ENABLE;
 else
  macc &= ~HME_MAC_RXCFG_ENABLE;

 if ((ifp->if_flags & IFF_PROMISC) != 0) {
  macc |= HME_MAC_RXCFG_PMISC;
  goto chipit;
 }
 if ((ifp->if_flags & IFF_ALLMULTI) != 0) {
  macc |= HME_MAC_RXCFG_PGRP;
  goto chipit;
 }

 macc |= HME_MAC_RXCFG_HENABLE;
 if_foreach_llmaddr(ifp, hme_hash_maddr, &hash);

chipit:

 HME_MAC_WRITE_4(sc, HME_MACI_HASHTAB0, hash[0]);
 HME_MAC_WRITE_4(sc, HME_MACI_HASHTAB1, hash[1]);
 HME_MAC_WRITE_4(sc, HME_MACI_HASHTAB2, hash[2]);
 HME_MAC_WRITE_4(sc, HME_MACI_HASHTAB3, hash[3]);
 if (!hme_mac_bitflip(sc, HME_MACI_RXCFG, macc, 0,
     macc & (HME_MAC_RXCFG_ENABLE | HME_MAC_RXCFG_HENABLE |
     HME_MAC_RXCFG_ME)))
  device_printf(sc->sc_dev, "cannot configure RX MAC\n");
}
