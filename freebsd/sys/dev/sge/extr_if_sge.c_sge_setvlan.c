
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct sge_softc {struct ifnet* sge_ifp; } ;
struct ifnet {int if_capabilities; int if_capenable; } ;


 int CSR_READ_2 (struct sge_softc*,int ) ;
 int CSR_WRITE_2 (struct sge_softc*,int ,int ) ;
 int IFCAP_VLAN_HWTAGGING ;
 int RXMAC_STRIP_VLAN ;
 int RxMacControl ;
 int SGE_LOCK_ASSERT (struct sge_softc*) ;

__attribute__((used)) static void
sge_setvlan(struct sge_softc *sc)
{
 struct ifnet *ifp;
 uint16_t rxfilt;

 SGE_LOCK_ASSERT(sc);

 ifp = sc->sge_ifp;
 if ((ifp->if_capabilities & IFCAP_VLAN_HWTAGGING) == 0)
  return;
 rxfilt = CSR_READ_2(sc, RxMacControl);
 if ((ifp->if_capenable & IFCAP_VLAN_HWTAGGING) != 0)
  rxfilt |= RXMAC_STRIP_VLAN;
 else
  rxfilt &= ~RXMAC_STRIP_VLAN;
 CSR_WRITE_2(sc, RxMacControl, rxfilt);
}
