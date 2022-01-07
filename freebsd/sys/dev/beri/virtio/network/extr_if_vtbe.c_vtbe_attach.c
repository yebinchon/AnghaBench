
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct vtbe_softc {int hdrsize; int is_attached; struct ifnet* ifp; int dev; int pio_recv; int pio_send; int beri_mem_offset; int mtx; int * res; int bsh; int bst; } ;
struct virtio_net_hdr {int dummy; } ;
struct TYPE_3__ {int ifq_drv_maxlen; } ;
struct ifnet {int if_flags; int if_hdrlen; TYPE_1__ if_snd; int if_init; int if_ioctl; int if_start; int if_capabilities; int if_capenable; struct vtbe_softc* if_softc; int if_baudrate; } ;
struct ether_vlan_header {int dummy; } ;
typedef int device_t ;


 int DESC_COUNT ;
 int ENXIO ;
 int ETHER_ADDR_LEN ;
 int IFCAP_VLAN_MTU ;
 int IFF_BROADCAST ;
 int IFF_MULTICAST ;
 int IFF_PROMISC ;
 int IFF_SIMPLEX ;
 int IFQ_SET_MAXLEN (TYPE_1__*,int) ;
 int IFQ_SET_READY (TYPE_1__*) ;
 int IFT_ETHER ;
 int IF_Gbps (int) ;
 int MTX_DEF ;
 int MTX_NETWORK_LOCK ;
 int VIRTIO_F_NOTIFY_ON_EMPTY ;
 int VIRTIO_ID_NETWORK ;
 int VIRTIO_MMIO_DEVICE_ID ;
 int VIRTIO_MMIO_HOST_FEATURES ;
 int VIRTIO_MMIO_QUEUE_NUM_MAX ;
 int VIRTIO_NET_F_MAC ;
 int WRITE4 (struct vtbe_softc*,int ,int) ;
 scalar_t__ bus_alloc_resources (int ,int ,int *) ;
 int device_get_name (int ) ;
 int device_get_nameunit (int ) ;
 struct vtbe_softc* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*) ;
 int ether_ifattach (struct ifnet*,int *) ;
 int htobe32 (int) ;
 struct ifnet* if_alloc (int ) ;
 int if_initname (struct ifnet*,int ,int ) ;
 int mtx_init (int *,int ,int ,int ) ;
 int rman_get_bushandle (int ) ;
 int rman_get_bustag (int ) ;
 scalar_t__ setup_offset (int ,int *) ;
 scalar_t__ setup_pio (int ,char*,int *) ;
 scalar_t__ vtbe_get_hwaddr (struct vtbe_softc*,int *) ;
 int vtbe_init ;
 int vtbe_ioctl ;
 int vtbe_spec ;
 int vtbe_txstart ;

__attribute__((used)) static int
vtbe_attach(device_t dev)
{
 uint8_t macaddr[ETHER_ADDR_LEN];
 struct vtbe_softc *sc;
 struct ifnet *ifp;
 int reg;

 sc = device_get_softc(dev);
 sc->dev = dev;

 sc->hdrsize = sizeof(struct virtio_net_hdr);

 if (bus_alloc_resources(dev, vtbe_spec, sc->res)) {
  device_printf(dev, "could not allocate resources\n");
  return (ENXIO);
 }


 sc->bst = rman_get_bustag(sc->res[0]);
 sc->bsh = rman_get_bushandle(sc->res[0]);

 mtx_init(&sc->mtx, device_get_nameunit(sc->dev),
     MTX_NETWORK_LOCK, MTX_DEF);

 if (setup_offset(dev, &sc->beri_mem_offset) != 0)
  return (ENXIO);
 if (setup_pio(dev, "pio-send", &sc->pio_send) != 0)
  return (ENXIO);
 if (setup_pio(dev, "pio-recv", &sc->pio_recv) != 0)
  return (ENXIO);




 reg = htobe32(VIRTIO_ID_NETWORK);
 WRITE4(sc, VIRTIO_MMIO_DEVICE_ID, reg);


 reg = htobe32(DESC_COUNT);
 WRITE4(sc, VIRTIO_MMIO_QUEUE_NUM_MAX, reg);


 reg = htobe32(VIRTIO_NET_F_MAC |
       VIRTIO_F_NOTIFY_ON_EMPTY);
 WRITE4(sc, VIRTIO_MMIO_HOST_FEATURES, reg);


 if (vtbe_get_hwaddr(sc, macaddr)) {
  device_printf(sc->dev, "can't get mac\n");
  return (ENXIO);
 }


 sc->ifp = ifp = if_alloc(IFT_ETHER);
 ifp->if_baudrate = IF_Gbps(10);
 ifp->if_softc = sc;
 if_initname(ifp, device_get_name(dev), device_get_unit(dev));
 ifp->if_flags = (IFF_BROADCAST | IFF_SIMPLEX |
    IFF_MULTICAST | IFF_PROMISC);
 ifp->if_capabilities = IFCAP_VLAN_MTU;
 ifp->if_capenable = ifp->if_capabilities;
 ifp->if_start = vtbe_txstart;
 ifp->if_ioctl = vtbe_ioctl;
 ifp->if_init = vtbe_init;
 IFQ_SET_MAXLEN(&ifp->if_snd, DESC_COUNT - 1);
 ifp->if_snd.ifq_drv_maxlen = DESC_COUNT - 1;
 IFQ_SET_READY(&ifp->if_snd);
 ifp->if_hdrlen = sizeof(struct ether_vlan_header);


 ether_ifattach(ifp, macaddr);

 sc->is_attached = 1;

 return (0);
}
