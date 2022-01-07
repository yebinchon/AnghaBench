
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int ste_rx_list_paddr; } ;
struct ste_softc {int ste_tx_thresh; int ste_callout; int ste_flags; TYPE_1__ ste_ldata; int ste_dev; struct ifnet* ste_ifp; int ste_miibus; } ;
struct mii_data {int dummy; } ;
struct ifnet {int if_drv_flags; int if_capenable; } ;


 int CSR_READ_1 (struct ste_softc*,int ) ;
 int CSR_WRITE_1 (struct ste_softc*,int ,int) ;
 int CSR_WRITE_2 (struct ste_softc*,scalar_t__,int) ;
 int CSR_WRITE_4 (struct ste_softc*,int ,int ) ;
 int ETHER_ADDR_LEN ;
 int ETHER_MAX_LEN ;
 int ETHER_VLAN_ENCAP_LEN ;
 int IFCAP_POLLING ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int* IF_LLADDR (struct ifnet*) ;
 int STE_ADDR_LO (int ) ;
 int STE_CLRBIT4 (struct ste_softc*,int ,int) ;
 scalar_t__ STE_COUNTDOWN ;
 int STE_DMACTL ;
 int STE_DMACTL_COUNTDOWN_MODE ;
 int STE_DMACTL_COUNTDOWN_SPEED ;
 int STE_DMACTL_RXDMA_STALL ;
 int STE_DMACTL_RXDMA_UNSTALL ;
 int STE_DMACTL_TXDMA_STALL ;
 int STE_DMACTL_TXDMA_UNSTALL ;
 int STE_FLAG_LINK ;
 scalar_t__ STE_IMR ;
 int STE_INTRS ;
 scalar_t__ STE_ISR ;
 int STE_LOCK_ASSERT (struct ste_softc*) ;
 scalar_t__ STE_MACCTL0 ;
 scalar_t__ STE_MACCTL1 ;
 int STE_MACCTL1_RX_ENABLE ;
 int STE_MACCTL1_STATS_ENABLE ;
 int STE_MACCTL1_TX_ENABLE ;
 scalar_t__ STE_MAX_FRAMELEN ;
 int STE_PACKET_SIZE ;
 scalar_t__ STE_PAR0 ;
 int STE_RX_DMALIST_PTR ;
 int STE_RX_DMAPOLL_PERIOD ;
 int STE_SETBIT2 (struct ste_softc*,scalar_t__,int ) ;
 int STE_SETBIT4 (struct ste_softc*,int ,int ) ;
 int STE_TX_DMABURST_THRESH ;
 int STE_TX_DMALIST_PTR ;
 int STE_TX_DMAPOLL_PERIOD ;
 int STE_TX_RECLAIM_THRESH ;
 scalar_t__ STE_TX_STARTTHRESH ;
 int STE_WAKEEVENT_LINKEVT_ENB ;
 int STE_WAKEEVENT_MAGICPKT_ENB ;
 int STE_WAKEEVENT_WAKEONLAN_ENB ;
 int STE_WAKEEVENT_WAKEPKT_ENB ;
 int STE_WAKE_EVENT ;
 int callout_reset (int *,int ,int ,struct ste_softc*) ;
 struct mii_data* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int hz ;
 int mii_mediachg (struct mii_data*) ;
 scalar_t__ ste_init_rx_list (struct ste_softc*) ;
 int ste_init_tx_list (struct ste_softc*) ;
 int ste_reset (struct ste_softc*) ;
 int ste_rxfilter (struct ste_softc*) ;
 int ste_stats_clear (struct ste_softc*) ;
 int ste_stop (struct ste_softc*) ;
 int ste_tick ;
 int ste_wait (struct ste_softc*) ;

__attribute__((used)) static void
ste_init_locked(struct ste_softc *sc)
{
 struct ifnet *ifp;
 struct mii_data *mii;
 uint8_t val;
 int i;

 STE_LOCK_ASSERT(sc);
 ifp = sc->ste_ifp;
 mii = device_get_softc(sc->ste_miibus);

 if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0)
  return;

 ste_stop(sc);

 ste_reset(sc);


 for (i = 0; i < ETHER_ADDR_LEN; i += 2) {
  CSR_WRITE_2(sc, STE_PAR0 + i,
      ((IF_LLADDR(sc->ste_ifp)[i] & 0xff) |
       IF_LLADDR(sc->ste_ifp)[i + 1] << 8));
 }


 if (ste_init_rx_list(sc) != 0) {
  device_printf(sc->ste_dev,
      "initialization failed: no memory for RX buffers\n");
  ste_stop(sc);
  return;
 }


 CSR_WRITE_1(sc, STE_RX_DMAPOLL_PERIOD, 64);


 ste_init_tx_list(sc);


 val = CSR_READ_1(sc, STE_WAKE_EVENT);
 val &= ~(STE_WAKEEVENT_WAKEPKT_ENB | STE_WAKEEVENT_MAGICPKT_ENB |
     STE_WAKEEVENT_LINKEVT_ENB | STE_WAKEEVENT_WAKEONLAN_ENB);
 CSR_WRITE_1(sc, STE_WAKE_EVENT, val);


 CSR_WRITE_1(sc, STE_TX_DMABURST_THRESH, STE_PACKET_SIZE >> 8);


 CSR_WRITE_2(sc, STE_TX_STARTTHRESH, sc->ste_tx_thresh);


 CSR_WRITE_1(sc, STE_TX_RECLAIM_THRESH, (STE_PACKET_SIZE >> 4));


 CSR_WRITE_2(sc, STE_MAX_FRAMELEN, ETHER_MAX_LEN + ETHER_VLAN_ENCAP_LEN);


 ste_rxfilter(sc);


 STE_SETBIT4(sc, STE_DMACTL, STE_DMACTL_RXDMA_STALL);
 ste_wait(sc);
 CSR_WRITE_4(sc, STE_RX_DMALIST_PTR,
     STE_ADDR_LO(sc->ste_ldata.ste_rx_list_paddr));
 STE_SETBIT4(sc, STE_DMACTL, STE_DMACTL_RXDMA_UNSTALL);
 STE_SETBIT4(sc, STE_DMACTL, STE_DMACTL_RXDMA_UNSTALL);


 CSR_WRITE_1(sc, STE_TX_DMAPOLL_PERIOD, 0);


 STE_SETBIT4(sc, STE_DMACTL, STE_DMACTL_TXDMA_STALL);
 ste_wait(sc);
 CSR_WRITE_4(sc, STE_TX_DMALIST_PTR, 0);
 STE_SETBIT4(sc, STE_DMACTL, STE_DMACTL_TXDMA_UNSTALL);
 STE_SETBIT4(sc, STE_DMACTL, STE_DMACTL_TXDMA_UNSTALL);
 ste_wait(sc);

 STE_CLRBIT4(sc, STE_DMACTL, STE_DMACTL_COUNTDOWN_SPEED |
     STE_DMACTL_COUNTDOWN_MODE);


 CSR_WRITE_2(sc, STE_MACCTL0, 0);
 CSR_WRITE_2(sc, STE_MACCTL1, 0);
 STE_SETBIT2(sc, STE_MACCTL1, STE_MACCTL1_TX_ENABLE);
 STE_SETBIT2(sc, STE_MACCTL1, STE_MACCTL1_RX_ENABLE);


 STE_SETBIT2(sc, STE_MACCTL1, STE_MACCTL1_STATS_ENABLE);

 ste_stats_clear(sc);

 CSR_WRITE_2(sc, STE_COUNTDOWN, 0);
 CSR_WRITE_2(sc, STE_ISR, 0xFFFF);







 CSR_WRITE_2(sc, STE_IMR, STE_INTRS);

 sc->ste_flags &= ~STE_FLAG_LINK;

 mii_mediachg(mii);

 ifp->if_drv_flags |= IFF_DRV_RUNNING;
 ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;

 callout_reset(&sc->ste_callout, hz, ste_tick, sc);
}
