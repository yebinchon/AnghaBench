
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msk_softc {int dummy; } ;
struct msk_if_softc {int msk_port; struct msk_softc* msk_softc; } ;
struct ifnet {int if_capenable; } ;


 int CSR_WRITE_4 (struct msk_softc*,int ,int ) ;
 int IFCAP_VLAN_HWTAGGING ;
 int MR_ADDR (int ,int ) ;
 int RX_GMF_CTRL_T ;
 int RX_VLAN_STRIP_OFF ;
 int RX_VLAN_STRIP_ON ;
 int TX_GMF_CTRL_T ;
 int TX_VLAN_TAG_OFF ;
 int TX_VLAN_TAG_ON ;

__attribute__((used)) static void
msk_setvlan(struct msk_if_softc *sc_if, struct ifnet *ifp)
{
 struct msk_softc *sc;

 sc = sc_if->msk_softc;
 if ((ifp->if_capenable & IFCAP_VLAN_HWTAGGING) != 0) {
  CSR_WRITE_4(sc, MR_ADDR(sc_if->msk_port, RX_GMF_CTRL_T),
      RX_VLAN_STRIP_ON);
  CSR_WRITE_4(sc, MR_ADDR(sc_if->msk_port, TX_GMF_CTRL_T),
      TX_VLAN_TAG_ON);
 } else {
  CSR_WRITE_4(sc, MR_ADDR(sc_if->msk_port, RX_GMF_CTRL_T),
      RX_VLAN_STRIP_OFF);
  CSR_WRITE_4(sc, MR_ADDR(sc_if->msk_port, TX_GMF_CTRL_T),
      TX_VLAN_TAG_OFF);
 }
}
