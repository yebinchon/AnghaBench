
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msk_softc {scalar_t__ msk_hw_id; scalar_t__ msk_hw_rev; } ;
struct msk_if_softc {int msk_port; struct msk_softc* msk_softc; struct ifnet* msk_ifp; } ;
struct ifnet {scalar_t__ if_mtu; } ;


 scalar_t__ CHIP_ID_YUKON_EX ;
 scalar_t__ CHIP_ID_YUKON_SUPR ;
 scalar_t__ CHIP_REV_YU_EX_A0 ;
 int CSR_WRITE_4 (struct msk_softc*,int ,int) ;
 scalar_t__ ETHERMTU ;
 int MR_ADDR (int ,int ) ;
 int MSK_ECU_AE_THR ;
 int MSK_ECU_JUMBO_WM ;
 int TX_GMF_AE_THR ;
 int TX_GMF_CTRL_T ;
 int TX_STFW_DIS ;
 int TX_STFW_ENA ;

__attribute__((used)) static void
msk_set_tx_stfwd(struct msk_if_softc *sc_if)
{
 struct msk_softc *sc;
 struct ifnet *ifp;

 ifp = sc_if->msk_ifp;
 sc = sc_if->msk_softc;
 if ((sc->msk_hw_id == CHIP_ID_YUKON_EX &&
     sc->msk_hw_rev != CHIP_REV_YU_EX_A0) ||
     sc->msk_hw_id >= CHIP_ID_YUKON_SUPR) {
  CSR_WRITE_4(sc, MR_ADDR(sc_if->msk_port, TX_GMF_CTRL_T),
      TX_STFW_ENA);
 } else {
  if (ifp->if_mtu > ETHERMTU) {

   CSR_WRITE_4(sc,
       MR_ADDR(sc_if->msk_port, TX_GMF_AE_THR),
       MSK_ECU_JUMBO_WM << 16 | MSK_ECU_AE_THR);

   CSR_WRITE_4(sc, MR_ADDR(sc_if->msk_port, TX_GMF_CTRL_T),
       TX_STFW_DIS);
  } else {
   CSR_WRITE_4(sc, MR_ADDR(sc_if->msk_port, TX_GMF_CTRL_T),
       TX_STFW_ENA);
  }
 }
}
