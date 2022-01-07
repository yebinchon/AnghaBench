
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int vte_tx_ring_paddr; int vte_rx_ring_paddr; } ;
struct vte_softc {int vte_tick_ch; int vte_flags; TYPE_1__ vte_cdata; struct ifnet* vte_ifp; int vte_dev; } ;
struct ifnet {int if_drv_flags; } ;
typedef int bus_addr_t ;


 int CSR_WRITE_2 (struct vte_softc*,int ,int) ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int* IF_LLADDR (struct ifnet*) ;
 int MBCR_FIFO_XFER_LENGTH_16 ;
 int MBCR_RX_FIFO_THRESH_16 ;
 int MBCR_SDRAM_BUS_REQ_TIMER_DEFAULT ;
 int MBCR_TX_FIFO_THRESH_64 ;
 int MCR0_ACCPT_LONG_PKT ;
 int MCR1_EXCESS_COL_RETRY_16 ;
 int MCR1_PKT_LENGTH_1537 ;
 int VTE_FLAG_LINK ;
 int VTE_INTRS ;
 int VTE_LOCK_ASSERT (struct vte_softc*) ;
 int VTE_MBCR ;
 int VTE_MCR0 ;
 int VTE_MCR1 ;
 int VTE_MECIER ;
 int VTE_MECIER_INTRS ;
 int VTE_MID0H ;
 int VTE_MID0L ;
 int VTE_MID0M ;
 int VTE_MIER ;
 int VTE_MISR ;
 int VTE_MRBSR ;
 int VTE_MRDCR ;
 int VTE_MRDCR_RESIDUE_MASK ;
 int VTE_MRDCR_RX_PAUSE_THRESH_SHIFT ;
 int VTE_MRDSA0 ;
 int VTE_MRDSA1 ;
 int VTE_MRICR ;
 int VTE_MTDSA0 ;
 int VTE_MTDSA1 ;
 int VTE_MTICR ;
 int VTE_RX_BUF_SIZE_MAX ;
 int VTE_RX_RING_CNT ;
 int callout_reset (int *,int ,int ,struct vte_softc*) ;
 int device_printf (int ,char*) ;
 int hz ;
 scalar_t__ vte_init_rx_ring (struct vte_softc*) ;
 scalar_t__ vte_init_tx_ring (struct vte_softc*) ;
 int vte_mediachange_locked (struct ifnet*) ;
 int vte_reset (struct vte_softc*) ;
 int vte_rxfilter (struct vte_softc*) ;
 int vte_stats_clear (struct vte_softc*) ;
 int vte_stop (struct vte_softc*) ;
 int vte_tick ;

__attribute__((used)) static void
vte_init_locked(struct vte_softc *sc)
{
 struct ifnet *ifp;
 bus_addr_t paddr;
 uint8_t *eaddr;

 VTE_LOCK_ASSERT(sc);

 ifp = sc->vte_ifp;

 if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0)
  return;



 vte_stop(sc);



 vte_reset(sc);


 if (vte_init_rx_ring(sc) != 0) {
  device_printf(sc->vte_dev, "no memory for RX buffers.\n");
  vte_stop(sc);
  return;
 }
 if (vte_init_tx_ring(sc) != 0) {
  device_printf(sc->vte_dev, "no memory for TX buffers.\n");
  vte_stop(sc);
  return;
 }
 eaddr = IF_LLADDR(sc->vte_ifp);
 CSR_WRITE_2(sc, VTE_MID0L, eaddr[1] << 8 | eaddr[0]);
 CSR_WRITE_2(sc, VTE_MID0M, eaddr[3] << 8 | eaddr[2]);
 CSR_WRITE_2(sc, VTE_MID0H, eaddr[5] << 8 | eaddr[4]);


 paddr = sc->vte_cdata.vte_tx_ring_paddr;
 CSR_WRITE_2(sc, VTE_MTDSA1, paddr >> 16);
 CSR_WRITE_2(sc, VTE_MTDSA0, paddr & 0xFFFF);

 paddr = sc->vte_cdata.vte_rx_ring_paddr;
 CSR_WRITE_2(sc, VTE_MRDSA1, paddr >> 16);
 CSR_WRITE_2(sc, VTE_MRDSA0, paddr & 0xFFFF);






 CSR_WRITE_2(sc, VTE_MRDCR, (VTE_RX_RING_CNT & VTE_MRDCR_RESIDUE_MASK) |
     (((VTE_RX_RING_CNT * 2) / 10) << VTE_MRDCR_RX_PAUSE_THRESH_SHIFT));
 CSR_WRITE_2(sc, VTE_MRBSR, VTE_RX_BUF_SIZE_MAX);


 CSR_WRITE_2(sc, VTE_MBCR, MBCR_FIFO_XFER_LENGTH_16 |
     MBCR_TX_FIFO_THRESH_64 | MBCR_RX_FIFO_THRESH_16 |
     MBCR_SDRAM_BUS_REQ_TIMER_DEFAULT);
 CSR_WRITE_2(sc, VTE_MCR0, MCR0_ACCPT_LONG_PKT);






 CSR_WRITE_2(sc, VTE_MCR1, MCR1_PKT_LENGTH_1537 |
     MCR1_EXCESS_COL_RETRY_16);


 vte_rxfilter(sc);


 CSR_WRITE_2(sc, VTE_MRICR, 0);
 CSR_WRITE_2(sc, VTE_MTICR, 0);


 CSR_WRITE_2(sc, VTE_MECIER, VTE_MECIER_INTRS);

 vte_stats_clear(sc);


 CSR_WRITE_2(sc, VTE_MIER, VTE_INTRS);
 CSR_WRITE_2(sc, VTE_MISR, 0);

 sc->vte_flags &= ~VTE_FLAG_LINK;

 vte_mediachange_locked(ifp);

 callout_reset(&sc->vte_tick_ch, hz, vte_tick, sc);

 ifp->if_drv_flags |= IFF_DRV_RUNNING;
 ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;
}
