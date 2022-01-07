
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct vte_softc {int vte_res_id; scalar_t__ vte_res_type; int vte_intrhand; int * vte_irq; int vte_eaddr; int vte_miibus; struct ifnet* vte_ifp; int vte_mtx; int * vte_res; int vte_ident; int vte_tick_ch; int vte_dev; } ;
struct TYPE_3__ {scalar_t__ ifq_drv_maxlen; } ;
struct ifnet {int if_flags; int if_hdrlen; int if_capabilities; int if_capenable; TYPE_1__ if_snd; int if_get_counter; int if_init; int if_start; int if_ioctl; struct vte_softc* if_softc; } ;
struct ether_vlan_header {int dummy; } ;
typedef int device_t ;


 int BMSR_DEFCAPMASK ;
 int CSR_READ_2 (struct vte_softc*,int ) ;
 int ENXIO ;
 int IFCAP_VLAN_MTU ;
 int IFF_BROADCAST ;
 int IFF_MULTICAST ;
 int IFF_SIMPLEX ;
 int IFQ_SET_MAXLEN (TYPE_1__*,scalar_t__) ;
 int IFQ_SET_READY (TYPE_1__*) ;
 int IFT_ETHER ;
 int INTR_MPSAFE ;
 int INTR_TYPE_NET ;
 int MII_OFFSET_ANY ;
 int MII_PHY_ANY ;
 int MTX_DEF ;
 int MTX_NETWORK_LOCK ;
 void* PCIR_BAR (int) ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 scalar_t__ SYS_RES_IOPORT ;
 scalar_t__ SYS_RES_IRQ ;
 scalar_t__ SYS_RES_MEMORY ;
 int VTE_MACID ;
 int VTE_MACID_MASK ;
 int VTE_MACID_REV ;
 int VTE_MACID_REV_MASK ;
 int VTE_MACID_REV_SHIFT ;
 int VTE_MACID_SHIFT ;
 scalar_t__ VTE_TX_RING_CNT ;
 scalar_t__ bootverbose ;
 void* bus_alloc_resource_any (int ,scalar_t__,int*,int) ;
 int bus_setup_intr (int ,int *,int,int *,int ,struct vte_softc*,int *) ;
 int callout_init_mtx (int *,int *,int ) ;
 int device_get_name (int ) ;
 int device_get_nameunit (int ) ;
 struct vte_softc* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*,...) ;
 int ether_ifattach (struct ifnet*,int ) ;
 int ether_ifdetach (struct ifnet*) ;
 struct ifnet* if_alloc (int ) ;
 int if_initname (struct ifnet*,int ,int ) ;
 int mii_attach (int ,int *,struct ifnet*,int ,int ,int ,int ,int ,int ) ;
 int mtx_destroy (int *) ;
 int mtx_init (int *,int ,int ,int ) ;
 int pci_enable_busmaster (int ) ;
 int vte_detach (int ) ;
 int vte_dma_alloc (struct vte_softc*) ;
 int vte_find_ident (int ) ;
 int vte_get_counter ;
 int vte_get_macaddr (struct vte_softc*) ;
 int vte_init ;
 int vte_intr ;
 int vte_ioctl ;
 int vte_mediachange ;
 int vte_mediastatus ;
 int vte_reset (struct vte_softc*) ;
 int vte_start ;
 int vte_sysctl_node (struct vte_softc*) ;

__attribute__((used)) static int
vte_attach(device_t dev)
{
 struct vte_softc *sc;
 struct ifnet *ifp;
 uint16_t macid;
 int error, rid;

 error = 0;
 sc = device_get_softc(dev);
 sc->vte_dev = dev;

 mtx_init(&sc->vte_mtx, device_get_nameunit(dev), MTX_NETWORK_LOCK,
     MTX_DEF);
 callout_init_mtx(&sc->vte_tick_ch, &sc->vte_mtx, 0);
 sc->vte_ident = vte_find_ident(dev);


 pci_enable_busmaster(dev);
 sc->vte_res_id = PCIR_BAR(1);
 sc->vte_res_type = SYS_RES_MEMORY;
 sc->vte_res = bus_alloc_resource_any(dev, sc->vte_res_type,
     &sc->vte_res_id, RF_ACTIVE);
 if (sc->vte_res == ((void*)0)) {
  sc->vte_res_id = PCIR_BAR(0);
  sc->vte_res_type = SYS_RES_IOPORT;
  sc->vte_res = bus_alloc_resource_any(dev, sc->vte_res_type,
      &sc->vte_res_id, RF_ACTIVE);
  if (sc->vte_res == ((void*)0)) {
   device_printf(dev, "cannot map memory/ports.\n");
   mtx_destroy(&sc->vte_mtx);
   return (ENXIO);
  }
 }
 if (bootverbose) {
  device_printf(dev, "using %s space register mapping\n",
      sc->vte_res_type == SYS_RES_MEMORY ? "memory" : "I/O");
  device_printf(dev, "MAC Identifier : 0x%04x\n",
      CSR_READ_2(sc, VTE_MACID));
  macid = CSR_READ_2(sc, VTE_MACID_REV);
  device_printf(dev, "MAC Id. 0x%02x, Rev. 0x%02x\n",
      (macid & VTE_MACID_MASK) >> VTE_MACID_SHIFT,
      (macid & VTE_MACID_REV_MASK) >> VTE_MACID_REV_SHIFT);
 }

 rid = 0;
 sc->vte_irq = bus_alloc_resource_any(dev, SYS_RES_IRQ, &rid,
     RF_SHAREABLE | RF_ACTIVE);
 if (sc->vte_irq == ((void*)0)) {
  device_printf(dev, "cannot allocate IRQ resources.\n");
  error = ENXIO;
  goto fail;
 }


 vte_reset(sc);

 if ((error = vte_dma_alloc(sc)) != 0)
  goto fail;


 vte_sysctl_node(sc);


 vte_get_macaddr(sc);

 ifp = sc->vte_ifp = if_alloc(IFT_ETHER);
 if (ifp == ((void*)0)) {
  device_printf(dev, "cannot allocate ifnet structure.\n");
  error = ENXIO;
  goto fail;
 }

 ifp->if_softc = sc;
 if_initname(ifp, device_get_name(dev), device_get_unit(dev));
 ifp->if_flags = IFF_BROADCAST | IFF_SIMPLEX | IFF_MULTICAST;
 ifp->if_ioctl = vte_ioctl;
 ifp->if_start = vte_start;
 ifp->if_init = vte_init;
 ifp->if_get_counter = vte_get_counter;
 ifp->if_snd.ifq_drv_maxlen = VTE_TX_RING_CNT - 1;
 IFQ_SET_MAXLEN(&ifp->if_snd, ifp->if_snd.ifq_drv_maxlen);
 IFQ_SET_READY(&ifp->if_snd);
 error = mii_attach(dev, &sc->vte_miibus, ifp, vte_mediachange,
     vte_mediastatus, BMSR_DEFCAPMASK, MII_PHY_ANY, MII_OFFSET_ANY, 0);
 if (error != 0) {
  device_printf(dev, "attaching PHYs failed\n");
  goto fail;
 }

 ether_ifattach(ifp, sc->vte_eaddr);


 ifp->if_capabilities |= IFCAP_VLAN_MTU;
 ifp->if_capenable = ifp->if_capabilities;

 ifp->if_hdrlen = sizeof(struct ether_vlan_header);

 error = bus_setup_intr(dev, sc->vte_irq, INTR_TYPE_NET | INTR_MPSAFE,
     ((void*)0), vte_intr, sc, &sc->vte_intrhand);
 if (error != 0) {
  device_printf(dev, "could not set up interrupt handler.\n");
  ether_ifdetach(ifp);
  goto fail;
 }

fail:
 if (error != 0)
  vte_detach(dev);

 return (error);
}
