
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ifnet {int if_capenable; } ;
struct alc_softc {struct ifnet* alc_ifp; } ;


 int ALC_LOCK_ASSERT (struct alc_softc*) ;
 int ALC_MAC_CFG ;
 int CSR_READ_4 (struct alc_softc*,int ) ;
 int CSR_WRITE_4 (struct alc_softc*,int ,int ) ;
 int IFCAP_VLAN_HWTAGGING ;
 int MAC_CFG_VLAN_TAG_STRIP ;

__attribute__((used)) static void
alc_rxvlan(struct alc_softc *sc)
{
 struct ifnet *ifp;
 uint32_t reg;

 ALC_LOCK_ASSERT(sc);

 ifp = sc->alc_ifp;
 reg = CSR_READ_4(sc, ALC_MAC_CFG);
 if ((ifp->if_capenable & IFCAP_VLAN_HWTAGGING) != 0)
  reg |= MAC_CFG_VLAN_TAG_STRIP;
 else
  reg &= ~MAC_CFG_VLAN_TAG_STRIP;
 CSR_WRITE_4(sc, ALC_MAC_CFG, reg);
}
