
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_3__ {scalar_t__ ifq_drv_maxlen; } ;
struct ifnet {int if_flags; int if_capabilities; int if_hwassist; int if_capenable; int if_hdrlen; TYPE_1__ if_snd; int if_init; int if_start; int if_ioctl; struct ale_softc* if_softc; } ;
struct ether_vlan_header {int dummy; } ;
struct ale_softc {int ale_rev; int ale_flags; int ale_chip_rev; int ale_dma_rd_burst; int ale_dma_wr_burst; int * ale_tq; int * ale_intrhand; int * ale_irq; int ale_dev; int ale_eaddr; int ale_phyaddr; int ale_miibus; struct ifnet* ale_ifp; int ale_irq_spec; int * ale_res; int ale_res_spec; int ale_int_task; int ale_mtx; int ale_tick_ch; } ;
typedef int device_t ;


 int ALE_CSUM_FEATURES ;
 int ALE_FLAG_FASTETHER ;
 int ALE_FLAG_JUMBO ;
 int ALE_FLAG_MSI ;
 int ALE_FLAG_MSIX ;
 int ALE_FLAG_PCIE ;
 int ALE_FLAG_PMCAP ;
 int ALE_FLAG_RXCSUM_BUG ;
 int ALE_FLAG_TXCMB_BUG ;
 int ALE_FLAG_TXCSUM_BUG ;
 int ALE_MASTER_CFG ;
 int ALE_MSIX_MESSAGES ;
 int ALE_MSI_MESSAGES ;
 int ALE_PHY_ADDR ;
 int ALE_PHY_STATUS ;
 int ALE_SRAM_RX_FIFO_LEN ;
 int ALE_SRAM_TX_FIFO_LEN ;
 scalar_t__ ALE_TX_RING_CNT ;
 int BMSR_DEFCAPMASK ;
 int CSR_READ_4 (struct ale_softc*,int ) ;
 int CSUM_TSO ;
 int DMA_CFG_RD_BURST_128 ;
 int DMA_CFG_RD_BURST_SHIFT ;
 int DMA_CFG_WR_BURST_128 ;
 int DMA_CFG_WR_BURST_SHIFT ;
 int ENXIO ;
 int IFCAP_RXCSUM ;
 int IFCAP_TSO4 ;
 int IFCAP_TXCSUM ;
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
 int MIIF_DOPAUSE ;
 int MII_OFFSET_ANY ;
 int MTX_DEF ;
 int MTX_NETWORK_LOCK ;
 int M_WAITOK ;
 int PCIY_EXPRESS ;
 int PCIY_PMG ;
 int PHY_STATUS_100M ;
 int PI_NET ;
 int TASK_INIT (int *,int ,int ,struct ale_softc*) ;
 int ale_detach (int ) ;
 int ale_dma_alloc (struct ale_softc*) ;
 int ale_get_macaddr (struct ale_softc*) ;
 int ale_init ;
 int ale_int_task ;
 int ale_intr ;
 int ale_ioctl ;
 int ale_irq_spec_legacy ;
 int ale_irq_spec_msi ;
 int ale_irq_spec_msix ;
 int ale_mediachange ;
 int ale_mediastatus ;
 int ale_phy_reset (struct ale_softc*) ;
 int ale_res_spec_mem ;
 int ale_reset (struct ale_softc*) ;
 int ale_start ;
 int ale_sysctl_node (struct ale_softc*) ;
 scalar_t__ bootverbose ;
 int bus_alloc_resources (int ,int ,int *) ;
 int bus_setup_intr (int ,int ,int,int ,int *,struct ale_softc*,int *) ;
 int callout_init_mtx (int *,int *,int ) ;
 int device_get_name (int ) ;
 int device_get_nameunit (int ) ;
 struct ale_softc* device_get_softc (int ) ;
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
ale_attach(device_t dev)
{
 struct ale_softc *sc;
 struct ifnet *ifp;
 uint16_t burst;
 int error, i, msic, msixc, pmc;
 uint32_t rxf_len, txf_len;

 error = 0;
 sc = device_get_softc(dev);
 sc->ale_dev = dev;

 mtx_init(&sc->ale_mtx, device_get_nameunit(dev), MTX_NETWORK_LOCK,
     MTX_DEF);
 callout_init_mtx(&sc->ale_tick_ch, &sc->ale_mtx, 0);
 TASK_INIT(&sc->ale_int_task, 0, ale_int_task, sc);


 pci_enable_busmaster(dev);
 sc->ale_res_spec = ale_res_spec_mem;
 sc->ale_irq_spec = ale_irq_spec_legacy;
 error = bus_alloc_resources(dev, sc->ale_res_spec, sc->ale_res);
 if (error != 0) {
  device_printf(dev, "cannot allocate memory resources.\n");
  goto fail;
 }


 sc->ale_phyaddr = ALE_PHY_ADDR;


 ale_phy_reset(sc);


 ale_reset(sc);


 sc->ale_rev = pci_get_revid(dev);
 if (sc->ale_rev >= 0xF0) {

  sc->ale_flags |= ALE_FLAG_FASTETHER;
 } else {
  if ((CSR_READ_4(sc, ALE_PHY_STATUS) & PHY_STATUS_100M) != 0) {

   sc->ale_flags |= ALE_FLAG_JUMBO;
  } else {

   sc->ale_flags |= ALE_FLAG_FASTETHER;
  }
 }





 sc->ale_flags |= ALE_FLAG_TXCSUM_BUG;




 sc->ale_flags |= ALE_FLAG_RXCSUM_BUG;






 sc->ale_flags |= ALE_FLAG_TXCMB_BUG;
 sc->ale_chip_rev = CSR_READ_4(sc, ALE_MASTER_CFG) >>
     MASTER_CHIP_REV_SHIFT;
 if (bootverbose) {
  device_printf(dev, "PCI device revision : 0x%04x\n",
      sc->ale_rev);
  device_printf(dev, "Chip id/revision : 0x%04x\n",
      sc->ale_chip_rev);
 }
 txf_len = CSR_READ_4(sc, ALE_SRAM_TX_FIFO_LEN);
 rxf_len = CSR_READ_4(sc, ALE_SRAM_RX_FIFO_LEN);




 if (sc->ale_chip_rev == 0xFFFF || txf_len == 0xFFFFFFFF ||
     rxf_len == 0xFFFFFFF) {
  device_printf(dev,"chip revision : 0x%04x, %u Tx FIFO "
      "%u Rx FIFO -- not initialized?\n", sc->ale_chip_rev,
      txf_len, rxf_len);
  error = ENXIO;
  goto fail;
 }
 device_printf(dev, "%u Tx FIFO, %u Rx FIFO\n", txf_len, rxf_len);


 msixc = pci_msix_count(dev);
 msic = pci_msi_count(dev);
 if (bootverbose) {
  device_printf(dev, "MSIX count : %d\n", msixc);
  device_printf(dev, "MSI count : %d\n", msic);
 }


 if (msix_disable == 0 || msi_disable == 0) {
  if (msix_disable == 0 && msixc == ALE_MSIX_MESSAGES &&
      pci_alloc_msix(dev, &msixc) == 0) {
   if (msixc == ALE_MSIX_MESSAGES) {
    device_printf(dev, "Using %d MSIX messages.\n",
        msixc);
    sc->ale_flags |= ALE_FLAG_MSIX;
    sc->ale_irq_spec = ale_irq_spec_msix;
   } else
    pci_release_msi(dev);
  }
  if (msi_disable == 0 && (sc->ale_flags & ALE_FLAG_MSIX) == 0 &&
      msic == ALE_MSI_MESSAGES &&
      pci_alloc_msi(dev, &msic) == 0) {
   if (msic == ALE_MSI_MESSAGES) {
    device_printf(dev, "Using %d MSI messages.\n",
        msic);
    sc->ale_flags |= ALE_FLAG_MSI;
    sc->ale_irq_spec = ale_irq_spec_msi;
   } else
    pci_release_msi(dev);
  }
 }

 error = bus_alloc_resources(dev, sc->ale_irq_spec, sc->ale_irq);
 if (error != 0) {
  device_printf(dev, "cannot allocate IRQ resources.\n");
  goto fail;
 }


 if (pci_find_cap(dev, PCIY_EXPRESS, &i) == 0) {
  sc->ale_flags |= ALE_FLAG_PCIE;
  burst = pci_read_config(dev, i + 0x08, 2);

  sc->ale_dma_rd_burst = ((burst >> 12) & 0x07) <<
      DMA_CFG_RD_BURST_SHIFT;

  sc->ale_dma_wr_burst = ((burst >> 5) & 0x07) <<
      DMA_CFG_WR_BURST_SHIFT;
  if (bootverbose) {
   device_printf(dev, "Read request size : %d bytes.\n",
       128 << ((burst >> 12) & 0x07));
   device_printf(dev, "TLP payload size : %d bytes.\n",
       128 << ((burst >> 5) & 0x07));
  }
 } else {
  sc->ale_dma_rd_burst = DMA_CFG_RD_BURST_128;
  sc->ale_dma_wr_burst = DMA_CFG_WR_BURST_128;
 }


 ale_sysctl_node(sc);

 if ((error = ale_dma_alloc(sc)) != 0)
  goto fail;


 ale_get_macaddr(sc);

 ifp = sc->ale_ifp = if_alloc(IFT_ETHER);
 if (ifp == ((void*)0)) {
  device_printf(dev, "cannot allocate ifnet structure.\n");
  error = ENXIO;
  goto fail;
 }

 ifp->if_softc = sc;
 if_initname(ifp, device_get_name(dev), device_get_unit(dev));
 ifp->if_flags = IFF_BROADCAST | IFF_SIMPLEX | IFF_MULTICAST;
 ifp->if_ioctl = ale_ioctl;
 ifp->if_start = ale_start;
 ifp->if_init = ale_init;
 ifp->if_snd.ifq_drv_maxlen = ALE_TX_RING_CNT - 1;
 IFQ_SET_MAXLEN(&ifp->if_snd, ifp->if_snd.ifq_drv_maxlen);
 IFQ_SET_READY(&ifp->if_snd);
 ifp->if_capabilities = IFCAP_RXCSUM | IFCAP_TXCSUM | IFCAP_TSO4;
 ifp->if_hwassist = ALE_CSUM_FEATURES | CSUM_TSO;
 if (pci_find_cap(dev, PCIY_PMG, &pmc) == 0) {
  sc->ale_flags |= ALE_FLAG_PMCAP;
  ifp->if_capabilities |= IFCAP_WOL_MAGIC | IFCAP_WOL_MCAST;
 }
 ifp->if_capenable = ifp->if_capabilities;


 error = mii_attach(dev, &sc->ale_miibus, ifp, ale_mediachange,
     ale_mediastatus, BMSR_DEFCAPMASK, sc->ale_phyaddr, MII_OFFSET_ANY,
     MIIF_DOPAUSE);
 if (error != 0) {
  device_printf(dev, "attaching PHYs failed\n");
  goto fail;
 }

 ether_ifattach(ifp, sc->ale_eaddr);


 ifp->if_capabilities |= IFCAP_VLAN_MTU | IFCAP_VLAN_HWTAGGING |
     IFCAP_VLAN_HWCSUM | IFCAP_VLAN_HWTSO;
 ifp->if_capenable = ifp->if_capabilities;







 ifp->if_capenable &= ~IFCAP_RXCSUM;


 ifp->if_hdrlen = sizeof(struct ether_vlan_header);


 sc->ale_tq = taskqueue_create_fast("ale_taskq", M_WAITOK,
     taskqueue_thread_enqueue, &sc->ale_tq);
 if (sc->ale_tq == ((void*)0)) {
  device_printf(dev, "could not create taskqueue.\n");
  ether_ifdetach(ifp);
  error = ENXIO;
  goto fail;
 }
 taskqueue_start_threads(&sc->ale_tq, 1, PI_NET, "%s taskq",
     device_get_nameunit(sc->ale_dev));

 if ((sc->ale_flags & ALE_FLAG_MSIX) != 0)
  msic = ALE_MSIX_MESSAGES;
 else if ((sc->ale_flags & ALE_FLAG_MSI) != 0)
  msic = ALE_MSI_MESSAGES;
 else
  msic = 1;
 for (i = 0; i < msic; i++) {
  error = bus_setup_intr(dev, sc->ale_irq[i],
      INTR_TYPE_NET | INTR_MPSAFE, ale_intr, ((void*)0), sc,
      &sc->ale_intrhand[i]);
  if (error != 0)
   break;
 }
 if (error != 0) {
  device_printf(dev, "could not set up interrupt handler.\n");
  taskqueue_free(sc->ale_tq);
  sc->ale_tq = ((void*)0);
  ether_ifdetach(ifp);
  goto fail;
 }

fail:
 if (error != 0)
  ale_detach(dev);

 return (error);
}
