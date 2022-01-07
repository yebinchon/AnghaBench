
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {scalar_t__ ifq_drv_maxlen; } ;
struct ifnet {int if_flags; int if_hdrlen; int if_capabilities; int if_capenable; TYPE_1__ if_snd; int if_init; int if_qflush; int if_transmit; int if_ioctl; struct atse_softc* if_softc; } ;
struct ether_vlan_header {int dummy; } ;
struct atse_softc {int atse_phy_addr; int * xchan_rx; int atse_eth_addr; int atse_miibus; struct ifnet* atse_ifp; int atse_bmcr1; int atse_bmcr0; int atse_mtx; int atse_tick; int * br; int br_mtx; int dev; int ih_rx; int * xdma_rx; int * xchan_tx; int ih_tx; int * xdma_tx; } ;
typedef int device_t ;


 scalar_t__ ATSE_TX_LIST_CNT ;
 int BASE_CFG_MDIO_ADDR0 ;
 int BASE_CFG_MDIO_ADDR1 ;
 int BMSR_DEFCAPMASK ;
 int BUFRING_SIZE ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int CSR_WRITE_4 (struct atse_softc*,int ,int) ;
 int ENOMEM ;
 int ENOSPC ;
 int ENXIO ;
 int IFCAP_VLAN_MTU ;
 int IFF_BROADCAST ;
 int IFF_MULTICAST ;
 int IFF_SIMPLEX ;
 int IFQ_SET_MAXLEN (TYPE_1__*,scalar_t__) ;
 int IFQ_SET_READY (TYPE_1__*) ;
 int IFT_ETHER ;
 int MCLBYTES ;
 int MDIO_0_START ;
 int MDIO_1_START ;
 int MII_OFFSET_ANY ;
 int MII_PHY_ANY ;
 int MTX_DEF ;
 int * MTX_NETWORK_LOCK ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int NUM_RX_MBUF ;
 int RX_QUEUE_SIZE ;
 int TX_QUEUE_SIZE ;
 int XCHAN_CAP_NOSEG ;
 int atse_detach (int ) ;
 int atse_ethernet_option_bits_read (int ) ;
 int atse_ifmedia_sts ;
 int atse_ifmedia_upd ;
 int atse_init ;
 int atse_ioctl ;
 int atse_qflush ;
 int atse_reset (struct atse_softc*) ;
 int atse_rx_enqueue (struct atse_softc*,int ) ;
 int atse_sysctl_stats_attach (int ) ;
 int atse_transmit ;
 int atse_xdma_rx_intr ;
 int atse_xdma_tx_intr ;
 int * buf_ring_alloc (int ,int ,int ,int *) ;
 int callout_init_mtx (int *,int *,int ) ;
 int device_get_name (int ) ;
 char* device_get_nameunit (int ) ;
 struct atse_softc* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*,...) ;
 int ether_ifattach (struct ifnet*,int ) ;
 struct ifnet* if_alloc (int ) ;
 int if_initname (struct ifnet*,int ,int) ;
 int mii_attach (int ,int *,struct ifnet*,int ,int ,int ,int ,int ,int ) ;
 int mtx_init (int *,char*,int *,int ) ;
 void* xdma_channel_alloc (int *,int ) ;
 void* xdma_ofw_get (int ,char*) ;
 int xdma_prep_sg (int *,int ,int ,int,int,int ,int ,int ) ;
 int xdma_queue_submit (int *) ;
 int xdma_setup_intr (int *,int ,struct atse_softc*,int *) ;

int
atse_attach(device_t dev)
{
 struct atse_softc *sc;
 struct ifnet *ifp;
 uint32_t caps;
 int error;

 sc = device_get_softc(dev);
 sc->dev = dev;


 sc->xdma_tx = xdma_ofw_get(sc->dev, "tx");
 if (sc->xdma_tx == ((void*)0)) {
  device_printf(dev, "Can't find DMA controller.\n");
  return (ENXIO);
 }







 caps = XCHAN_CAP_NOSEG;


 sc->xchan_tx = xdma_channel_alloc(sc->xdma_tx, caps);
 if (sc->xchan_tx == ((void*)0)) {
  device_printf(dev, "Can't alloc virtual DMA channel.\n");
  return (ENXIO);
 }


 error = xdma_setup_intr(sc->xchan_tx, atse_xdma_tx_intr, sc, &sc->ih_tx);
 if (error) {
  device_printf(sc->dev,
      "Can't setup xDMA interrupt handler.\n");
  return (ENXIO);
 }

 xdma_prep_sg(sc->xchan_tx,
     TX_QUEUE_SIZE,
     MCLBYTES,
     8,
     16,
     0,
     BUS_SPACE_MAXADDR_32BIT,
     BUS_SPACE_MAXADDR);


 sc->xdma_rx = xdma_ofw_get(sc->dev, "rx");
 if (sc->xdma_rx == ((void*)0)) {
  device_printf(dev, "Can't find DMA controller.\n");
  return (ENXIO);
 }


 sc->xchan_rx = xdma_channel_alloc(sc->xdma_rx, caps);
 if (sc->xchan_rx == ((void*)0)) {
  device_printf(dev, "Can't alloc virtual DMA channel.\n");
  return (ENXIO);
 }


 error = xdma_setup_intr(sc->xchan_rx, atse_xdma_rx_intr, sc, &sc->ih_rx);
 if (error) {
  device_printf(sc->dev,
      "Can't setup xDMA interrupt handler.\n");
  return (ENXIO);
 }

 xdma_prep_sg(sc->xchan_rx,
     RX_QUEUE_SIZE,
     MCLBYTES,
     1,
     16,
     0,
     BUS_SPACE_MAXADDR_32BIT,
     BUS_SPACE_MAXADDR);

 mtx_init(&sc->br_mtx, "buf ring mtx", ((void*)0), MTX_DEF);
 sc->br = buf_ring_alloc(BUFRING_SIZE, M_DEVBUF,
     M_NOWAIT, &sc->br_mtx);
 if (sc->br == ((void*)0)) {
  return (ENOMEM);
 }

 atse_ethernet_option_bits_read(dev);

 mtx_init(&sc->atse_mtx, device_get_nameunit(dev), MTX_NETWORK_LOCK,
     MTX_DEF);

 callout_init_mtx(&sc->atse_tick, &sc->atse_mtx, 0);
 sc->atse_phy_addr = device_get_unit(dev);
 sc->atse_bmcr1 = MDIO_1_START;
 CSR_WRITE_4(sc, BASE_CFG_MDIO_ADDR1, sc->atse_phy_addr);


 atse_reset(sc);


 ifp = sc->atse_ifp = if_alloc(IFT_ETHER);
 if (ifp == ((void*)0)) {
  device_printf(dev, "if_alloc() failed\n");
  error = ENOSPC;
  goto err;
 }
 ifp->if_softc = sc;
 if_initname(ifp, device_get_name(dev), device_get_unit(dev));
 ifp->if_flags = IFF_BROADCAST | IFF_SIMPLEX | IFF_MULTICAST;
 ifp->if_ioctl = atse_ioctl;
 ifp->if_transmit = atse_transmit;
 ifp->if_qflush = atse_qflush;
 ifp->if_init = atse_init;
 IFQ_SET_MAXLEN(&ifp->if_snd, ATSE_TX_LIST_CNT - 1);
 ifp->if_snd.ifq_drv_maxlen = ATSE_TX_LIST_CNT - 1;
 IFQ_SET_READY(&ifp->if_snd);


 error = mii_attach(dev, &sc->atse_miibus, ifp, atse_ifmedia_upd,
     atse_ifmedia_sts, BMSR_DEFCAPMASK, MII_PHY_ANY, MII_OFFSET_ANY, 0);
 if (error != 0) {
  device_printf(dev, "attaching PHY failed: %d\n", error);
  goto err;
 }


 ether_ifattach(ifp, sc->atse_eth_addr);


 ifp->if_hdrlen = sizeof(struct ether_vlan_header);
 ifp->if_capabilities |= IFCAP_VLAN_MTU;
 ifp->if_capenable = ifp->if_capabilities;

err:
 if (error != 0) {
  atse_detach(dev);
 }

 if (error == 0) {
  atse_sysctl_stats_attach(dev);
 }

 atse_rx_enqueue(sc, NUM_RX_MBUF);
 xdma_queue_submit(sc->xchan_rx);

 return (error);
}
