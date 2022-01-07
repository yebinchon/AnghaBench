
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct mii_data {int dummy; } ;
struct ifnet {int if_drv_flags; int if_mtu; } ;
typedef int bus_addr_t ;
struct TYPE_16__ {int txd_cur; int rxd_cur; int dev; int tick_ch; int flags; scalar_t__ tx_inproc; scalar_t__ txd_ack; scalar_t__ txs_ack; int dma_txs_busaddr; int dma_txd_busaddr; int dma_rxd_busaddr; int txs_base; int txd_base; int rxd_base_dma; int miibus; struct ifnet* ifp; } ;
typedef TYPE_1__ ae_softc_t ;


 int AE_CUT_THRESH_DEFAULT ;
 int AE_CUT_THRESH_REG ;
 int AE_DESC_ADDR_HI_REG ;
 int AE_DMAREAD_EN ;
 int AE_DMAREAD_REG ;
 int AE_DMAWRITE_EN ;
 int AE_DMAWRITE_REG ;
 int AE_EADDR0_REG ;
 int AE_EADDR1_REG ;
 int AE_FLAG_LINK ;
 int AE_FLAG_TXAVAIL ;
 int AE_FLOW_THRESH_HI_REG ;
 int AE_FLOW_THRESH_LO_REG ;
 int AE_HALFBUF_DEFAULT ;
 int AE_HALFBUF_MASK ;
 int AE_HALFBUF_SHIFT ;
 int AE_HDPX_ABEBT_DEFAULT ;
 int AE_HDPX_ABEBT_MASK ;
 int AE_HDPX_ABEBT_SHIFT ;
 int AE_HDPX_EXC_EN ;
 int AE_HDPX_JAMIPG_DEFAULT ;
 int AE_HDPX_JAMIPG_MASK ;
 int AE_HDPX_JAMIPG_SHIFT ;
 int AE_HDPX_LCOL_DEFAULT ;
 int AE_HDPX_LCOL_MASK ;
 int AE_HDPX_LCOL_SHIFT ;
 int AE_HDPX_REG ;
 int AE_HDPX_RETRY_DEFAULT ;
 int AE_HDPX_RETRY_MASK ;
 int AE_HDPX_RETRY_SHIFT ;
 int AE_ICT_DEFAULT ;
 int AE_ICT_REG ;
 int AE_IFG_IPGR1_DEFAULT ;
 int AE_IFG_IPGR1_MASK ;
 int AE_IFG_IPGR1_SHIFT ;
 int AE_IFG_IPGR2_DEFAULT ;
 int AE_IFG_IPGR2_MASK ;
 int AE_IFG_IPGR2_SHIFT ;
 int AE_IFG_REG ;
 int AE_IFG_RXIPG_DEFAULT ;
 int AE_IFG_RXIPG_MASK ;
 int AE_IFG_RXIPG_SHIFT ;
 int AE_IFG_TXIPG_DEFAULT ;
 int AE_IFG_TXIPG_MASK ;
 int AE_IFG_TXIPG_SHIFT ;
 int AE_IMR_DEFAULT ;
 int AE_IMR_REG ;
 int AE_IMT_DEFAULT ;
 int AE_IMT_REG ;
 int AE_ISR_PHY_LINKDOWN ;
 int AE_ISR_REG ;
 int AE_LOCK_ASSERT (TYPE_1__*) ;
 int AE_MAC_CLK_PHY ;
 int AE_MAC_FULL_DUPLEX ;
 int AE_MAC_PREAMBLE_DEFAULT ;
 int AE_MAC_PREAMBLE_MASK ;
 int AE_MAC_PREAMBLE_SHIFT ;
 int AE_MAC_REG ;
 int AE_MAC_RX_EN ;
 int AE_MAC_RX_FLOW_EN ;
 int AE_MAC_TX_AUTOPAD ;
 int AE_MAC_TX_CRC_EN ;
 int AE_MAC_TX_EN ;
 int AE_MAC_TX_FLOW_EN ;
 int AE_MASTER_IMT_EN ;
 int AE_MASTER_MANUAL_INT ;
 int AE_MASTER_REG ;
 int AE_MB_RXD_IDX_REG ;
 int AE_MB_TXD_IDX_REG ;
 int AE_MTU_REG ;
 int AE_READ_4 (TYPE_1__*,int ) ;
 int AE_RXD_ADDR_LO_REG ;
 int AE_RXD_COUNT_DEFAULT ;
 int AE_RXD_COUNT_MIN ;
 int AE_RXD_COUNT_REG ;
 int AE_RXD_PADDING ;
 int AE_TXD_ADDR_LO_REG ;
 int AE_TXD_BUFSIZE_DEFAULT ;
 int AE_TXD_BUFSIZE_REG ;
 int AE_TXS_ADDR_LO_REG ;
 int AE_TXS_COUNT_DEFAULT ;
 int AE_TXS_COUNT_REG ;
 int AE_WOL_REG ;
 int AE_WRITE_1 (TYPE_1__*,int ,int ) ;
 int AE_WRITE_2 (TYPE_1__*,int ,int) ;
 int AE_WRITE_4 (TYPE_1__*,int ,int) ;
 int BUS_ADDR_HI (int ) ;
 int BUS_ADDR_LO (int ) ;
 int ENXIO ;
 int ETHER_ADDR_LEN ;
 int ETHER_CRC_LEN ;
 int ETHER_HDR_LEN ;
 int ETHER_VLAN_ENCAP_LEN ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int IF_LLADDR (struct ifnet*) ;
 int ae_pcie_init (TYPE_1__*) ;
 int ae_phy_init (TYPE_1__*) ;
 int ae_powersave_disable (TYPE_1__*) ;
 int ae_reset (TYPE_1__*) ;
 int ae_rxfilter (TYPE_1__*) ;
 int ae_rxvlan (TYPE_1__*) ;
 int ae_stop (TYPE_1__*) ;
 int ae_tick ;
 int bcopy (int ,int*,int) ;
 int bzero (int ,int) ;
 int callout_reset (int *,int ,int ,TYPE_1__*) ;
 struct mii_data* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int hz ;
 int mii_mediachg (struct mii_data*) ;

__attribute__((used)) static int
ae_init_locked(ae_softc_t *sc)
{
 struct ifnet *ifp;
 struct mii_data *mii;
 uint8_t eaddr[ETHER_ADDR_LEN];
 uint32_t val;
 bus_addr_t addr;

 AE_LOCK_ASSERT(sc);

 ifp = sc->ifp;
 if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0)
  return (0);
 mii = device_get_softc(sc->miibus);

 ae_stop(sc);
 ae_reset(sc);
 ae_pcie_init(sc);
 ae_phy_init(sc);
 ae_powersave_disable(sc);




 AE_WRITE_4(sc, AE_ISR_REG, 0xffffffff);




 bcopy(IF_LLADDR(ifp), eaddr, ETHER_ADDR_LEN);
 val = eaddr[2] << 24 | eaddr[3] << 16 | eaddr[4] << 8 | eaddr[5];
 AE_WRITE_4(sc, AE_EADDR0_REG, val);
 val = eaddr[0] << 8 | eaddr[1];
 AE_WRITE_4(sc, AE_EADDR1_REG, val);

 bzero(sc->rxd_base_dma, AE_RXD_COUNT_DEFAULT * 1536 + AE_RXD_PADDING);
 bzero(sc->txd_base, AE_TXD_BUFSIZE_DEFAULT);
 bzero(sc->txs_base, AE_TXS_COUNT_DEFAULT * 4);



 addr = sc->dma_rxd_busaddr;
 AE_WRITE_4(sc, AE_DESC_ADDR_HI_REG, BUS_ADDR_HI(addr));
 AE_WRITE_4(sc, AE_RXD_ADDR_LO_REG, BUS_ADDR_LO(addr));
 addr = sc->dma_txd_busaddr;
 AE_WRITE_4(sc, AE_TXD_ADDR_LO_REG, BUS_ADDR_LO(addr));
 addr = sc->dma_txs_busaddr;
 AE_WRITE_4(sc, AE_TXS_ADDR_LO_REG, BUS_ADDR_LO(addr));




 AE_WRITE_2(sc, AE_RXD_COUNT_REG, AE_RXD_COUNT_DEFAULT);
 AE_WRITE_2(sc, AE_TXD_BUFSIZE_REG, AE_TXD_BUFSIZE_DEFAULT / 4);
 AE_WRITE_2(sc, AE_TXS_COUNT_REG, AE_TXS_COUNT_DEFAULT);




 val = ((AE_IFG_TXIPG_DEFAULT << AE_IFG_TXIPG_SHIFT) &
     AE_IFG_TXIPG_MASK) |
     ((AE_IFG_RXIPG_DEFAULT << AE_IFG_RXIPG_SHIFT) &
     AE_IFG_RXIPG_MASK) |
     ((AE_IFG_IPGR1_DEFAULT << AE_IFG_IPGR1_SHIFT) &
     AE_IFG_IPGR1_MASK) |
     ((AE_IFG_IPGR2_DEFAULT << AE_IFG_IPGR2_SHIFT) &
     AE_IFG_IPGR2_MASK);
 AE_WRITE_4(sc, AE_IFG_REG, val);




 val = ((AE_HDPX_LCOL_DEFAULT << AE_HDPX_LCOL_SHIFT) &
     AE_HDPX_LCOL_MASK) |
     ((AE_HDPX_RETRY_DEFAULT << AE_HDPX_RETRY_SHIFT) &
     AE_HDPX_RETRY_MASK) |
     ((AE_HDPX_ABEBT_DEFAULT << AE_HDPX_ABEBT_SHIFT) &
     AE_HDPX_ABEBT_MASK) |
     ((AE_HDPX_JAMIPG_DEFAULT << AE_HDPX_JAMIPG_SHIFT) &
     AE_HDPX_JAMIPG_MASK) | AE_HDPX_EXC_EN;
 AE_WRITE_4(sc, AE_HDPX_REG, val);




 AE_WRITE_2(sc, AE_IMT_REG, AE_IMT_DEFAULT);
 val = AE_READ_4(sc, AE_MASTER_REG);
 val |= AE_MASTER_IMT_EN;
 AE_WRITE_4(sc, AE_MASTER_REG, val);




 AE_WRITE_2(sc, AE_ICT_REG, AE_ICT_DEFAULT);




 val = ifp->if_mtu + ETHER_HDR_LEN + ETHER_VLAN_ENCAP_LEN +
     ETHER_CRC_LEN;
 AE_WRITE_2(sc, AE_MTU_REG, val);




 AE_WRITE_4(sc, AE_CUT_THRESH_REG, AE_CUT_THRESH_DEFAULT);




 AE_WRITE_2(sc, AE_FLOW_THRESH_HI_REG, (AE_RXD_COUNT_DEFAULT / 8) * 7);
 AE_WRITE_2(sc, AE_FLOW_THRESH_LO_REG, (AE_RXD_COUNT_MIN / 8) >
     (AE_RXD_COUNT_DEFAULT / 12) ? (AE_RXD_COUNT_MIN / 8) :
     (AE_RXD_COUNT_DEFAULT / 12));




 sc->txd_cur = sc->rxd_cur = 0;
 sc->txs_ack = sc->txd_ack = 0;
 sc->rxd_cur = 0;
 AE_WRITE_2(sc, AE_MB_TXD_IDX_REG, sc->txd_cur);
 AE_WRITE_2(sc, AE_MB_RXD_IDX_REG, sc->rxd_cur);

 sc->tx_inproc = 0;
 sc->flags |= AE_FLAG_TXAVAIL;




 AE_WRITE_1(sc, AE_DMAREAD_REG, AE_DMAREAD_EN);
 AE_WRITE_1(sc, AE_DMAWRITE_REG, AE_DMAWRITE_EN);




 val = AE_READ_4(sc, AE_ISR_REG);
 if ((val & AE_ISR_PHY_LINKDOWN) != 0) {
  device_printf(sc->dev, "Initialization failed.\n");
  return (ENXIO);
 }




 AE_WRITE_4(sc, AE_ISR_REG, 0x3fffffff);
 AE_WRITE_4(sc, AE_ISR_REG, 0x0);




 val = AE_READ_4(sc, AE_MASTER_REG);
 AE_WRITE_4(sc, AE_MASTER_REG, val | AE_MASTER_MANUAL_INT);
 AE_WRITE_4(sc, AE_IMR_REG, AE_IMR_DEFAULT);




 AE_WRITE_4(sc, AE_WOL_REG, 0);




 val = AE_MAC_TX_CRC_EN | AE_MAC_TX_AUTOPAD |
     AE_MAC_FULL_DUPLEX | AE_MAC_CLK_PHY |
     AE_MAC_TX_FLOW_EN | AE_MAC_RX_FLOW_EN |
     ((AE_HALFBUF_DEFAULT << AE_HALFBUF_SHIFT) & AE_HALFBUF_MASK) |
     ((AE_MAC_PREAMBLE_DEFAULT << AE_MAC_PREAMBLE_SHIFT) &
     AE_MAC_PREAMBLE_MASK);
 AE_WRITE_4(sc, AE_MAC_REG, val);




 ae_rxfilter(sc);
 ae_rxvlan(sc);




 val = AE_READ_4(sc, AE_MAC_REG);
 AE_WRITE_4(sc, AE_MAC_REG, val | AE_MAC_TX_EN | AE_MAC_RX_EN);

 sc->flags &= ~AE_FLAG_LINK;
 mii_mediachg(mii);

 callout_reset(&sc->tick_ch, hz, ae_tick, sc);

 ifp->if_drv_flags |= IFF_DRV_RUNNING;
 ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;





 return (0);
}
