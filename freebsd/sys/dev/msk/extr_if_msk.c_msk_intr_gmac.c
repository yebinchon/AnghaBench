
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct msk_softc {int dummy; } ;
struct msk_if_softc {int msk_if_dev; int msk_port; struct msk_softc* msk_softc; } ;


 int CSR_READ_1 (struct msk_softc*,int ) ;
 int CSR_WRITE_4 (struct msk_softc*,int ,int ) ;
 int GMAC_IRQ_SRC ;
 int GMF_CLI_RX_FO ;
 int GMF_CLI_TX_FU ;
 int GM_IS_RX_FF_OR ;
 int GM_IS_TX_FF_UR ;
 int MR_ADDR (int ,int ) ;
 int RX_GMF_CTRL_T ;
 int TX_GMF_CTRL_T ;
 int device_printf (int ,char*) ;

__attribute__((used)) static void
msk_intr_gmac(struct msk_if_softc *sc_if)
{
 struct msk_softc *sc;
 uint8_t status;

 sc = sc_if->msk_softc;
 status = CSR_READ_1(sc, MR_ADDR(sc_if->msk_port, GMAC_IRQ_SRC));


 if ((status & GM_IS_RX_FF_OR) != 0)
  CSR_WRITE_4(sc, MR_ADDR(sc_if->msk_port, RX_GMF_CTRL_T),
      GMF_CLI_RX_FO);

 if ((status & GM_IS_TX_FF_UR) != 0) {
  CSR_WRITE_4(sc, MR_ADDR(sc_if->msk_port, TX_GMF_CTRL_T),
      GMF_CLI_TX_FU);
  device_printf(sc_if->msk_if_dev, "Tx FIFO underrun!\n");
 }
}
