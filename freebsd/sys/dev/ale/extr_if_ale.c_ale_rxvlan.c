
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ifnet {int if_capenable; } ;
struct ale_softc {struct ifnet* ale_ifp; } ;


 int ALE_LOCK_ASSERT (struct ale_softc*) ;
 int ALE_MAC_CFG ;
 int CSR_READ_4 (struct ale_softc*,int ) ;
 int CSR_WRITE_4 (struct ale_softc*,int ,int ) ;
 int IFCAP_VLAN_HWTAGGING ;
 int MAC_CFG_VLAN_TAG_STRIP ;

__attribute__((used)) static void
ale_rxvlan(struct ale_softc *sc)
{
 struct ifnet *ifp;
 uint32_t reg;

 ALE_LOCK_ASSERT(sc);

 ifp = sc->ale_ifp;
 reg = CSR_READ_4(sc, ALE_MAC_CFG);
 reg &= ~MAC_CFG_VLAN_TAG_STRIP;
 if ((ifp->if_capenable & IFCAP_VLAN_HWTAGGING) != 0)
  reg |= MAC_CFG_VLAN_TAG_STRIP;
 CSR_WRITE_4(sc, ALE_MAC_CFG, reg);
}
