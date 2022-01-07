
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bge_softc {int bge_asf_mode; scalar_t__ bge_link; int bge_ifp; int bge_tx_saved_considx; int bge_stat_ch; } ;
typedef int if_t ;


 int ASF_STACKUP ;
 int BGE_BMANMODE_ENABLE ;
 int BGE_BMAN_MODE ;
 int BGE_CLRBIT (struct bge_softc*,int ,int ) ;
 int BGE_DMACMODE_ENABLE ;
 int BGE_DMAC_MODE ;
 int BGE_FTQ_RESET ;
 int BGE_HCCMODE_ENABLE ;
 int BGE_HCC_MODE ;
 scalar_t__ BGE_IS_5700_FAMILY (struct bge_softc*) ;
 scalar_t__ BGE_IS_5705_PLUS (struct bge_softc*) ;
 scalar_t__ BGE_IS_JUMBO_CAPABLE (struct bge_softc*) ;
 int BGE_LOCK_ASSERT (struct bge_softc*) ;
 int BGE_MARBMODE_ENABLE ;
 int BGE_MARB_MODE ;
 int BGE_MBCFMODE_ENABLE ;
 int BGE_MBCF_MODE ;
 int BGE_MBX_IRQ0_LO ;
 int BGE_MODECTL_STACKUP ;
 int BGE_MODE_CTL ;
 int BGE_PCIMISCCTL_MASK_PCI_INTR ;
 int BGE_PCI_MISC_CTL ;
 int BGE_RBDCMODE_ENABLE ;
 int BGE_RBDC_MODE ;
 int BGE_RBDIMODE_ENABLE ;
 int BGE_RBDI_MODE ;
 int BGE_RDBDI_MODE ;
 int BGE_RDCMODE_ENABLE ;
 int BGE_RDC_MODE ;
 int BGE_RDMAMODE_ENABLE ;
 int BGE_RDMA_MODE ;
 int BGE_RESET_SHUTDOWN ;
 int BGE_RXLPMODE_ENABLE ;
 int BGE_RXLP_MODE ;
 int BGE_RXLSMODE_ENABLE ;
 int BGE_RXLS_MODE ;
 int BGE_RXMODE_ENABLE ;
 int BGE_RX_MODE ;
 int BGE_SBDCMODE_ENABLE ;
 int BGE_SBDC_MODE ;
 int BGE_SBDIMODE_ENABLE ;
 int BGE_SBDI_MODE ;
 int BGE_SDCMODE_ENABLE ;
 int BGE_SDC_MODE ;
 int BGE_SDIMODE_ENABLE ;
 int BGE_SDI_MODE ;
 int BGE_SETBIT (struct bge_softc*,int ,int ) ;
 int BGE_SRSMODE_ENABLE ;
 int BGE_SRS_MODE ;
 int BGE_TXCONS_UNSET ;
 int BGE_WDMAMODE_ENABLE ;
 int BGE_WDMA_MODE ;
 int CSR_WRITE_4 (struct bge_softc*,int ,int) ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int bge_free_rx_ring_jumbo (struct bge_softc*) ;
 int bge_free_rx_ring_std (struct bge_softc*) ;
 int bge_free_tx_ring (struct bge_softc*) ;
 int bge_reset (struct bge_softc*) ;
 int bge_sig_legacy (struct bge_softc*,int ) ;
 int bge_sig_post_reset (struct bge_softc*,int ) ;
 int bge_sig_pre_reset (struct bge_softc*,int ) ;
 int bge_stats_update_regs (struct bge_softc*) ;
 int bge_stop_block (struct bge_softc*,int ,int ) ;
 int bge_stop_fw (struct bge_softc*) ;
 int bge_writembx (struct bge_softc*,int ,int) ;
 scalar_t__ bootverbose ;
 int callout_stop (int *) ;
 int if_printf (int ,char*) ;
 int if_setdrvflagbits (int ,int ,int) ;

__attribute__((used)) static void
bge_stop(struct bge_softc *sc)
{
 if_t ifp;

 BGE_LOCK_ASSERT(sc);

 ifp = sc->bge_ifp;

 callout_stop(&sc->bge_stat_ch);


 BGE_SETBIT(sc, BGE_PCI_MISC_CTL, BGE_PCIMISCCTL_MASK_PCI_INTR);
 bge_writembx(sc, BGE_MBX_IRQ0_LO, 1);




 bge_stop_fw(sc);
 bge_sig_pre_reset(sc, BGE_RESET_SHUTDOWN);




 bge_stop_block(sc, BGE_RX_MODE, BGE_RXMODE_ENABLE);
 bge_stop_block(sc, BGE_RBDI_MODE, BGE_RBDIMODE_ENABLE);
 bge_stop_block(sc, BGE_RXLP_MODE, BGE_RXLPMODE_ENABLE);
 if (BGE_IS_5700_FAMILY(sc))
  bge_stop_block(sc, BGE_RXLS_MODE, BGE_RXLSMODE_ENABLE);
 bge_stop_block(sc, BGE_RDBDI_MODE, BGE_RBDIMODE_ENABLE);
 bge_stop_block(sc, BGE_RDC_MODE, BGE_RDCMODE_ENABLE);
 bge_stop_block(sc, BGE_RBDC_MODE, BGE_RBDCMODE_ENABLE);




 bge_stop_block(sc, BGE_SRS_MODE, BGE_SRSMODE_ENABLE);
 bge_stop_block(sc, BGE_SBDI_MODE, BGE_SBDIMODE_ENABLE);
 bge_stop_block(sc, BGE_SDI_MODE, BGE_SDIMODE_ENABLE);
 bge_stop_block(sc, BGE_RDMA_MODE, BGE_RDMAMODE_ENABLE);
 bge_stop_block(sc, BGE_SDC_MODE, BGE_SDCMODE_ENABLE);
 if (BGE_IS_5700_FAMILY(sc))
  bge_stop_block(sc, BGE_DMAC_MODE, BGE_DMACMODE_ENABLE);
 bge_stop_block(sc, BGE_SBDC_MODE, BGE_SBDCMODE_ENABLE);





 bge_stop_block(sc, BGE_HCC_MODE, BGE_HCCMODE_ENABLE);
 bge_stop_block(sc, BGE_WDMA_MODE, BGE_WDMAMODE_ENABLE);
 if (BGE_IS_5700_FAMILY(sc))
  bge_stop_block(sc, BGE_MBCF_MODE, BGE_MBCFMODE_ENABLE);

 CSR_WRITE_4(sc, BGE_FTQ_RESET, 0xFFFFFFFF);
 CSR_WRITE_4(sc, BGE_FTQ_RESET, 0);
 if (!(BGE_IS_5705_PLUS(sc))) {
  BGE_CLRBIT(sc, BGE_BMAN_MODE, BGE_BMANMODE_ENABLE);
  BGE_CLRBIT(sc, BGE_MARB_MODE, BGE_MARBMODE_ENABLE);
 }

 if (BGE_IS_5705_PLUS(sc))
  bge_stats_update_regs(sc);

 bge_reset(sc);
 bge_sig_legacy(sc, BGE_RESET_SHUTDOWN);
 bge_sig_post_reset(sc, BGE_RESET_SHUTDOWN);




 if (sc->bge_asf_mode & ASF_STACKUP)
  BGE_SETBIT(sc, BGE_MODE_CTL, BGE_MODECTL_STACKUP);
 else
  BGE_CLRBIT(sc, BGE_MODE_CTL, BGE_MODECTL_STACKUP);


 bge_free_rx_ring_std(sc);


 if (BGE_IS_JUMBO_CAPABLE(sc))
  bge_free_rx_ring_jumbo(sc);


 bge_free_tx_ring(sc);

 sc->bge_tx_saved_considx = BGE_TXCONS_UNSET;


 if (bootverbose && sc->bge_link)
  if_printf(sc->bge_ifp, "link DOWN\n");
 sc->bge_link = 0;

 if_setdrvflagbits(ifp, 0, (IFF_DRV_RUNNING | IFF_DRV_OACTIVE));
}
