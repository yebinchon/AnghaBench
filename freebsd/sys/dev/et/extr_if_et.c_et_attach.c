
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_3__ {scalar_t__ ifq_drv_maxlen; } ;
struct ifnet {int if_flags; int if_capabilities; int if_capenable; int if_hdrlen; TYPE_1__ if_snd; int if_get_counter; int if_start; int if_ioctl; int if_init; struct et_softc* if_softc; } ;
struct ether_vlan_header {int dummy; } ;
struct et_softc {int sc_mem_rid; int sc_expcap; int sc_flags; int sc_irq_rid; int sc_irq_handle; int * sc_irq_res; int sc_miibus; int * sc_mem_res; int sc_timer; int sc_tx_intr_nsegs; int sc_rx_intr_delay; int sc_rx_intr_npkts; struct ifnet* ifp; int sc_mtx; int sc_tick; int dev; } ;
typedef int device_t ;


 int BMSR_DEFCAPMASK ;
 int CSR_WRITE_4 (struct et_softc*,int ,int) ;
 int EM_PM_GIGEPHY_ENB ;
 int ENOSPC ;
 int ENXIO ;
 int ETHER_ADDR_LEN ;
 int ET_FLAG_FASTETHER ;
 int ET_FLAG_MSI ;
 int ET_FLAG_PCIE ;
 int ET_PM ;
 int ET_PM_RXCLK_GATE ;
 int ET_PM_SYSCLK_GATE ;
 int ET_PM_TXCLK_GATE ;
 scalar_t__ ET_TX_NDESC ;
 int IFCAP_TXCSUM ;
 int IFCAP_VLAN_MTU ;
 int IFF_BROADCAST ;
 int IFF_MULTICAST ;
 int IFF_SIMPLEX ;
 int IFQ_SET_MAXLEN (TYPE_1__*,scalar_t__) ;
 int IFQ_SET_READY (TYPE_1__*) ;
 int IFT_ETHER ;
 int INTR_MPSAFE ;
 int INTR_TYPE_NET ;
 int MIIF_DOPAUSE ;
 int MII_OFFSET_ANY ;
 int MII_PHY_ANY ;
 int MTX_DEF ;
 int MTX_NETWORK_LOCK ;
 int PCIR_BAR (int ) ;
 int PCIY_EXPRESS ;
 scalar_t__ PCI_PRODUCT_LUCENT_ET1310_FAST ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 scalar_t__ bootverbose ;
 void* bus_alloc_resource_any (int ,int ,int*,int) ;
 int bus_setup_intr (int ,int *,int,int *,int ,struct et_softc*,int *) ;
 int callout_init_mtx (int *,int *,int ) ;
 int device_get_name (int ) ;
 int device_get_nameunit (int ) ;
 struct et_softc* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*,...) ;
 int et_add_sysctls (struct et_softc*) ;
 int et_bus_config (struct et_softc*) ;
 int et_chip_attach (struct et_softc*) ;
 int et_detach (int ) ;
 int et_dma_alloc (struct et_softc*) ;
 int et_get_counter ;
 int et_get_eaddr (int ,int *) ;
 int et_ifmedia_sts ;
 int et_ifmedia_upd ;
 int et_init ;
 int et_intr ;
 int et_ioctl ;
 int et_reset (struct et_softc*) ;
 int et_rx_intr_delay ;
 int et_rx_intr_npkts ;
 int et_start ;
 int et_timer ;
 int et_tx_intr_nsegs ;
 int ether_ifattach (struct ifnet*,int *) ;
 int ether_ifdetach (struct ifnet*) ;
 struct ifnet* if_alloc (int ) ;
 int if_initname (struct ifnet*,int ,int ) ;
 int mii_attach (int ,int *,struct ifnet*,int ,int ,int ,int ,int ,int ) ;
 scalar_t__ msi_disable ;
 int mtx_init (int *,int ,int ,int ) ;
 scalar_t__ pci_alloc_msi (int ,int*) ;
 int pci_enable_busmaster (int ) ;
 scalar_t__ pci_find_cap (int ,int ,int*) ;
 scalar_t__ pci_get_device (int ) ;
 int pci_msi_count (int ) ;
 int pci_release_msi (int ) ;

__attribute__((used)) static int
et_attach(device_t dev)
{
 struct et_softc *sc;
 struct ifnet *ifp;
 uint8_t eaddr[ETHER_ADDR_LEN];
 uint32_t pmcfg;
 int cap, error, msic;

 sc = device_get_softc(dev);
 sc->dev = dev;
 mtx_init(&sc->sc_mtx, device_get_nameunit(dev), MTX_NETWORK_LOCK,
     MTX_DEF);
 callout_init_mtx(&sc->sc_tick, &sc->sc_mtx, 0);

 ifp = sc->ifp = if_alloc(IFT_ETHER);
 if (ifp == ((void*)0)) {
  device_printf(dev, "can not if_alloc()\n");
  error = ENOSPC;
  goto fail;
 }




 sc->sc_rx_intr_npkts = et_rx_intr_npkts;
 sc->sc_rx_intr_delay = et_rx_intr_delay;
 sc->sc_tx_intr_nsegs = et_tx_intr_nsegs;
 sc->sc_timer = et_timer;


 pci_enable_busmaster(dev);




 sc->sc_mem_rid = PCIR_BAR(0);
 sc->sc_mem_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY,
     &sc->sc_mem_rid, RF_ACTIVE);
 if (sc->sc_mem_res == ((void*)0)) {
  device_printf(dev, "can't allocate IO memory\n");
  return (ENXIO);
 }

 msic = 0;
 if (pci_find_cap(dev, PCIY_EXPRESS, &cap) == 0) {
  sc->sc_expcap = cap;
  sc->sc_flags |= ET_FLAG_PCIE;
  msic = pci_msi_count(dev);
  if (bootverbose)
   device_printf(dev, "MSI count: %d\n", msic);
 }
 if (msic > 0 && msi_disable == 0) {
  msic = 1;
  if (pci_alloc_msi(dev, &msic) == 0) {
   if (msic == 1) {
    device_printf(dev, "Using %d MSI message\n",
        msic);
    sc->sc_flags |= ET_FLAG_MSI;
   } else
    pci_release_msi(dev);
  }
 }




 if ((sc->sc_flags & ET_FLAG_MSI) == 0) {
  sc->sc_irq_rid = 0;
  sc->sc_irq_res = bus_alloc_resource_any(dev, SYS_RES_IRQ,
      &sc->sc_irq_rid, RF_SHAREABLE | RF_ACTIVE);
 } else {
  sc->sc_irq_rid = 1;
  sc->sc_irq_res = bus_alloc_resource_any(dev, SYS_RES_IRQ,
      &sc->sc_irq_rid, RF_ACTIVE);
 }
 if (sc->sc_irq_res == ((void*)0)) {
  device_printf(dev, "can't allocate irq\n");
  error = ENXIO;
  goto fail;
 }

 if (pci_get_device(dev) == PCI_PRODUCT_LUCENT_ET1310_FAST)
  sc->sc_flags |= ET_FLAG_FASTETHER;

 error = et_bus_config(sc);
 if (error)
  goto fail;

 et_get_eaddr(dev, eaddr);


 pmcfg = ET_PM_SYSCLK_GATE | ET_PM_TXCLK_GATE | ET_PM_RXCLK_GATE;
 if ((sc->sc_flags & ET_FLAG_FASTETHER) == 0)
  pmcfg |= EM_PM_GIGEPHY_ENB;
 CSR_WRITE_4(sc, ET_PM, pmcfg);

 et_reset(sc);

 error = et_dma_alloc(sc);
 if (error)
  goto fail;

 ifp->if_softc = sc;
 if_initname(ifp, device_get_name(dev), device_get_unit(dev));
 ifp->if_flags = IFF_BROADCAST | IFF_SIMPLEX | IFF_MULTICAST;
 ifp->if_init = et_init;
 ifp->if_ioctl = et_ioctl;
 ifp->if_start = et_start;
 ifp->if_get_counter = et_get_counter;
 ifp->if_capabilities = IFCAP_TXCSUM | IFCAP_VLAN_MTU;
 ifp->if_capenable = ifp->if_capabilities;
 ifp->if_snd.ifq_drv_maxlen = ET_TX_NDESC - 1;
 IFQ_SET_MAXLEN(&ifp->if_snd, ET_TX_NDESC - 1);
 IFQ_SET_READY(&ifp->if_snd);

 et_chip_attach(sc);

 error = mii_attach(dev, &sc->sc_miibus, ifp, et_ifmedia_upd,
     et_ifmedia_sts, BMSR_DEFCAPMASK, MII_PHY_ANY, MII_OFFSET_ANY,
     MIIF_DOPAUSE);
 if (error) {
  device_printf(dev, "attaching PHYs failed\n");
  goto fail;
 }

 ether_ifattach(ifp, eaddr);


 ifp->if_hdrlen = sizeof(struct ether_vlan_header);

 error = bus_setup_intr(dev, sc->sc_irq_res, INTR_TYPE_NET | INTR_MPSAFE,
     ((void*)0), et_intr, sc, &sc->sc_irq_handle);
 if (error) {
  ether_ifdetach(ifp);
  device_printf(dev, "can't setup intr\n");
  goto fail;
 }

 et_add_sysctls(sc);

 return (0);
fail:
 et_detach(dev);
 return (error);
}
