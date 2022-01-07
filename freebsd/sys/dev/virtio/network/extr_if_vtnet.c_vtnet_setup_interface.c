
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vtnet_softc {int vtnet_flags; void* vtnet_vlan_detach; void* vtnet_vlan_attach; int vtnet_hwaddr; int vtnet_media; TYPE_1__* vtnet_txqs; struct ifnet* vtnet_ifp; int vtnet_dev; } ;
struct virtqueue {int dummy; } ;
struct TYPE_5__ {scalar_t__ ifq_drv_maxlen; } ;
struct ifnet {int if_flags; int if_capabilities; int if_hdrlen; int if_capenable; TYPE_2__ if_snd; int if_start; int if_qflush; int if_transmit; int if_get_counter; int if_ioctl; int if_init; struct vtnet_softc* if_softc; int if_baudrate; } ;
struct ether_vlan_header {int dummy; } ;
typedef int device_t ;
struct TYPE_4__ {struct virtqueue* vtntx_vq; } ;


 int DEBUGNET_SET (struct ifnet*,int ) ;
 int ENOSPC ;
 int EVENTHANDLER_PRI_FIRST ;
 void* EVENTHANDLER_REGISTER (int ,int ,struct vtnet_softc*,int ) ;
 int IFCAP_HWCSUM ;
 int IFCAP_JUMBO_MTU ;
 int IFCAP_LINKSTATE ;
 int IFCAP_LRO ;
 int IFCAP_RXCSUM ;
 int IFCAP_RXCSUM_IPV6 ;
 int IFCAP_TSO ;
 int IFCAP_TSO4 ;
 int IFCAP_TSO6 ;
 int IFCAP_TXCSUM ;
 int IFCAP_TXCSUM_IPV6 ;
 int IFCAP_VLAN_HWCSUM ;
 int IFCAP_VLAN_HWFILTER ;
 int IFCAP_VLAN_HWTAGGING ;
 int IFCAP_VLAN_HWTSO ;
 int IFCAP_VLAN_MTU ;
 int IFF_BROADCAST ;
 int IFF_MULTICAST ;
 int IFF_SIMPLEX ;
 int IFM_IMASK ;
 int IFQ_SET_MAXLEN (TYPE_2__*,scalar_t__) ;
 int IFQ_SET_READY (TYPE_2__*) ;
 int IFT_ETHER ;
 int IF_Gbps (int) ;
 int VIRTIO_NET_F_CSUM ;
 int VIRTIO_NET_F_GSO ;
 int VIRTIO_NET_F_GUEST_CSUM ;
 int VIRTIO_NET_F_GUEST_TSO4 ;
 int VIRTIO_NET_F_GUEST_TSO6 ;
 int VIRTIO_NET_F_HOST_ECN ;
 int VIRTIO_NET_F_HOST_TSO4 ;
 int VIRTIO_NET_F_HOST_TSO6 ;
 int VIRTIO_NET_F_STATUS ;
 int VTNET_FLAG_TSO_ECN ;
 int VTNET_FLAG_VLAN_FILTER ;
 int VTNET_MEDIATYPE ;
 int device_get_name (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*) ;
 int ether_ifattach (struct ifnet*,int ) ;
 struct ifnet* if_alloc (int ) ;
 int if_initname (struct ifnet*,int ,int ) ;
 int ifmedia_add (int *,int ,int ,int *) ;
 int ifmedia_init (int *,int ,int ,int ) ;
 int ifmedia_set (int *,int ) ;
 scalar_t__ virtio_with_feature (int ,int ) ;
 scalar_t__ virtqueue_size (struct virtqueue*) ;
 int vlan_config ;
 int vlan_unconfig ;
 int vtnet ;
 int vtnet_get_counter ;
 int vtnet_get_hwaddr (struct vtnet_softc*) ;
 int vtnet_ifmedia_sts ;
 int vtnet_ifmedia_upd ;
 int vtnet_init ;
 int vtnet_ioctl ;
 int vtnet_qflush ;
 int vtnet_register_vlan ;
 int vtnet_set_rx_process_limit (struct vtnet_softc*) ;
 int vtnet_set_tx_intr_threshold (struct vtnet_softc*) ;
 int vtnet_start ;
 int vtnet_txq_mq_start ;
 int vtnet_unregister_vlan ;

__attribute__((used)) static int
vtnet_setup_interface(struct vtnet_softc *sc)
{
 device_t dev;
 struct ifnet *ifp;

 dev = sc->vtnet_dev;

 ifp = sc->vtnet_ifp = if_alloc(IFT_ETHER);
 if (ifp == ((void*)0)) {
  device_printf(dev, "cannot allocate ifnet structure\n");
  return (ENOSPC);
 }

 if_initname(ifp, device_get_name(dev), device_get_unit(dev));
 ifp->if_baudrate = IF_Gbps(10);
 ifp->if_softc = sc;
 ifp->if_flags = IFF_BROADCAST | IFF_SIMPLEX | IFF_MULTICAST;
 ifp->if_init = vtnet_init;
 ifp->if_ioctl = vtnet_ioctl;
 ifp->if_get_counter = vtnet_get_counter;

 ifp->if_transmit = vtnet_txq_mq_start;
 ifp->if_qflush = vtnet_qflush;
 ifmedia_init(&sc->vtnet_media, IFM_IMASK, vtnet_ifmedia_upd,
     vtnet_ifmedia_sts);
 ifmedia_add(&sc->vtnet_media, VTNET_MEDIATYPE, 0, ((void*)0));
 ifmedia_set(&sc->vtnet_media, VTNET_MEDIATYPE);


 vtnet_get_hwaddr(sc);

 ether_ifattach(ifp, sc->vtnet_hwaddr);

 if (virtio_with_feature(dev, VIRTIO_NET_F_STATUS))
  ifp->if_capabilities |= IFCAP_LINKSTATE;


 ifp->if_hdrlen = sizeof(struct ether_vlan_header);
 ifp->if_capabilities |= IFCAP_JUMBO_MTU | IFCAP_VLAN_MTU;

 if (virtio_with_feature(dev, VIRTIO_NET_F_CSUM)) {
  ifp->if_capabilities |= IFCAP_TXCSUM | IFCAP_TXCSUM_IPV6;

  if (virtio_with_feature(dev, VIRTIO_NET_F_GSO)) {
   ifp->if_capabilities |= IFCAP_TSO4 | IFCAP_TSO6;
   sc->vtnet_flags |= VTNET_FLAG_TSO_ECN;
  } else {
   if (virtio_with_feature(dev, VIRTIO_NET_F_HOST_TSO4))
    ifp->if_capabilities |= IFCAP_TSO4;
   if (virtio_with_feature(dev, VIRTIO_NET_F_HOST_TSO6))
    ifp->if_capabilities |= IFCAP_TSO6;
   if (virtio_with_feature(dev, VIRTIO_NET_F_HOST_ECN))
    sc->vtnet_flags |= VTNET_FLAG_TSO_ECN;
  }

  if (ifp->if_capabilities & IFCAP_TSO)
   ifp->if_capabilities |= IFCAP_VLAN_HWTSO;
 }

 if (virtio_with_feature(dev, VIRTIO_NET_F_GUEST_CSUM)) {
  ifp->if_capabilities |= IFCAP_RXCSUM | IFCAP_RXCSUM_IPV6;

  if (virtio_with_feature(dev, VIRTIO_NET_F_GUEST_TSO4) ||
      virtio_with_feature(dev, VIRTIO_NET_F_GUEST_TSO6))
   ifp->if_capabilities |= IFCAP_LRO;
 }

 if (ifp->if_capabilities & IFCAP_HWCSUM) {






  ifp->if_capabilities |=
      IFCAP_VLAN_HWTAGGING | IFCAP_VLAN_HWCSUM;
 }

 ifp->if_capenable = ifp->if_capabilities;





 if (sc->vtnet_flags & VTNET_FLAG_VLAN_FILTER) {
  ifp->if_capabilities |= IFCAP_VLAN_HWFILTER;

  sc->vtnet_vlan_attach = EVENTHANDLER_REGISTER(vlan_config,
      vtnet_register_vlan, sc, EVENTHANDLER_PRI_FIRST);
  sc->vtnet_vlan_detach = EVENTHANDLER_REGISTER(vlan_unconfig,
      vtnet_unregister_vlan, sc, EVENTHANDLER_PRI_FIRST);
 }

 vtnet_set_rx_process_limit(sc);
 vtnet_set_tx_intr_threshold(sc);

 DEBUGNET_SET(ifp, vtnet);

 return (0);
}
