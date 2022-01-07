
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct bfe_softc {int bfe_tx_dma; int bfe_rx_dma; } ;


 int BFE_AND (struct bfe_softc*,int ,int) ;
 int BFE_CLOCK ;
 int BFE_CTRL_CRC32_ENAB ;
 int BFE_CTRL_LED ;
 int BFE_CTRL_PDOWN ;
 int BFE_DEVCTRL ;
 int BFE_DMARX_ADDR ;
 int BFE_DMARX_CTRL ;
 int BFE_DMARX_STAT ;
 int BFE_DMATX_ADDR ;
 int BFE_DMATX_CTRL ;
 int BFE_ENET_CTRL ;
 int BFE_ENET_DISABLE ;
 int BFE_ENET_EPSEL ;
 int BFE_EPR ;
 int BFE_INTVEC_ENET0 ;
 int BFE_IPP ;
 int BFE_LAZY_FC_MASK ;
 int BFE_LAZY_FC_SHIFT ;
 int BFE_LOCK_ASSERT (struct bfe_softc*) ;
 int BFE_MAC_CTRL ;
 int BFE_MDIO_CTRL ;
 int BFE_OR (struct bfe_softc*,int ,int) ;
 int BFE_PCI_DMA ;
 int BFE_RCV_LAZY ;
 int BFE_REJECT ;
 int BFE_RESET ;
 int BFE_RXMAXLEN ;
 int BFE_RX_CTRL_ENABLE ;
 int BFE_RX_CTRL_ROSHIFT ;
 int BFE_RX_OFFSET ;
 int BFE_SBTMSLOW ;
 int BFE_STAT_EMASK ;
 int BFE_STAT_SIDLE ;
 int BFE_TXMAXLEN ;
 int BFE_TX_CTRL_ENABLE ;
 int BFE_TX_WMARK ;
 int CSR_READ_4 (struct bfe_softc*,int ) ;
 int CSR_WRITE_4 (struct bfe_softc*,int ,int) ;
 int DELAY (int) ;
 int ETHER_MAX_LEN ;
 int bfe_clear_stats (struct bfe_softc*) ;
 int bfe_core_reset (struct bfe_softc*) ;
 int bfe_pci_setup (struct bfe_softc*,int ) ;
 int bfe_resetphy (struct bfe_softc*) ;
 int bfe_setupphy (struct bfe_softc*) ;
 int bfe_wait_bit (struct bfe_softc*,int ,int,int,int) ;

__attribute__((used)) static void
bfe_chip_reset(struct bfe_softc *sc)
{
 u_int32_t val;

 BFE_LOCK_ASSERT(sc);


 bfe_pci_setup(sc, BFE_INTVEC_ENET0);


 val = CSR_READ_4(sc, BFE_SBTMSLOW) &
     (BFE_RESET | BFE_REJECT | BFE_CLOCK);
 if (val == BFE_CLOCK) {

  CSR_WRITE_4(sc, BFE_RCV_LAZY, 0);
  CSR_WRITE_4(sc, BFE_ENET_CTRL, BFE_ENET_DISABLE);
  bfe_wait_bit(sc, BFE_ENET_CTRL, BFE_ENET_DISABLE, 100, 1);
  CSR_WRITE_4(sc, BFE_DMATX_CTRL, 0);
  if (CSR_READ_4(sc, BFE_DMARX_STAT) & BFE_STAT_EMASK)
   bfe_wait_bit(sc, BFE_DMARX_STAT, BFE_STAT_SIDLE,
       100, 0);
  CSR_WRITE_4(sc, BFE_DMARX_CTRL, 0);
 }

 bfe_core_reset(sc);
 bfe_clear_stats(sc);
 CSR_WRITE_4(sc, BFE_MDIO_CTRL, 0x8d);


 val = CSR_READ_4(sc, BFE_DEVCTRL);
 if (!(val & BFE_IPP))
  CSR_WRITE_4(sc, BFE_ENET_CTRL, BFE_ENET_EPSEL);
 else if (CSR_READ_4(sc, BFE_DEVCTRL) & BFE_EPR) {
  BFE_AND(sc, BFE_DEVCTRL, ~BFE_EPR);
  DELAY(100);
 }


 BFE_OR(sc, BFE_MAC_CTRL, BFE_CTRL_CRC32_ENAB | BFE_CTRL_LED);


 BFE_AND(sc, BFE_MAC_CTRL, ~BFE_CTRL_PDOWN);

 CSR_WRITE_4(sc, BFE_RCV_LAZY, ((1 << BFE_LAZY_FC_SHIFT) &
    BFE_LAZY_FC_MASK));





 BFE_OR(sc, BFE_RCV_LAZY, 0);


 CSR_WRITE_4(sc, BFE_RXMAXLEN, ETHER_MAX_LEN+32);
 CSR_WRITE_4(sc, BFE_TXMAXLEN, ETHER_MAX_LEN+32);


 CSR_WRITE_4(sc, BFE_TX_WMARK, 56);





 CSR_WRITE_4(sc, BFE_DMATX_CTRL, BFE_TX_CTRL_ENABLE);
 CSR_WRITE_4(sc, BFE_DMATX_ADDR, sc->bfe_tx_dma + BFE_PCI_DMA);

 CSR_WRITE_4(sc, BFE_DMARX_CTRL, (BFE_RX_OFFSET << BFE_RX_CTRL_ROSHIFT) |
   BFE_RX_CTRL_ENABLE);
 CSR_WRITE_4(sc, BFE_DMARX_ADDR, sc->bfe_rx_dma + BFE_PCI_DMA);

 bfe_resetphy(sc);
 bfe_setupphy(sc);
}
