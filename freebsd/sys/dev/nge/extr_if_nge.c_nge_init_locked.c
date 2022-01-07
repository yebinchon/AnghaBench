
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_2__ {int nge_tx_ring_paddr; int nge_rx_ring_paddr; } ;
struct nge_softc {int nge_int_holdoff; int nge_stat_ch; scalar_t__ nge_watchdog_timer; int nge_flags; TYPE_1__ nge_rdata; int nge_dev; struct ifnet* nge_ifp; int nge_miibus; } ;
struct mii_data {int dummy; } ;
struct ifnet {int if_drv_flags; int if_capenable; } ;


 int BUS_SPACE_BARRIER_WRITE ;
 int CSR_BARRIER_4 (struct nge_softc*,int ,int ) ;
 int CSR_READ_4 (struct nge_softc*,int ) ;
 int CSR_WRITE_4 (struct nge_softc*,int ,int) ;
 scalar_t__ ENOBUFS ;
 int IFCAP_POLLING ;
 int IFCAP_RXCSUM ;
 int IFCAP_VLAN_HWTAGGING ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int* IF_LLADDR (struct ifnet*) ;
 int NGE_ADDR_HI (int ) ;
 int NGE_ADDR_LO (int ) ;
 int NGE_CFG ;
 int NGE_CFG_EXTSTS_ENB ;
 int NGE_CFG_PHYINTR_DUP ;
 int NGE_CFG_PHYINTR_LNK ;
 int NGE_CFG_PHYINTR_SPD ;
 int NGE_FILTADDR_PAR0 ;
 int NGE_FILTADDR_PAR1 ;
 int NGE_FILTADDR_PAR2 ;
 int NGE_FLAG_LINK ;
 int NGE_IER ;
 int NGE_IHR ;
 int NGE_IMR ;
 int NGE_INTRS ;
 int NGE_LOCK_ASSERT (struct nge_softc*) ;
 int NGE_MIBCTL ;
 int NGE_MIBCTL_CLEAR_CNT ;
 int NGE_MIBCTL_FREEZE_CNT ;
 int NGE_PAUSECSR ;
 int NGE_PAUSECSR_CNT ;
 int NGE_PAUSECSR_PAUSE_ON_DA ;
 int NGE_PAUSECSR_PAUSE_ON_MCAST ;
 int NGE_PAUSECSR_RX_DATAFIFO_THR_HI ;
 int NGE_PAUSECSR_RX_DATAFIFO_THR_LO ;
 int NGE_PAUSECSR_RX_STATFIFO_THR_HI ;
 int NGE_PAUSECSR_RX_STATFIFO_THR_LO ;
 int NGE_PRIOQCTL ;
 int NGE_RXCFG ;
 int NGE_RXFILT_CTL ;
 int NGE_RXFILT_DATA ;
 int NGE_RX_CFG ;
 int NGE_RX_LISTPTR_HI ;
 int NGE_RX_LISTPTR_LO ;
 int NGE_SETBIT (struct nge_softc*,int ,int) ;
 int NGE_TXCFG ;
 int NGE_TX_CFG ;
 int NGE_TX_LISTPTR_HI ;
 int NGE_TX_LISTPTR_LO ;
 int NGE_VIPRXCTL_IPCSUM_ENB ;
 int NGE_VIPRXCTL_TAG_DETECT_ENB ;
 int NGE_VIPRXCTL_TAG_STRIP_ENB ;
 int NGE_VIPTXCTL_CSUM_PER_PKT ;
 int NGE_VIPTXCTL_TAG_PER_PKT ;
 int NGE_VLAN_IP_RXCTL ;
 int NGE_VLAN_IP_TXCTL ;
 int callout_reset (int *,int ,int ,struct nge_softc*) ;
 struct mii_data* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int hz ;
 int mii_mediachg (struct mii_data*) ;
 scalar_t__ nge_list_rx_init (struct nge_softc*) ;
 int nge_list_tx_init (struct nge_softc*) ;
 int nge_reset (struct nge_softc*) ;
 int nge_rxfilter (struct nge_softc*) ;
 int nge_stop (struct nge_softc*) ;
 int nge_tick ;

__attribute__((used)) static void
nge_init_locked(struct nge_softc *sc)
{
 struct ifnet *ifp = sc->nge_ifp;
 struct mii_data *mii;
 uint8_t *eaddr;
 uint32_t reg;

 NGE_LOCK_ASSERT(sc);

 if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0)
  return;




 nge_stop(sc);


 nge_reset(sc);


 CSR_WRITE_4(sc, NGE_RXFILT_CTL, 0);
 CSR_BARRIER_4(sc, NGE_RXFILT_CTL, BUS_SPACE_BARRIER_WRITE);

 mii = device_get_softc(sc->nge_miibus);


 eaddr = IF_LLADDR(sc->nge_ifp);
 CSR_WRITE_4(sc, NGE_RXFILT_CTL, NGE_FILTADDR_PAR0);
 CSR_WRITE_4(sc, NGE_RXFILT_DATA, (eaddr[1] << 8) | eaddr[0]);
 CSR_WRITE_4(sc, NGE_RXFILT_CTL, NGE_FILTADDR_PAR1);
 CSR_WRITE_4(sc, NGE_RXFILT_DATA, (eaddr[3] << 8) | eaddr[2]);
 CSR_WRITE_4(sc, NGE_RXFILT_CTL, NGE_FILTADDR_PAR2);
 CSR_WRITE_4(sc, NGE_RXFILT_DATA, (eaddr[5] << 8) | eaddr[4]);


 if (nge_list_rx_init(sc) == ENOBUFS) {
  device_printf(sc->nge_dev, "initialization failed: no "
   "memory for rx buffers\n");
  nge_stop(sc);
  return;
 }




 nge_list_tx_init(sc);


 nge_rxfilter(sc);


 CSR_WRITE_4(sc, NGE_PRIOQCTL, 0);
 CSR_WRITE_4(sc, NGE_PAUSECSR,
     NGE_PAUSECSR_PAUSE_ON_MCAST |
     NGE_PAUSECSR_PAUSE_ON_DA |
     ((1 << 24) & NGE_PAUSECSR_RX_STATFIFO_THR_HI) |
     ((1 << 22) & NGE_PAUSECSR_RX_STATFIFO_THR_LO) |
     ((1 << 20) & NGE_PAUSECSR_RX_DATAFIFO_THR_HI) |
     ((1 << 18) & NGE_PAUSECSR_RX_DATAFIFO_THR_LO) |
     NGE_PAUSECSR_CNT);




 CSR_WRITE_4(sc, NGE_RX_LISTPTR_HI,
     NGE_ADDR_HI(sc->nge_rdata.nge_rx_ring_paddr));
 CSR_WRITE_4(sc, NGE_RX_LISTPTR_LO,
     NGE_ADDR_LO(sc->nge_rdata.nge_rx_ring_paddr));
 CSR_WRITE_4(sc, NGE_TX_LISTPTR_HI,
     NGE_ADDR_HI(sc->nge_rdata.nge_tx_ring_paddr));
 CSR_WRITE_4(sc, NGE_TX_LISTPTR_LO,
     NGE_ADDR_LO(sc->nge_rdata.nge_tx_ring_paddr));


 CSR_WRITE_4(sc, NGE_RX_CFG, NGE_RXCFG);

 CSR_WRITE_4(sc, NGE_VLAN_IP_RXCTL, 0);




 if ((ifp->if_capenable & IFCAP_RXCSUM) != 0)
  NGE_SETBIT(sc, NGE_VLAN_IP_RXCTL, NGE_VIPRXCTL_IPCSUM_ENB);






 NGE_SETBIT(sc, NGE_VLAN_IP_RXCTL, NGE_VIPRXCTL_TAG_DETECT_ENB);
 if ((ifp->if_capenable & IFCAP_VLAN_HWTAGGING) != 0)
  NGE_SETBIT(sc, NGE_VLAN_IP_RXCTL, NGE_VIPRXCTL_TAG_STRIP_ENB);


 CSR_WRITE_4(sc, NGE_TX_CFG, NGE_TXCFG);




 CSR_WRITE_4(sc, NGE_VLAN_IP_TXCTL, NGE_VIPTXCTL_CSUM_PER_PKT);





 NGE_SETBIT(sc, NGE_VLAN_IP_TXCTL, NGE_VIPTXCTL_TAG_PER_PKT);







 NGE_SETBIT(sc, NGE_CFG, NGE_CFG_PHYINTR_SPD |
     NGE_CFG_PHYINTR_LNK | NGE_CFG_PHYINTR_DUP | NGE_CFG_EXTSTS_ENB);







 CSR_WRITE_4(sc, NGE_IHR, sc->nge_int_holdoff);




 reg = CSR_READ_4(sc, NGE_MIBCTL);
 reg &= ~NGE_MIBCTL_FREEZE_CNT;
 reg |= NGE_MIBCTL_CLEAR_CNT;
 CSR_WRITE_4(sc, NGE_MIBCTL, reg);




 CSR_WRITE_4(sc, NGE_IMR, NGE_INTRS);
 CSR_WRITE_4(sc, NGE_IER, 1);

 sc->nge_flags &= ~NGE_FLAG_LINK;
 mii_mediachg(mii);

 sc->nge_watchdog_timer = 0;
 callout_reset(&sc->nge_stat_ch, hz, nge_tick, sc);

 ifp->if_drv_flags |= IFF_DRV_RUNNING;
 ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;
}
