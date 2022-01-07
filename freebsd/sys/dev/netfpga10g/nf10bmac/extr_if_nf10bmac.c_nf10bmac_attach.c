
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct nf10bmac_softc {int * nf10bmac_rx_irq_res; int nf10bmac_rx_intrhand; int nf10bmac_media; int nf10bmac_eth_addr; struct ifnet* nf10bmac_ifp; int nf10bmac_tx_buf; int nf10bmac_mtx; int nf10bmac_tick; } ;
struct TYPE_3__ {scalar_t__ ifq_drv_maxlen; } ;
struct ifnet {int if_flags; int if_hdrlen; int if_capabilities; int if_capenable; TYPE_1__ if_snd; int if_init; int if_start; int if_ioctl; struct nf10bmac_softc* if_softc; } ;
struct ether_vlan_header {int dummy; } ;
typedef int device_t ;


 int ENOSPC ;
 int ENXIO ;
 int ETHER_MAX_LEN_JUMBO ;
 int IFCAP_POLLING ;
 int IFCAP_VLAN_MTU ;
 int IFF_BROADCAST ;
 int IFF_SIMPLEX ;
 int IFM_10G_T ;
 int IFM_ETHER ;
 int IFQ_SET_MAXLEN (TYPE_1__*,scalar_t__) ;
 int IFQ_SET_READY (TYPE_1__*) ;
 int IFT_ETHER ;
 int INTR_MPSAFE ;
 int INTR_TYPE_NET ;
 int MTX_DEF ;
 int MTX_NETWORK_LOCK ;
 int M_DEVBUF ;
 int M_WAITOK ;
 scalar_t__ NF10BMAC_MAX_PKTS ;
 int NF10BMAC_RX_INTR_ENABLE (struct nf10bmac_softc*) ;
 int bus_setup_intr (int ,int *,int,int *,int ,struct nf10bmac_softc*,int *) ;
 int callout_init_mtx (int *,int *,int ) ;
 int device_get_name (int ) ;
 int device_get_nameunit (int ) ;
 struct nf10bmac_softc* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*) ;
 int ether_ifattach (struct ifnet*,int ) ;
 int ether_ifdetach (struct ifnet*) ;
 int ether_poll_register (int ,struct ifnet*) ;
 struct ifnet* if_alloc (int ) ;
 int if_initname (struct ifnet*,int ,int ) ;
 int ifmedia_add (int *,int,int ,int *) ;
 int ifmedia_init (int *,int ,int ,int ) ;
 int ifmedia_set (int *,int) ;
 int malloc (int ,int ,int ) ;
 int mtx_init (int *,int ,int ,int ) ;
 int nf10bmac_detach (int ) ;
 int nf10bmac_init ;
 int nf10bmac_intr ;
 int nf10bmac_ioctl ;
 int nf10bmac_media_change ;
 int nf10bmac_media_status ;
 int nf10bmac_poll ;
 int nf10bmac_reset (struct nf10bmac_softc*) ;
 int nf10bmac_start ;

int
nf10bmac_attach(device_t dev)
{
 struct nf10bmac_softc *sc;
 struct ifnet *ifp;
 int error;

 sc = device_get_softc(dev);

 mtx_init(&sc->nf10bmac_mtx, device_get_nameunit(dev), MTX_NETWORK_LOCK,
     MTX_DEF);





 sc->nf10bmac_tx_buf = malloc(ETHER_MAX_LEN_JUMBO, M_DEVBUF, M_WAITOK);


 nf10bmac_reset(sc);


 ifp = sc->nf10bmac_ifp = if_alloc(IFT_ETHER);
 if (ifp == ((void*)0)) {
  device_printf(dev, "if_alloc() failed\n");
  error = ENOSPC;
  goto err;
 }
 ifp->if_softc = sc;
 if_initname(ifp, device_get_name(dev), device_get_unit(dev));
 ifp->if_flags = IFF_BROADCAST | IFF_SIMPLEX;
 ifp->if_ioctl = nf10bmac_ioctl;
 ifp->if_start = nf10bmac_start;
 ifp->if_init = nf10bmac_init;
 IFQ_SET_MAXLEN(&ifp->if_snd, NF10BMAC_MAX_PKTS - 1);
 ifp->if_snd.ifq_drv_maxlen = NF10BMAC_MAX_PKTS - 1;
 IFQ_SET_READY(&ifp->if_snd);


 ether_ifattach(ifp, sc->nf10bmac_eth_addr);


 ifp->if_hdrlen = sizeof(struct ether_vlan_header);
 ifp->if_capabilities |= IFCAP_VLAN_MTU;
 ifp->if_capenable = ifp->if_capabilities;






        ifmedia_init(&sc->nf10bmac_media, 0, nf10bmac_media_change,
     nf10bmac_media_status);
        ifmedia_add(&sc->nf10bmac_media, IFM_ETHER | IFM_10G_T, 0, ((void*)0));
        ifmedia_set(&sc->nf10bmac_media, IFM_ETHER | IFM_10G_T);


 error = 0;


 if (sc->nf10bmac_rx_irq_res != ((void*)0)) {
  error = bus_setup_intr(dev, sc->nf10bmac_rx_irq_res,
      INTR_TYPE_NET | INTR_MPSAFE, ((void*)0), nf10bmac_intr,
      sc, &sc->nf10bmac_rx_intrhand);
  if (error != 0) {
   device_printf(dev, "enabling RX IRQ failed\n");
   ether_ifdetach(ifp);
   goto err;
  }
 }

 if ((ifp->if_capenable & IFCAP_POLLING) != 0 ||
     sc->nf10bmac_rx_irq_res == ((void*)0)) {
  device_printf(dev, "no DEVICE_POLLING in kernel and no IRQs\n");
  error = ENXIO;

 } else {
  NF10BMAC_RX_INTR_ENABLE(sc);
 }

err:
 if (error != 0)
  nf10bmac_detach(dev);

 return (error);
}
