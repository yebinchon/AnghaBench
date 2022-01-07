
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct llan_softc {TYPE_2__* ifp; int * mac_address; int media; TYPE_1__* rx_xfer; int rxbuf_dma_tag; int tx_dma_map; int tx_dma_tag; int rx_buf; int rx_buf_map; int rx_dma_tag; int io_lock; int irq_cookie; int irq; scalar_t__ irqid; int unit; int dev; } ;
typedef scalar_t__ ssize_t ;
typedef int phandle_t ;
typedef int device_t ;
struct TYPE_10__ {int ifq_drv_maxlen; } ;
struct TYPE_9__ {int if_flags; TYPE_6__ if_snd; int if_init; int if_ioctl; int if_start; scalar_t__ if_capenable; scalar_t__ if_capabilities; scalar_t__ if_hwassist; int if_mtu; struct llan_softc* if_softc; } ;
struct TYPE_8__ {int * rx_mbuf; int rx_dmamap; } ;


 int BUS_DMA_WAITOK ;
 int BUS_DMA_ZERO ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int BUS_SPACE_MAXSIZE ;
 int BUS_SPACE_MAXSIZE_32BIT ;
 int ENXIO ;
 int ETHERMTU ;
 scalar_t__ ETHER_ADDR_LEN ;
 int IFF_BROADCAST ;
 int IFF_MULTICAST ;
 int IFF_SIMPLEX ;
 int IFM_AUTO ;
 int IFM_ETHER ;
 int IFM_IMASK ;
 int IFQ_SET_MAXLEN (TYPE_6__*,int ) ;
 int IFQ_SET_READY (TYPE_6__*) ;
 int IFT_ETHER ;
 int INTR_ENTROPY ;
 int INTR_MPSAFE ;
 int INTR_TYPE_MISC ;
 int LINK_STATE_UP ;
 int LLAN_MAX_RX_PACKETS ;
 int LLAN_MAX_TX_PACKETS ;
 int LLAN_RX_BUF_LEN ;
 int MTX_DEF ;
 int OF_getencprop (int ,char*,int *,int) ;
 scalar_t__ OF_getprop (int ,char*,int *,int) ;
 int RF_ACTIVE ;
 int SYS_RES_IRQ ;
 int bcopy (int *,int *,scalar_t__) ;
 int bus_alloc_resource_any (int ,int ,scalar_t__*,int ) ;
 int bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int ,int,int ,int ,int *,int *,int *) ;
 int bus_dmamap_create (int ,int ,int *) ;
 int bus_dmamap_load (int ,int ,int ,int ,int ,struct llan_softc*,int ) ;
 int bus_dmamem_alloc (int ,void**,int,int *) ;
 int bus_get_dma_tag (int ) ;
 int bus_setup_intr (int ,int ,int,int *,int ,struct llan_softc*,int *) ;
 int * busdma_lock_mutex ;
 int bzero (int *,int) ;
 int device_get_name (int ) ;
 struct llan_softc* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*) ;
 int ether_ifattach (TYPE_2__*,int *) ;
 TYPE_2__* if_alloc (int ) ;
 int if_initname (TYPE_2__*,int ,int ) ;
 int if_link_state_change (TYPE_2__*,int ) ;
 int ifmedia_add (int *,int,int ,int *) ;
 int ifmedia_init (int *,int ,int ,int ) ;
 int ifmedia_set (int *,int) ;
 int llan_init ;
 int llan_intr ;
 int llan_ioctl ;
 int llan_media_change ;
 int llan_media_status ;
 int llan_rx_load_cb ;
 int llan_start ;
 int mtx_destroy (int *) ;
 int mtx_init (int *,char*,int *,int ) ;
 int ofw_bus_get_node (int ) ;

__attribute__((used)) static int
llan_attach(device_t dev)
{
 struct llan_softc *sc;
 phandle_t node;
 int error, i;
 ssize_t len;

 sc = device_get_softc(dev);
 sc->dev = dev;


 node = ofw_bus_get_node(dev);
 len = OF_getprop(node, "local-mac-address", sc->mac_address,
     sizeof(sc->mac_address));



 if (len == ETHER_ADDR_LEN) {
  bcopy(sc->mac_address, &sc->mac_address[2], len);

  bzero(sc->mac_address, 2);
 }
 OF_getencprop(node, "reg", &sc->unit, sizeof(sc->unit));

 mtx_init(&sc->io_lock, "llan", ((void*)0), MTX_DEF);


 sc->irqid = 0;
 sc->irq = bus_alloc_resource_any(dev, SYS_RES_IRQ, &sc->irqid,
     RF_ACTIVE);

 if (!sc->irq) {
  device_printf(dev, "Could not allocate IRQ\n");
  mtx_destroy(&sc->io_lock);
  return (ENXIO);
 }

 bus_setup_intr(dev, sc->irq, INTR_TYPE_MISC | INTR_MPSAFE |
     INTR_ENTROPY, ((void*)0), llan_intr, sc, &sc->irq_cookie);


 error = bus_dma_tag_create(bus_get_dma_tag(dev), 16, 0,
            BUS_SPACE_MAXADDR, BUS_SPACE_MAXADDR, ((void*)0), ((void*)0),
     LLAN_RX_BUF_LEN, 1, BUS_SPACE_MAXSIZE_32BIT,
     0, ((void*)0), ((void*)0), &sc->rx_dma_tag);
 error = bus_dma_tag_create(bus_get_dma_tag(dev), 4, 0,
            BUS_SPACE_MAXADDR, BUS_SPACE_MAXADDR, ((void*)0), ((void*)0),
     BUS_SPACE_MAXSIZE, 1, BUS_SPACE_MAXSIZE_32BIT,
     0, ((void*)0), ((void*)0), &sc->rxbuf_dma_tag);
 error = bus_dma_tag_create(bus_get_dma_tag(dev), 1, 0,
            BUS_SPACE_MAXADDR_32BIT, BUS_SPACE_MAXADDR, ((void*)0), ((void*)0),
     BUS_SPACE_MAXSIZE, 6, BUS_SPACE_MAXSIZE_32BIT, 0,
     busdma_lock_mutex, &sc->io_lock, &sc->tx_dma_tag);

 error = bus_dmamem_alloc(sc->rx_dma_tag, (void **)&sc->rx_buf,
     BUS_DMA_WAITOK | BUS_DMA_ZERO, &sc->rx_buf_map);
 error = bus_dmamap_load(sc->rx_dma_tag, sc->rx_buf_map, sc->rx_buf,
     LLAN_RX_BUF_LEN, llan_rx_load_cb, sc, 0);


 bus_dmamap_create(sc->tx_dma_tag, 0, &sc->tx_dma_map);


 for (i = 0; i < LLAN_MAX_RX_PACKETS; i++) {
  error = bus_dmamap_create(sc->rxbuf_dma_tag, 0,
      &sc->rx_xfer[i].rx_dmamap);
  sc->rx_xfer[i].rx_mbuf = ((void*)0);
 }


 sc->ifp = if_alloc(IFT_ETHER);
 sc->ifp->if_softc = sc;

 if_initname(sc->ifp, device_get_name(dev), device_get_unit(dev));
 sc->ifp->if_mtu = ETHERMTU;
 sc->ifp->if_flags = IFF_BROADCAST | IFF_SIMPLEX | IFF_MULTICAST;
 sc->ifp->if_hwassist = 0;
 sc->ifp->if_capabilities = 0;
 sc->ifp->if_capenable = 0;
 sc->ifp->if_start = llan_start;
 sc->ifp->if_ioctl = llan_ioctl;
 sc->ifp->if_init = llan_init;

 ifmedia_init(&sc->media, IFM_IMASK, llan_media_change,
     llan_media_status);
 ifmedia_add(&sc->media, IFM_ETHER | IFM_AUTO, 0, ((void*)0));
 ifmedia_set(&sc->media, IFM_ETHER | IFM_AUTO);

 IFQ_SET_MAXLEN(&sc->ifp->if_snd, LLAN_MAX_TX_PACKETS);
 sc->ifp->if_snd.ifq_drv_maxlen = LLAN_MAX_TX_PACKETS;
 IFQ_SET_READY(&sc->ifp->if_snd);

 ether_ifattach(sc->ifp, &sc->mac_address[2]);


 if_link_state_change(sc->ifp, LINK_STATE_UP);

 return (0);
}
