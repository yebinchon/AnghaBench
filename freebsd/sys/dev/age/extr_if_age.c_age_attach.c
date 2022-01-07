
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_3__ {scalar_t__ ifq_drv_maxlen; } ;
struct ifnet {int if_flags; int if_capabilities; int if_hwassist; int if_capenable; int if_hdrlen; TYPE_1__ if_snd; int if_init; int if_start; int if_ioctl; struct age_softc* if_softc; } ;
struct ether_vlan_header {int dummy; } ;
struct age_softc {int age_chip_rev; int age_flags; int age_dma_rd_burst; int age_dma_wr_burst; int * age_tq; int * age_intrhand; int * age_irq; int age_dev; int age_eaddr; int age_phyaddr; int age_miibus; struct ifnet* age_ifp; int age_irq_spec; int age_rev; int * age_res; int age_res_spec; int age_link_task; int age_int_task; int age_mtx; int age_tick_ch; } ;
typedef int device_t ;


 int AGE_CSUM_FEATURES ;
 int AGE_FLAG_MSI ;
 int AGE_FLAG_MSIX ;
 int AGE_FLAG_PCIE ;
 int AGE_FLAG_PMCAP ;
 int AGE_MASTER_CFG ;
 int AGE_MSIX_MESSAGES ;
 int AGE_MSI_MESSAGES ;
 int AGE_PHY_ADDR ;
 int AGE_SRAM_RX_FIFO_LEN ;
 int AGE_SRAM_TX_FIFO_LEN ;
 scalar_t__ AGE_TX_RING_CNT ;
 int BMSR_DEFCAPMASK ;
 int CSR_READ_4 (struct age_softc*,int ) ;
 int CSUM_TSO ;
 int DMA_CFG_RD_BURST_128 ;
 int DMA_CFG_RD_BURST_SHIFT ;
 int DMA_CFG_WR_BURST_128 ;
 int DMA_CFG_WR_BURST_SHIFT ;
 int ENXIO ;
 int IFCAP_HWCSUM ;
 int IFCAP_TSO4 ;
 int IFCAP_VLAN_HWCSUM ;
 int IFCAP_VLAN_HWTAGGING ;
 int IFCAP_VLAN_HWTSO ;
 int IFCAP_VLAN_MTU ;
 int IFCAP_WOL_MAGIC ;
 int IFCAP_WOL_MCAST ;
 int IFF_BROADCAST ;
 int IFF_MULTICAST ;
 int IFF_SIMPLEX ;
 int IFQ_SET_MAXLEN (TYPE_1__*,scalar_t__) ;
 int IFQ_SET_READY (TYPE_1__*) ;
 int IFT_ETHER ;
 int INTR_MPSAFE ;
 int INTR_TYPE_NET ;
 int MASTER_CHIP_REV_SHIFT ;
 int MII_OFFSET_ANY ;
 int MTX_DEF ;
 int MTX_NETWORK_LOCK ;
 int M_WAITOK ;
 int PCIY_EXPRESS ;
 int PCIY_PMG ;
 int PI_NET ;
 int TASK_INIT (int *,int ,int ,struct age_softc*) ;
 int age_detach (int ) ;
 int age_dma_alloc (struct age_softc*) ;
 int age_get_macaddr (struct age_softc*) ;
 int age_init ;
 int age_int_task ;
 int age_intr ;
 int age_ioctl ;
 int age_irq_spec_legacy ;
 int age_irq_spec_msi ;
 int age_irq_spec_msix ;
 int age_link_task ;
 int age_mediachange ;
 int age_mediastatus ;
 int age_phy_reset (struct age_softc*) ;
 int age_res_spec_mem ;
 int age_reset (struct age_softc*) ;
 int age_start ;
 int age_sysctl_node (struct age_softc*) ;
 scalar_t__ bootverbose ;
 int bus_alloc_resources (int ,int ,int *) ;
 int bus_setup_intr (int ,int ,int,int ,int *,struct age_softc*,int *) ;
 int callout_init_mtx (int *,int *,int ) ;
 int device_get_name (int ) ;
 int device_get_nameunit (int ) ;
 struct age_softc* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*,...) ;
 int ether_ifattach (struct ifnet*,int ) ;
 int ether_ifdetach (struct ifnet*) ;
 struct ifnet* if_alloc (int ) ;
 int if_initname (struct ifnet*,int ,int ) ;
 int mii_attach (int ,int *,struct ifnet*,int ,int ,int ,int ,int ,int ) ;
 scalar_t__ msi_disable ;
 scalar_t__ msix_disable ;
 int mtx_init (int *,int ,int ,int ) ;
 scalar_t__ pci_alloc_msi (int ,int*) ;
 scalar_t__ pci_alloc_msix (int ,int*) ;
 int pci_enable_busmaster (int ) ;
 scalar_t__ pci_find_cap (int ,int ,int*) ;
 int pci_get_revid (int ) ;
 int pci_msi_count (int ) ;
 int pci_msix_count (int ) ;
 int pci_read_config (int ,int,int) ;
 int pci_release_msi (int ) ;
 int * taskqueue_create_fast (char*,int ,int ,int **) ;
 int taskqueue_free (int *) ;
 int taskqueue_start_threads (int **,int,int ,char*,int ) ;
 int taskqueue_thread_enqueue ;

__attribute__((used)) static int
age_attach(device_t dev)
{
 struct age_softc *sc;
 struct ifnet *ifp;
 uint16_t burst;
 int error, i, msic, msixc, pmc;

 error = 0;
 sc = device_get_softc(dev);
 sc->age_dev = dev;

 mtx_init(&sc->age_mtx, device_get_nameunit(dev), MTX_NETWORK_LOCK,
     MTX_DEF);
 callout_init_mtx(&sc->age_tick_ch, &sc->age_mtx, 0);
 TASK_INIT(&sc->age_int_task, 0, age_int_task, sc);
 TASK_INIT(&sc->age_link_task, 0, age_link_task, sc);


 pci_enable_busmaster(dev);
 sc->age_res_spec = age_res_spec_mem;
 sc->age_irq_spec = age_irq_spec_legacy;
 error = bus_alloc_resources(dev, sc->age_res_spec, sc->age_res);
 if (error != 0) {
  device_printf(dev, "cannot allocate memory resources.\n");
  goto fail;
 }


 sc->age_phyaddr = AGE_PHY_ADDR;


 age_phy_reset(sc);


 age_reset(sc);


 sc->age_rev = pci_get_revid(dev);
 sc->age_chip_rev = CSR_READ_4(sc, AGE_MASTER_CFG) >>
     MASTER_CHIP_REV_SHIFT;
 if (bootverbose) {
  device_printf(dev, "PCI device revision : 0x%04x\n",
      sc->age_rev);
  device_printf(dev, "Chip id/revision : 0x%04x\n",
      sc->age_chip_rev);
 }
 if (sc->age_chip_rev == 0xFFFF) {
  device_printf(dev,"invalid chip revision : 0x%04x -- "
      "not initialized?\n", sc->age_chip_rev);
  error = ENXIO;
  goto fail;
 }

 device_printf(dev, "%d Tx FIFO, %d Rx FIFO\n",
     CSR_READ_4(sc, AGE_SRAM_TX_FIFO_LEN),
     CSR_READ_4(sc, AGE_SRAM_RX_FIFO_LEN));


 msixc = pci_msix_count(dev);
 msic = pci_msi_count(dev);
 if (bootverbose) {
  device_printf(dev, "MSIX count : %d\n", msixc);
  device_printf(dev, "MSI count : %d\n", msic);
 }


 if (msix_disable == 0 || msi_disable == 0) {
  if (msix_disable == 0 && msixc == AGE_MSIX_MESSAGES &&
      pci_alloc_msix(dev, &msixc) == 0) {
   if (msic == AGE_MSIX_MESSAGES) {
    device_printf(dev, "Using %d MSIX messages.\n",
        msixc);
    sc->age_flags |= AGE_FLAG_MSIX;
    sc->age_irq_spec = age_irq_spec_msix;
   } else
    pci_release_msi(dev);
  }
  if (msi_disable == 0 && (sc->age_flags & AGE_FLAG_MSIX) == 0 &&
      msic == AGE_MSI_MESSAGES &&
      pci_alloc_msi(dev, &msic) == 0) {
   if (msic == AGE_MSI_MESSAGES) {
    device_printf(dev, "Using %d MSI messages.\n",
        msic);
    sc->age_flags |= AGE_FLAG_MSI;
    sc->age_irq_spec = age_irq_spec_msi;
   } else
    pci_release_msi(dev);
  }
 }

 error = bus_alloc_resources(dev, sc->age_irq_spec, sc->age_irq);
 if (error != 0) {
  device_printf(dev, "cannot allocate IRQ resources.\n");
  goto fail;
 }



 if (pci_find_cap(dev, PCIY_EXPRESS, &i) == 0) {
  sc->age_flags |= AGE_FLAG_PCIE;
  burst = pci_read_config(dev, i + 0x08, 2);

  sc->age_dma_rd_burst = ((burst >> 12) & 0x07) <<
      DMA_CFG_RD_BURST_SHIFT;

  sc->age_dma_wr_burst = ((burst >> 5) & 0x07) <<
      DMA_CFG_WR_BURST_SHIFT;
  if (bootverbose) {
   device_printf(dev, "Read request size : %d bytes.\n",
       128 << ((burst >> 12) & 0x07));
   device_printf(dev, "TLP payload size : %d bytes.\n",
       128 << ((burst >> 5) & 0x07));
  }
 } else {
  sc->age_dma_rd_burst = DMA_CFG_RD_BURST_128;
  sc->age_dma_wr_burst = DMA_CFG_WR_BURST_128;
 }


 age_sysctl_node(sc);

 if ((error = age_dma_alloc(sc)) != 0)
  goto fail;


 age_get_macaddr(sc);

 ifp = sc->age_ifp = if_alloc(IFT_ETHER);
 if (ifp == ((void*)0)) {
  device_printf(dev, "cannot allocate ifnet structure.\n");
  error = ENXIO;
  goto fail;
 }

 ifp->if_softc = sc;
 if_initname(ifp, device_get_name(dev), device_get_unit(dev));
 ifp->if_flags = IFF_BROADCAST | IFF_SIMPLEX | IFF_MULTICAST;
 ifp->if_ioctl = age_ioctl;
 ifp->if_start = age_start;
 ifp->if_init = age_init;
 ifp->if_snd.ifq_drv_maxlen = AGE_TX_RING_CNT - 1;
 IFQ_SET_MAXLEN(&ifp->if_snd, ifp->if_snd.ifq_drv_maxlen);
 IFQ_SET_READY(&ifp->if_snd);
 ifp->if_capabilities = IFCAP_HWCSUM | IFCAP_TSO4;
 ifp->if_hwassist = AGE_CSUM_FEATURES | CSUM_TSO;
 if (pci_find_cap(dev, PCIY_PMG, &pmc) == 0) {
  sc->age_flags |= AGE_FLAG_PMCAP;
  ifp->if_capabilities |= IFCAP_WOL_MAGIC | IFCAP_WOL_MCAST;
 }
 ifp->if_capenable = ifp->if_capabilities;


 error = mii_attach(dev, &sc->age_miibus, ifp, age_mediachange,
     age_mediastatus, BMSR_DEFCAPMASK, sc->age_phyaddr, MII_OFFSET_ANY,
     0);
 if (error != 0) {
  device_printf(dev, "attaching PHYs failed\n");
  goto fail;
 }

 ether_ifattach(ifp, sc->age_eaddr);


 ifp->if_capabilities |= IFCAP_VLAN_MTU | IFCAP_VLAN_HWTAGGING |
     IFCAP_VLAN_HWCSUM | IFCAP_VLAN_HWTSO;
 ifp->if_capenable = ifp->if_capabilities;


 ifp->if_hdrlen = sizeof(struct ether_vlan_header);


 sc->age_tq = taskqueue_create_fast("age_taskq", M_WAITOK,
     taskqueue_thread_enqueue, &sc->age_tq);
 if (sc->age_tq == ((void*)0)) {
  device_printf(dev, "could not create taskqueue.\n");
  ether_ifdetach(ifp);
  error = ENXIO;
  goto fail;
 }
 taskqueue_start_threads(&sc->age_tq, 1, PI_NET, "%s taskq",
     device_get_nameunit(sc->age_dev));

 if ((sc->age_flags & AGE_FLAG_MSIX) != 0)
  msic = AGE_MSIX_MESSAGES;
 else if ((sc->age_flags & AGE_FLAG_MSI) != 0)
  msic = AGE_MSI_MESSAGES;
 else
  msic = 1;
 for (i = 0; i < msic; i++) {
  error = bus_setup_intr(dev, sc->age_irq[i],
      INTR_TYPE_NET | INTR_MPSAFE, age_intr, ((void*)0), sc,
      &sc->age_intrhand[i]);
  if (error != 0)
   break;
 }
 if (error != 0) {
  device_printf(dev, "could not set up interrupt handler.\n");
  taskqueue_free(sc->age_tq);
  sc->age_tq = ((void*)0);
  ether_ifdetach(ifp);
  goto fail;
 }

fail:
 if (error != 0)
  age_detach(dev);

 return (error);
}
