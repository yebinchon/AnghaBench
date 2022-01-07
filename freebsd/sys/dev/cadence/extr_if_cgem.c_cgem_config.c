
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_char ;
struct cgem_softc {int net_ctl_shadow; scalar_t__ txring_physaddr; scalar_t__ rxring_physaddr; int ifp; } ;
typedef int if_t ;


 int CGEM_ASSERT_LOCKED (struct cgem_softc*) ;
 int CGEM_DMA_CFG ;
 int CGEM_DMA_CFG_AHB_FIXED_BURST_LEN_16 ;
 int CGEM_DMA_CFG_CHKSUM_GEN_OFFLOAD_EN ;
 int CGEM_DMA_CFG_DISC_WHEN_NO_AHB ;
 int CGEM_DMA_CFG_RX_BUF_SIZE (int ) ;
 int CGEM_DMA_CFG_RX_PKTBUF_MEMSZ_SEL_8K ;
 int CGEM_DMA_CFG_TX_PKTBUF_MEMSZ_SEL ;
 int CGEM_INTR_EN ;
 int CGEM_INTR_HRESP_NOT_OK ;
 int CGEM_INTR_RX_COMPLETE ;
 int CGEM_INTR_RX_OVERRUN ;
 int CGEM_INTR_RX_USED_READ ;
 int CGEM_INTR_TX_USED_READ ;
 int CGEM_NET_CFG ;
 int CGEM_NET_CFG_1536RXEN ;
 int CGEM_NET_CFG_DBUS_WIDTH_32 ;
 int CGEM_NET_CFG_FCS_REMOVE ;
 int CGEM_NET_CFG_FULL_DUPLEX ;
 int CGEM_NET_CFG_GIGE_EN ;
 int CGEM_NET_CFG_MDC_CLK_DIV_64 ;
 int CGEM_NET_CFG_RX_BUF_OFFSET (int ) ;
 int CGEM_NET_CFG_RX_CHKSUM_OFFLD_EN ;
 int CGEM_NET_CFG_SPEED100 ;
 int CGEM_NET_CTRL ;
 int CGEM_NET_CTRL_RX_EN ;
 int CGEM_NET_CTRL_TX_EN ;
 int CGEM_RX_QBAR ;
 int CGEM_SPEC_ADDR_HI (int ) ;
 int CGEM_SPEC_ADDR_LOW (int ) ;
 int CGEM_TX_QBAR ;
 int ETHER_ALIGN ;
 int IFCAP_RXCSUM ;
 int IFCAP_TXCSUM ;
 int MCLBYTES ;
 int WR4 (struct cgem_softc*,int ,int) ;
 int if_getcapenable (int ) ;
 int* if_getlladdr (int ) ;

__attribute__((used)) static void
cgem_config(struct cgem_softc *sc)
{
 if_t ifp = sc->ifp;
 uint32_t net_cfg;
 uint32_t dma_cfg;
 u_char *eaddr = if_getlladdr(ifp);

 CGEM_ASSERT_LOCKED(sc);


 net_cfg = CGEM_NET_CFG_DBUS_WIDTH_32 |
  CGEM_NET_CFG_MDC_CLK_DIV_64 |
  CGEM_NET_CFG_FCS_REMOVE |
  CGEM_NET_CFG_RX_BUF_OFFSET(ETHER_ALIGN) |
  CGEM_NET_CFG_GIGE_EN |
  CGEM_NET_CFG_1536RXEN |
  CGEM_NET_CFG_FULL_DUPLEX |
  CGEM_NET_CFG_SPEED100;


 if ((if_getcapenable(ifp) & IFCAP_RXCSUM) != 0)
  net_cfg |= CGEM_NET_CFG_RX_CHKSUM_OFFLD_EN;

 WR4(sc, CGEM_NET_CFG, net_cfg);


 dma_cfg = CGEM_DMA_CFG_RX_BUF_SIZE(MCLBYTES) |
  CGEM_DMA_CFG_RX_PKTBUF_MEMSZ_SEL_8K |
  CGEM_DMA_CFG_TX_PKTBUF_MEMSZ_SEL |
  CGEM_DMA_CFG_AHB_FIXED_BURST_LEN_16 |
  CGEM_DMA_CFG_DISC_WHEN_NO_AHB;


 if ((if_getcapenable(ifp) & IFCAP_TXCSUM) != 0)
  dma_cfg |= CGEM_DMA_CFG_CHKSUM_GEN_OFFLOAD_EN;

 WR4(sc, CGEM_DMA_CFG, dma_cfg);


 WR4(sc, CGEM_RX_QBAR, (uint32_t) sc->rxring_physaddr);
 WR4(sc, CGEM_TX_QBAR, (uint32_t) sc->txring_physaddr);


 sc->net_ctl_shadow |= (CGEM_NET_CTRL_TX_EN | CGEM_NET_CTRL_RX_EN);
 WR4(sc, CGEM_NET_CTRL, sc->net_ctl_shadow);


 WR4(sc, CGEM_SPEC_ADDR_LOW(0), (eaddr[3] << 24) |
     (eaddr[2] << 16) | (eaddr[1] << 8) | eaddr[0]);
 WR4(sc, CGEM_SPEC_ADDR_HI(0), (eaddr[5] << 8) | eaddr[4]);


 WR4(sc, CGEM_INTR_EN,
     CGEM_INTR_RX_COMPLETE | CGEM_INTR_RX_OVERRUN |
     CGEM_INTR_TX_USED_READ | CGEM_INTR_RX_USED_READ |
     CGEM_INTR_HRESP_NOT_OK);
}
