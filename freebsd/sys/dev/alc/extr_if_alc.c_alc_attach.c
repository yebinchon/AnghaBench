
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_5__ {scalar_t__ ifq_drv_maxlen; } ;
struct ifnet {int if_flags; int if_capabilities; int if_hwassist; int if_capenable; int if_hdrlen; TYPE_2__ if_snd; int if_init; int if_start; int if_ioctl; struct alc_softc* if_softc; } ;
struct ether_vlan_header {int dummy; } ;
struct alc_softc {int alc_flags; int alc_chip_rev; int alc_dma_rd_burst; int alc_dma_wr_burst; int alc_expcap; int alc_pmcap; int * alc_tq; int * alc_intrhand; int * alc_irq; int alc_dev; int alc_eaddr; int alc_phyaddr; int alc_miibus; struct ifnet* alc_ifp; int alc_irq_spec; int alc_rcb; int alc_rev; TYPE_1__* alc_ident; int * alc_res; int alc_res_spec; int alc_int_task; int alc_mtx; int alc_tick_ch; } ;
typedef int device_t ;
struct TYPE_4__ {int deviceid; } ;


 int ALC_CSUM_FEATURES ;
 int ALC_FLAG_APS ;
 int ALC_FLAG_AR816X_FAMILY ;
 int ALC_FLAG_CMB_BUG ;
 int ALC_FLAG_E2X00 ;
 int ALC_FLAG_FASTETHER ;
 int ALC_FLAG_JUMBO ;
 int ALC_FLAG_LINK_WAR ;
 int ALC_FLAG_MSI ;
 int ALC_FLAG_MSIX ;
 int ALC_FLAG_PCIE ;
 int ALC_FLAG_PM ;
 int ALC_FLAG_SMB_BUG ;
 int ALC_MASTER_CFG ;
 int ALC_MSIX_MESSAGES ;
 int ALC_MSI_MESSAGES ;
 int ALC_PHY_ADDR ;
 int ALC_SRAM_RX_FIFO_LEN ;
 int ALC_SRAM_TX_FIFO_LEN ;
 scalar_t__ ALC_TX_RING_CNT ;
 int AR816X_REV (int ) ;
 int BMSR_DEFCAPMASK ;
 int CSR_READ_2 (struct alc_softc*,scalar_t__) ;
 int CSR_READ_4 (struct alc_softc*,int ) ;
 int CSUM_TSO ;
 int DEBUGNET_SET (struct ifnet*,int ) ;
 int DMA_CFG_RCB_64 ;
 int ENXIO ;
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
 int IFQ_SET_MAXLEN (TYPE_2__*,scalar_t__) ;
 int IFQ_SET_READY (TYPE_2__*) ;
 int IFT_ETHER ;
 int INTR_MPSAFE ;
 int INTR_TYPE_NET ;
 int MASTER_CHIP_REV_SHIFT ;
 int MIIF_DOPAUSE ;
 int MII_OFFSET_ANY ;
 int MTX_DEF ;
 int MTX_NETWORK_LOCK ;
 int M_WAITOK ;
 int PCIEM_CTL_MAX_PAYLOAD ;
 int PCIEM_CTL_MAX_READ_REQUEST ;
 scalar_t__ PCIER_DEVICE_CTL ;
 int PCIY_EXPRESS ;
 int PCIY_PMG ;
 int PI_NET ;
 int TASK_INIT (int *,int ,int ,struct alc_softc*) ;
 int VENDORID_ATHEROS ;
 int alc ;
 int alc_config_msi (struct alc_softc*) ;
 int alc_detach (int ) ;
 int alc_dma_alloc (struct alc_softc*) ;
 int* alc_dma_burst ;
 TYPE_1__* alc_find_ident (int ) ;
 int alc_get_macaddr (struct alc_softc*) ;
 int alc_init ;
 int alc_init_pcie (struct alc_softc*) ;
 int alc_int_task ;
 int alc_intr ;
 int alc_ioctl ;
 int alc_irq_spec_legacy ;
 int alc_irq_spec_msi ;
 int alc_irq_spec_msix ;
 int alc_mediachange ;
 int alc_mediastatus ;
 int alc_phy_reset (struct alc_softc*) ;
 int alc_res_spec_mem ;
 int alc_reset (struct alc_softc*) ;
 int alc_start ;
 int alc_stop_mac (struct alc_softc*) ;
 int alc_sysctl_node (struct alc_softc*) ;
 scalar_t__ bootverbose ;
 int bus_alloc_resources (int ,int ,int *) ;
 int bus_setup_intr (int ,int ,int,int ,int *,struct alc_softc*,int *) ;
 int callout_init_mtx (int *,int *,int ) ;
 int device_get_name (int ) ;
 int device_get_nameunit (int ) ;
 struct alc_softc* device_get_softc (int ) ;
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
 int pci_get_subdevice (int ) ;
 int pci_get_subvendor (int ) ;
 int pci_msi_count (int ) ;
 int pci_msix_count (int ) ;
 int pci_release_msi (int ) ;
 int * taskqueue_create_fast (char*,int ,int ,int **) ;
 int taskqueue_free (int *) ;
 int taskqueue_start_threads (int **,int,int ,char*,int ) ;
 int taskqueue_thread_enqueue ;

__attribute__((used)) static int
alc_attach(device_t dev)
{
 struct alc_softc *sc;
 struct ifnet *ifp;
 int base, error, i, msic, msixc;
 uint16_t burst;

 error = 0;
 sc = device_get_softc(dev);
 sc->alc_dev = dev;
 sc->alc_rev = pci_get_revid(dev);

 mtx_init(&sc->alc_mtx, device_get_nameunit(dev), MTX_NETWORK_LOCK,
     MTX_DEF);
 callout_init_mtx(&sc->alc_tick_ch, &sc->alc_mtx, 0);
 TASK_INIT(&sc->alc_int_task, 0, alc_int_task, sc);
 sc->alc_ident = alc_find_ident(dev);


 pci_enable_busmaster(dev);
 sc->alc_res_spec = alc_res_spec_mem;
 sc->alc_irq_spec = alc_irq_spec_legacy;
 error = bus_alloc_resources(dev, sc->alc_res_spec, sc->alc_res);
 if (error != 0) {
  device_printf(dev, "cannot allocate memory resources.\n");
  goto fail;
 }


 sc->alc_phyaddr = ALC_PHY_ADDR;
 switch (sc->alc_ident->deviceid) {
 case 130:
 case 129:
 case 128:
  sc->alc_flags |= ALC_FLAG_E2X00;

 case 134:
  if (pci_get_subvendor(dev) == VENDORID_ATHEROS &&
      pci_get_subdevice(dev) == 0x0091 && sc->alc_rev == 0)
   sc->alc_flags |= ALC_FLAG_LINK_WAR;

 case 132:
  sc->alc_flags |= ALC_FLAG_AR816X_FAMILY;
  break;
 case 133:
 case 131:
  sc->alc_flags |= ALC_FLAG_FASTETHER | ALC_FLAG_AR816X_FAMILY;
  break;
 case 136:
 case 135:
  sc->alc_flags |= ALC_FLAG_APS;

 case 139:
  sc->alc_flags |= ALC_FLAG_FASTETHER;
  break;
 case 138:
 case 137:
  sc->alc_flags |= ALC_FLAG_APS;

 default:
  break;
 }
 sc->alc_flags |= ALC_FLAG_JUMBO;







 sc->alc_flags |= ALC_FLAG_SMB_BUG;



 sc->alc_flags |= ALC_FLAG_CMB_BUG;
 sc->alc_chip_rev = CSR_READ_4(sc, ALC_MASTER_CFG) >>
     MASTER_CHIP_REV_SHIFT;
 if (bootverbose) {
  device_printf(dev, "PCI device revision : 0x%04x\n",
      sc->alc_rev);
  device_printf(dev, "Chip id/revision : 0x%04x\n",
      sc->alc_chip_rev);
  if ((sc->alc_flags & ALC_FLAG_AR816X_FAMILY) != 0)
   device_printf(dev, "AR816x revision : 0x%x\n",
       AR816X_REV(sc->alc_rev));
 }
 device_printf(dev, "%u Tx FIFO, %u Rx FIFO\n",
     CSR_READ_4(sc, ALC_SRAM_TX_FIFO_LEN) * 8,
     CSR_READ_4(sc, ALC_SRAM_RX_FIFO_LEN) * 8);


 sc->alc_dma_rd_burst = 0;
 sc->alc_dma_wr_burst = 0;
 sc->alc_rcb = DMA_CFG_RCB_64;
 if (pci_find_cap(dev, PCIY_EXPRESS, &base) == 0) {
  sc->alc_flags |= ALC_FLAG_PCIE;
  sc->alc_expcap = base;
  burst = CSR_READ_2(sc, base + PCIER_DEVICE_CTL);
  sc->alc_dma_rd_burst =
      (burst & PCIEM_CTL_MAX_READ_REQUEST) >> 12;
  sc->alc_dma_wr_burst = (burst & PCIEM_CTL_MAX_PAYLOAD) >> 5;
  if (bootverbose) {
   device_printf(dev, "Read request size : %u bytes.\n",
       alc_dma_burst[sc->alc_dma_rd_burst]);
   device_printf(dev, "TLP payload size : %u bytes.\n",
       alc_dma_burst[sc->alc_dma_wr_burst]);
  }
  if (alc_dma_burst[sc->alc_dma_rd_burst] > 1024)
   sc->alc_dma_rd_burst = 3;
  if (alc_dma_burst[sc->alc_dma_wr_burst] > 1024)
   sc->alc_dma_wr_burst = 3;





  if ((sc->alc_flags & ALC_FLAG_E2X00) != 0)
   sc->alc_dma_wr_burst = 0;
  alc_init_pcie(sc);
 }


 alc_phy_reset(sc);


 alc_stop_mac(sc);
 alc_reset(sc);


 msixc = pci_msix_count(dev);
 msic = pci_msi_count(dev);
 if (bootverbose) {
  device_printf(dev, "MSIX count : %d\n", msixc);
  device_printf(dev, "MSI count : %d\n", msic);
 }
 if (msixc > 1)
  msixc = 1;
 if (msic > 1)
  msic = 1;






 if (msix_disable == 0 || msi_disable == 0) {
  if (msix_disable == 0 && msixc > 0 &&
      pci_alloc_msix(dev, &msixc) == 0) {
   if (msic == 1) {
    device_printf(dev,
        "Using %d MSIX message(s).\n", msixc);
    sc->alc_flags |= ALC_FLAG_MSIX;
    sc->alc_irq_spec = alc_irq_spec_msix;
   } else
    pci_release_msi(dev);
  }
  if (msi_disable == 0 && (sc->alc_flags & ALC_FLAG_MSIX) == 0 &&
      msic > 0 && pci_alloc_msi(dev, &msic) == 0) {
   if (msic == 1) {
    device_printf(dev,
        "Using %d MSI message(s).\n", msic);
    sc->alc_flags |= ALC_FLAG_MSI;
    sc->alc_irq_spec = alc_irq_spec_msi;
   } else
    pci_release_msi(dev);
  }
 }

 error = bus_alloc_resources(dev, sc->alc_irq_spec, sc->alc_irq);
 if (error != 0) {
  device_printf(dev, "cannot allocate IRQ resources.\n");
  goto fail;
 }


 alc_sysctl_node(sc);

 if ((error = alc_dma_alloc(sc)) != 0)
  goto fail;


 alc_get_macaddr(sc);

 ifp = sc->alc_ifp = if_alloc(IFT_ETHER);
 if (ifp == ((void*)0)) {
  device_printf(dev, "cannot allocate ifnet structure.\n");
  error = ENXIO;
  goto fail;
 }

 ifp->if_softc = sc;
 if_initname(ifp, device_get_name(dev), device_get_unit(dev));
 ifp->if_flags = IFF_BROADCAST | IFF_SIMPLEX | IFF_MULTICAST;
 ifp->if_ioctl = alc_ioctl;
 ifp->if_start = alc_start;
 ifp->if_init = alc_init;
 ifp->if_snd.ifq_drv_maxlen = ALC_TX_RING_CNT - 1;
 IFQ_SET_MAXLEN(&ifp->if_snd, ifp->if_snd.ifq_drv_maxlen);
 IFQ_SET_READY(&ifp->if_snd);
 ifp->if_capabilities = IFCAP_TXCSUM | IFCAP_TSO4;
 ifp->if_hwassist = ALC_CSUM_FEATURES | CSUM_TSO;
 if (pci_find_cap(dev, PCIY_PMG, &base) == 0) {
  ifp->if_capabilities |= IFCAP_WOL_MAGIC | IFCAP_WOL_MCAST;
  sc->alc_flags |= ALC_FLAG_PM;
  sc->alc_pmcap = base;
 }
 ifp->if_capenable = ifp->if_capabilities;


 error = mii_attach(dev, &sc->alc_miibus, ifp, alc_mediachange,
     alc_mediastatus, BMSR_DEFCAPMASK, sc->alc_phyaddr, MII_OFFSET_ANY,
     MIIF_DOPAUSE);
 if (error != 0) {
  device_printf(dev, "attaching PHYs failed\n");
  goto fail;
 }

 ether_ifattach(ifp, sc->alc_eaddr);


 ifp->if_capabilities |= IFCAP_VLAN_MTU | IFCAP_VLAN_HWTAGGING |
     IFCAP_VLAN_HWCSUM | IFCAP_VLAN_HWTSO;
 ifp->if_capenable = ifp->if_capabilities;
 if ((sc->alc_flags & ALC_FLAG_AR816X_FAMILY) == 0) {
  ifp->if_capenable &= ~IFCAP_TXCSUM;
  ifp->if_hwassist &= ~ALC_CSUM_FEATURES;
 }


 ifp->if_hdrlen = sizeof(struct ether_vlan_header);


 sc->alc_tq = taskqueue_create_fast("alc_taskq", M_WAITOK,
     taskqueue_thread_enqueue, &sc->alc_tq);
 if (sc->alc_tq == ((void*)0)) {
  device_printf(dev, "could not create taskqueue.\n");
  ether_ifdetach(ifp);
  error = ENXIO;
  goto fail;
 }
 taskqueue_start_threads(&sc->alc_tq, 1, PI_NET, "%s taskq",
     device_get_nameunit(sc->alc_dev));

 alc_config_msi(sc);
 if ((sc->alc_flags & ALC_FLAG_MSIX) != 0)
  msic = ALC_MSIX_MESSAGES;
 else if ((sc->alc_flags & ALC_FLAG_MSI) != 0)
  msic = ALC_MSI_MESSAGES;
 else
  msic = 1;
 for (i = 0; i < msic; i++) {
  error = bus_setup_intr(dev, sc->alc_irq[i],
      INTR_TYPE_NET | INTR_MPSAFE, alc_intr, ((void*)0), sc,
      &sc->alc_intrhand[i]);
  if (error != 0)
   break;
 }
 if (error != 0) {
  device_printf(dev, "could not set up interrupt handler.\n");
  taskqueue_free(sc->alc_tq);
  sc->alc_tq = ((void*)0);
  ether_ifdetach(ifp);
  goto fail;
 }


 DEBUGNET_SET(ifp, alc);

fail:
 if (error != 0)
  alc_detach(dev);

 return (error);
}
