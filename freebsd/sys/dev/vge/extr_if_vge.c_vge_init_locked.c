
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vge_rx_ring_paddr; int vge_tx_ring_paddr; } ;
struct vge_softc {int vge_watchdog; int vge_flags; TYPE_1__ vge_rdata; struct ifnet* vge_ifp; int vge_dev; } ;
struct ifnet {int if_drv_flags; int if_capenable; } ;


 int CSR_CLRBIT_1 (struct vge_softc*,int ,int) ;
 int CSR_SETBIT_1 (struct vge_softc*,int ,int) ;
 int CSR_WRITE_1 (struct vge_softc*,scalar_t__,int) ;
 int CSR_WRITE_2 (struct vge_softc*,int ,int) ;
 int CSR_WRITE_4 (struct vge_softc*,int ,int) ;
 int ETHER_ADDR_LEN ;
 int IFCAP_POLLING ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int* IF_LLADDR (struct ifnet*) ;
 int VGE_ADDR_HI (int ) ;
 int VGE_ADDR_LO (int ) ;
 int VGE_CHIPCFG1 ;
 int VGE_CHIPCFG1_BAKOPT ;
 int VGE_CHIPCFG1_CAP ;
 int VGE_CHIPCFG1_CRANDOM ;
 int VGE_CHIPCFG1_MBA ;
 int VGE_CHIPCFG1_OFSET ;
 int VGE_CR0_RX_ENABLE ;
 int VGE_CR0_START ;
 int VGE_CR0_STOP ;
 int VGE_CR0_TX_ENABLE ;
 int VGE_CR1_NOPOLL ;
 int VGE_CR2_XON_ENABLE ;
 int VGE_CR3_INT_GMSK ;
 scalar_t__ VGE_CRC0 ;
 scalar_t__ VGE_CRC2 ;
 scalar_t__ VGE_CRS0 ;
 scalar_t__ VGE_CRS1 ;
 scalar_t__ VGE_CRS2 ;
 scalar_t__ VGE_CRS3 ;
 int VGE_DIAGCTL ;
 int VGE_DIAGCTL_LPSEL_DIS ;
 int VGE_DMABURST_128 ;
 int VGE_DMACFG0 ;
 int VGE_DMACFG0_BURSTLEN ;
 int VGE_FLAG_LINK ;
 int VGE_IMR ;
 int VGE_INTRS ;
 int VGE_INTRS_POLLING ;
 int VGE_ISR ;
 int VGE_LOCK_ASSERT (struct vge_softc*) ;
 scalar_t__ VGE_PAR0 ;
 int VGE_RXCFG ;
 int VGE_RXCFG_FIFO_THR ;
 int VGE_RXCFG_VTAGOPT ;
 int VGE_RXDESCNUM ;
 int VGE_RXDESC_ADDR_LO ;
 int VGE_RXDESC_RESIDUECNT ;
 int VGE_RXFIFOTHR_128BYTES ;
 scalar_t__ VGE_RXQCSRS ;
 int VGE_RXQCSR_RUN ;
 int VGE_RXQCSR_WAK ;
 int VGE_RX_DESC_CNT ;
 int VGE_TXCFG ;
 int VGE_TXCFG_ARB_PRIO ;
 int VGE_TXCFG_NONBLK ;
 int VGE_TXDESCNUM ;
 int VGE_TXDESC_ADDR_LO0 ;
 int VGE_TXDESC_HIADDR ;
 int VGE_TXQCSRS ;
 int VGE_TXQCSR_RUN0 ;
 int VGE_TX_DESC_CNT ;
 int VGE_TX_PAUSE_TIMER ;
 int callout_reset (int *,int ,int ,struct vge_softc*) ;
 int device_printf (int ,char*) ;
 int hz ;
 int vge_cam_clear (struct vge_softc*) ;
 int vge_ifmedia_upd_locked (struct vge_softc*) ;
 int vge_intr_holdoff (struct vge_softc*) ;
 int vge_miipoll_start (struct vge_softc*) ;
 int vge_reset (struct vge_softc*) ;
 int vge_rx_list_init (struct vge_softc*) ;
 int vge_rxfilter (struct vge_softc*) ;
 int vge_setvlan (struct vge_softc*) ;
 int vge_stats_clear (struct vge_softc*) ;
 int vge_stop (struct vge_softc*) ;
 int vge_tx_list_init (struct vge_softc*) ;
 int vge_watchdog ;

__attribute__((used)) static void
vge_init_locked(struct vge_softc *sc)
{
 struct ifnet *ifp = sc->vge_ifp;
 int error, i;

 VGE_LOCK_ASSERT(sc);

 if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0)
  return;




 vge_stop(sc);
 vge_reset(sc);
 vge_miipoll_start(sc);





 error = vge_rx_list_init(sc);
 if (error != 0) {
                device_printf(sc->vge_dev, "no memory for Rx buffers.\n");
                return;
 }
 vge_tx_list_init(sc);

 vge_stats_clear(sc);

 for (i = 0; i < ETHER_ADDR_LEN; i++)
  CSR_WRITE_1(sc, VGE_PAR0 + i, IF_LLADDR(sc->vge_ifp)[i]);





 CSR_CLRBIT_1(sc, VGE_RXCFG, VGE_RXCFG_FIFO_THR|VGE_RXCFG_VTAGOPT);
 CSR_SETBIT_1(sc, VGE_RXCFG, VGE_RXFIFOTHR_128BYTES);


 CSR_CLRBIT_1(sc, VGE_DMACFG0, VGE_DMACFG0_BURSTLEN);
 CSR_SETBIT_1(sc, VGE_DMACFG0, VGE_DMABURST_128);

 CSR_SETBIT_1(sc, VGE_TXCFG, VGE_TXCFG_ARB_PRIO|VGE_TXCFG_NONBLK);


 CSR_CLRBIT_1(sc, VGE_CHIPCFG1, VGE_CHIPCFG1_CRANDOM|
     VGE_CHIPCFG1_CAP|VGE_CHIPCFG1_MBA|VGE_CHIPCFG1_BAKOPT);
 CSR_SETBIT_1(sc, VGE_CHIPCFG1, VGE_CHIPCFG1_OFSET);


 CSR_SETBIT_1(sc, VGE_DIAGCTL, VGE_DIAGCTL_LPSEL_DIS);






 CSR_WRITE_4(sc, VGE_TXDESC_HIADDR,
     VGE_ADDR_HI(sc->vge_rdata.vge_tx_ring_paddr));
 CSR_WRITE_4(sc, VGE_TXDESC_ADDR_LO0,
     VGE_ADDR_LO(sc->vge_rdata.vge_tx_ring_paddr));
 CSR_WRITE_2(sc, VGE_TXDESCNUM, VGE_TX_DESC_CNT - 1);

 CSR_WRITE_4(sc, VGE_RXDESC_ADDR_LO,
     VGE_ADDR_LO(sc->vge_rdata.vge_rx_ring_paddr));
 CSR_WRITE_2(sc, VGE_RXDESCNUM, VGE_RX_DESC_CNT - 1);
 CSR_WRITE_2(sc, VGE_RXDESC_RESIDUECNT, VGE_RX_DESC_CNT);


 vge_intr_holdoff(sc);


 CSR_WRITE_1(sc, VGE_RXQCSRS, VGE_RXQCSR_RUN);
 CSR_WRITE_1(sc, VGE_RXQCSRS, VGE_RXQCSR_WAK);


 CSR_WRITE_2(sc, VGE_TXQCSRS, VGE_TXQCSR_RUN0);


 vge_cam_clear(sc);


 vge_rxfilter(sc);
 vge_setvlan(sc);


 CSR_WRITE_2(sc, VGE_TX_PAUSE_TIMER, 0xFFFF);






 CSR_WRITE_1(sc, VGE_CRC2, 0xFF);
 CSR_WRITE_1(sc, VGE_CRS2, VGE_CR2_XON_ENABLE | 0x0B);




 CSR_WRITE_1(sc, VGE_CRC0, VGE_CR0_STOP);
 CSR_WRITE_1(sc, VGE_CRS1, VGE_CR1_NOPOLL);
 CSR_WRITE_1(sc, VGE_CRS0,
     VGE_CR0_TX_ENABLE|VGE_CR0_RX_ENABLE|VGE_CR0_START);
 {



  CSR_WRITE_4(sc, VGE_IMR, VGE_INTRS);
 }
 CSR_WRITE_4(sc, VGE_ISR, 0xFFFFFFFF);
 CSR_WRITE_1(sc, VGE_CRS3, VGE_CR3_INT_GMSK);

 sc->vge_flags &= ~VGE_FLAG_LINK;
 vge_ifmedia_upd_locked(sc);

 ifp->if_drv_flags |= IFF_DRV_RUNNING;
 ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;
 callout_reset(&sc->vge_watchdog, hz, vge_watchdog, sc);
}
