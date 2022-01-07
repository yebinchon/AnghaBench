
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct msk_softc {int dummy; } ;
struct msk_if_softc {int msk_txq; int msk_if_dev; int msk_rxq; int msk_port; struct msk_softc* msk_softc; } ;


 int B3_RI_CTRL ;
 int BMU_CLR_IRQ_PAR ;
 int BMU_CLR_IRQ_TCP ;
 int CSR_WRITE_2 (struct msk_softc*,int ,int ) ;
 int CSR_WRITE_4 (struct msk_softc*,int ,int ) ;
 int GMF_CLI_TX_PE ;
 int MR_ADDR (int ,int ) ;
 int Q_ADDR (int ,int ) ;
 int Q_CSR ;
 int RI_CLR_RD_PERR ;
 int RI_CLR_WR_PERR ;
 int SELECT_RAM_BUFFER (int ,int ) ;
 int TX_GMF_CTRL_T ;
 int Y2_IS_PAR_MAC1 ;
 int Y2_IS_PAR_RD1 ;
 int Y2_IS_PAR_RX1 ;
 int Y2_IS_PAR_WR1 ;
 int Y2_IS_TCP_TXA1 ;
 int Y2_IS_TCP_TXS1 ;
 int device_printf (int ,char*) ;

__attribute__((used)) static void
msk_handle_hwerr(struct msk_if_softc *sc_if, uint32_t status)
{
 struct msk_softc *sc;

 sc = sc_if->msk_softc;
 if ((status & Y2_IS_PAR_RD1) != 0) {
  device_printf(sc_if->msk_if_dev,
      "RAM buffer read parity error\n");

  CSR_WRITE_2(sc, SELECT_RAM_BUFFER(sc_if->msk_port, B3_RI_CTRL),
      RI_CLR_RD_PERR);
 }
 if ((status & Y2_IS_PAR_WR1) != 0) {
  device_printf(sc_if->msk_if_dev,
      "RAM buffer write parity error\n");

  CSR_WRITE_2(sc, SELECT_RAM_BUFFER(sc_if->msk_port, B3_RI_CTRL),
      RI_CLR_WR_PERR);
 }
 if ((status & Y2_IS_PAR_MAC1) != 0) {
  device_printf(sc_if->msk_if_dev, "Tx MAC parity error\n");

  CSR_WRITE_4(sc, MR_ADDR(sc_if->msk_port, TX_GMF_CTRL_T),
      GMF_CLI_TX_PE);
 }
 if ((status & Y2_IS_PAR_RX1) != 0) {
  device_printf(sc_if->msk_if_dev, "Rx parity error\n");

  CSR_WRITE_4(sc, Q_ADDR(sc_if->msk_rxq, Q_CSR), BMU_CLR_IRQ_PAR);
 }
 if ((status & (Y2_IS_TCP_TXS1 | Y2_IS_TCP_TXA1)) != 0) {
  device_printf(sc_if->msk_if_dev, "TCP segmentation error\n");

  CSR_WRITE_4(sc, Q_ADDR(sc_if->msk_txq, Q_CSR), BMU_CLR_IRQ_TCP);
 }
}
