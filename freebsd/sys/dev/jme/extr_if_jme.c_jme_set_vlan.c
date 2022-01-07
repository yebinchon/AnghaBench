
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct jme_softc {struct ifnet* jme_ifp; } ;
struct ifnet {int if_capenable; } ;


 int CSR_READ_4 (struct jme_softc*,int ) ;
 int CSR_WRITE_4 (struct jme_softc*,int ,int ) ;
 int IFCAP_VLAN_HWTAGGING ;
 int JME_LOCK_ASSERT (struct jme_softc*) ;
 int JME_RXMAC ;
 int RXMAC_VLAN_ENB ;

__attribute__((used)) static void
jme_set_vlan(struct jme_softc *sc)
{
 struct ifnet *ifp;
 uint32_t reg;

 JME_LOCK_ASSERT(sc);

 ifp = sc->jme_ifp;
 reg = CSR_READ_4(sc, JME_RXMAC);
 reg &= ~RXMAC_VLAN_ENB;
 if ((ifp->if_capenable & IFCAP_VLAN_HWTAGGING) != 0)
  reg |= RXMAC_VLAN_ENB;
 CSR_WRITE_4(sc, JME_RXMAC, reg);
}
