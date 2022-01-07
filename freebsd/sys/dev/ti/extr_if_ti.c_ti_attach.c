
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int u_char ;
struct ti_softc {int ti_copper; int ti_intrhand; int * ti_irq; TYPE_1__* dev; int ifmedia; int * ti_membuf2; int * ti_membuf; int * ti_res; int ti_bhandle; int ti_btag; struct ifnet* ti_ifp; int ti_mtx; int ti_watchdog; int ti_dev; } ;
struct TYPE_5__ {scalar_t__ ifq_drv_maxlen; } ;
struct ifnet {int if_capabilities; int if_capenable; int if_flags; int if_hdrlen; TYPE_2__ if_snd; int if_baudrate; int if_get_counter; int if_init; int if_start; int if_ioctl; struct ti_softc* if_softc; int if_hwassist; } ;
struct ether_vlan_header {int dummy; } ;
typedef int device_t ;
struct TYPE_4__ {struct ti_softc* si_drv1; } ;


 scalar_t__ ALT_DEVICEID_ACENIC_COPPER ;
 scalar_t__ ALT_VENDORID ;
 int ENOMEM ;
 int ENOSPC ;
 int ENXIO ;
 int ETHER_ADDR_LEN ;
 int GID_OPERATOR ;
 int IFCAP_LINKSTATE ;
 int IFCAP_RXCSUM ;
 int IFCAP_TXCSUM ;
 int IFCAP_VLAN_HWCSUM ;
 int IFCAP_VLAN_HWTAGGING ;
 int IFCAP_VLAN_MTU ;
 int IFF_BROADCAST ;
 int IFF_MULTICAST ;
 int IFF_SIMPLEX ;
 int IFM_1000_SX ;
 int IFM_1000_T ;
 int IFM_100_TX ;
 int IFM_10_T ;
 int IFM_AUTO ;
 int IFM_ETHER ;
 int IFM_FDX ;
 int IFM_IMASK ;
 int IFQ_SET_MAXLEN (TYPE_2__*,scalar_t__) ;
 int IFQ_SET_READY (TYPE_2__*) ;
 int IFT_ETHER ;
 int IF_Gbps (unsigned long) ;
 int INTR_MPSAFE ;
 int INTR_TYPE_NET ;
 int MTX_DEF ;
 int MTX_NETWORK_LOCK ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 scalar_t__ NG_DEVICEID_GA620T ;
 scalar_t__ NG_VENDORID ;
 int PCIR_BAR (int ) ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int TI_CSUM_FEATURES ;
 scalar_t__ TI_EE_MAC_OFFSET ;
 scalar_t__ TI_TX_RING_CNT ;
 int TI_WINLEN ;
 int UID_ROOT ;
 void* bus_alloc_resource_any (int ,int ,int*,int) ;
 int bus_setup_intr (int ,int *,int,int *,int ,struct ti_softc*,int *) ;
 int callout_init_mtx (int *,int *,int ) ;
 int device_get_name (int ) ;
 int device_get_nameunit (int ) ;
 struct ti_softc* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*) ;
 int ether_ifattach (struct ifnet*,int *) ;
 struct ifnet* if_alloc (int ) ;
 int if_initname (struct ifnet*,int ,int ) ;
 int ifmedia_add (int *,int,int ,int *) ;
 int ifmedia_init (int *,int ,int ,int ) ;
 int ifmedia_set (int *,int) ;
 TYPE_1__* make_dev (int *,int ,int ,int ,int,char*,int ) ;
 void* malloc (int,int ,int ) ;
 int mtx_init (int *,int ,int ,int ) ;
 int pci_enable_busmaster (int ) ;
 scalar_t__ pci_get_device (int ) ;
 scalar_t__ pci_get_vendor (int ) ;
 int rman_get_bushandle (int *) ;
 int rman_get_bustag (int *) ;
 int ti_cdevsw ;
 scalar_t__ ti_chipinit (struct ti_softc*) ;
 int ti_detach (int ) ;
 int ti_dma_alloc (struct ti_softc*) ;
 int ti_get_counter ;
 int ti_ifmedia_sts ;
 int ti_ifmedia_upd ;
 int ti_init ;
 int ti_intr ;
 int ti_ioctl ;
 int ti_mem_zero (struct ti_softc*,int,int) ;
 scalar_t__ ti_read_eeprom (struct ti_softc*,int *,scalar_t__,int ) ;
 int ti_start ;
 int ti_sysctl_node (struct ti_softc*) ;

__attribute__((used)) static int
ti_attach(device_t dev)
{
 struct ifnet *ifp;
 struct ti_softc *sc;
 int error = 0, rid;
 u_char eaddr[6];

 sc = device_get_softc(dev);
 sc->ti_dev = dev;

 mtx_init(&sc->ti_mtx, device_get_nameunit(dev), MTX_NETWORK_LOCK,
     MTX_DEF);
 callout_init_mtx(&sc->ti_watchdog, &sc->ti_mtx, 0);
 ifmedia_init(&sc->ifmedia, IFM_IMASK, ti_ifmedia_upd, ti_ifmedia_sts);
 ifp = sc->ti_ifp = if_alloc(IFT_ETHER);
 if (ifp == ((void*)0)) {
  device_printf(dev, "can not if_alloc()\n");
  error = ENOSPC;
  goto fail;
 }
 sc->ti_ifp->if_hwassist = TI_CSUM_FEATURES;
 sc->ti_ifp->if_capabilities = IFCAP_TXCSUM | IFCAP_RXCSUM;
 sc->ti_ifp->if_capenable = sc->ti_ifp->if_capabilities;




 pci_enable_busmaster(dev);

 rid = PCIR_BAR(0);
 sc->ti_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid,
     RF_ACTIVE);

 if (sc->ti_res == ((void*)0)) {
  device_printf(dev, "couldn't map memory\n");
  error = ENXIO;
  goto fail;
 }

 sc->ti_btag = rman_get_bustag(sc->ti_res);
 sc->ti_bhandle = rman_get_bushandle(sc->ti_res);


 rid = 0;

 sc->ti_irq = bus_alloc_resource_any(dev, SYS_RES_IRQ, &rid,
     RF_SHAREABLE | RF_ACTIVE);

 if (sc->ti_irq == ((void*)0)) {
  device_printf(dev, "couldn't map interrupt\n");
  error = ENXIO;
  goto fail;
 }

 if (ti_chipinit(sc)) {
  device_printf(dev, "chip initialization failed\n");
  error = ENXIO;
  goto fail;
 }


 ti_mem_zero(sc, 0x2000, 0x100000 - 0x2000);


 if (ti_chipinit(sc)) {
  device_printf(dev, "chip initialization failed\n");
  error = ENXIO;
  goto fail;
 }
 if (ti_read_eeprom(sc, eaddr, TI_EE_MAC_OFFSET + 2, ETHER_ADDR_LEN)) {
  device_printf(dev, "failed to read station address\n");
  error = ENXIO;
  goto fail;
 }


 sc->ti_membuf = malloc(sizeof(uint8_t) * TI_WINLEN, M_DEVBUF, M_NOWAIT);
 sc->ti_membuf2 = malloc(sizeof(uint8_t) * TI_WINLEN, M_DEVBUF,
     M_NOWAIT);
 if (sc->ti_membuf == ((void*)0) || sc->ti_membuf2 == ((void*)0)) {
  device_printf(dev, "cannot allocate memory buffer\n");
  error = ENOMEM;
  goto fail;
 }
 if ((error = ti_dma_alloc(sc)) != 0)
  goto fail;
 if (pci_get_vendor(dev) == ALT_VENDORID &&
     pci_get_device(dev) == ALT_DEVICEID_ACENIC_COPPER)
  sc->ti_copper = 1;

 if (pci_get_vendor(dev) == NG_VENDORID &&
     pci_get_device(dev) == NG_DEVICEID_GA620T)
  sc->ti_copper = 1;


 ti_sysctl_node(sc);


 ifp->if_softc = sc;
 if_initname(ifp, device_get_name(dev), device_get_unit(dev));
 ifp->if_flags = IFF_BROADCAST | IFF_SIMPLEX | IFF_MULTICAST;
 ifp->if_ioctl = ti_ioctl;
 ifp->if_start = ti_start;
 ifp->if_init = ti_init;
 ifp->if_get_counter = ti_get_counter;
 ifp->if_baudrate = IF_Gbps(1UL);
 ifp->if_snd.ifq_drv_maxlen = TI_TX_RING_CNT - 1;
 IFQ_SET_MAXLEN(&ifp->if_snd, ifp->if_snd.ifq_drv_maxlen);
 IFQ_SET_READY(&ifp->if_snd);


 if (sc->ti_copper) {
  ifmedia_add(&sc->ifmedia, IFM_ETHER|IFM_10_T, 0, ((void*)0));
  ifmedia_add(&sc->ifmedia,
      IFM_ETHER|IFM_10_T|IFM_FDX, 0, ((void*)0));
  ifmedia_add(&sc->ifmedia, IFM_ETHER|IFM_100_TX, 0, ((void*)0));
  ifmedia_add(&sc->ifmedia,
      IFM_ETHER|IFM_100_TX|IFM_FDX, 0, ((void*)0));
  ifmedia_add(&sc->ifmedia, IFM_ETHER|IFM_1000_T, 0, ((void*)0));
  ifmedia_add(&sc->ifmedia,
      IFM_ETHER|IFM_1000_T|IFM_FDX, 0, ((void*)0));
 } else {

  ifmedia_add(&sc->ifmedia, IFM_ETHER|IFM_1000_SX, 0, ((void*)0));
  ifmedia_add(&sc->ifmedia,
      IFM_ETHER|IFM_1000_SX|IFM_FDX, 0, ((void*)0));
 }
 ifmedia_add(&sc->ifmedia, IFM_ETHER|IFM_AUTO, 0, ((void*)0));
 ifmedia_set(&sc->ifmedia, IFM_ETHER|IFM_AUTO);
 sc->dev = make_dev(&ti_cdevsw, device_get_unit(dev), UID_ROOT,
     GID_OPERATOR, 0600, "ti%d", device_get_unit(dev));
 sc->dev->si_drv1 = sc;




 ether_ifattach(ifp, eaddr);


 ifp->if_capabilities |= IFCAP_VLAN_MTU | IFCAP_VLAN_HWCSUM |
     IFCAP_VLAN_HWTAGGING;
 ifp->if_capenable = ifp->if_capabilities;

 ifp->if_hdrlen = sizeof(struct ether_vlan_header);


 ifp->if_capabilities |= IFCAP_LINKSTATE;
 ifp->if_capenable |= IFCAP_LINKSTATE;


 error = bus_setup_intr(dev, sc->ti_irq, INTR_TYPE_NET|INTR_MPSAFE,
    ((void*)0), ti_intr, sc, &sc->ti_intrhand);

 if (error) {
  device_printf(dev, "couldn't set up irq\n");
  goto fail;
 }

fail:
 if (error)
  ti_detach(dev);

 return (error);
}
