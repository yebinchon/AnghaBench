
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct nfe_softc {scalar_t__ nfe_msix; int nfe_msi; int nfe_devid; int nfe_flags; int * nfe_tq; int * nfe_intrhand; int ** nfe_irq; int nfe_dev; int nfe_int_task; int eaddr; int nfe_miibus; scalar_t__ nfe_framesize; int jrxq; int rxq; int txq; int * nfe_ifp; int nfe_parent_tag; int nfe_revid; void* nfe_intrs; int nfe_irq_mask; void* nfe_nointrs; int nfe_irq_status; int nfe_mtx; int ** nfe_res; int nfe_stat_ch; } ;
struct ether_vlan_header {int dummy; } ;
typedef int ifm_stat_cb_t ;
typedef int ifm_change_cb_t ;
typedef int * if_t ;
typedef int device_t ;
typedef int bus_addr_t ;


 int BMSR_DEFCAPMASK ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int BUS_SPACE_MAXSIZE_32BIT ;
 int CSUM_TSO ;
 int ENOSPC ;
 int ENXIO ;
 int IFCAP_HWCSUM ;
 int IFCAP_POLLING ;
 int IFCAP_TSO4 ;
 int IFCAP_VLAN_HWCSUM ;
 int IFCAP_VLAN_HWTAGGING ;
 int IFCAP_VLAN_HWTSO ;
 int IFCAP_VLAN_MTU ;
 int IFCAP_WOL_MAGIC ;
 int IFF_BROADCAST ;
 int IFF_MULTICAST ;
 int IFF_SIMPLEX ;
 int IFT_ETHER ;
 int INTR_MPSAFE ;
 int INTR_TYPE_NET ;
 int MIIF_DOPAUSE ;
 int MII_OFFSET_ANY ;
 int MII_PHY_ANY ;
 int MTX_DEF ;
 int MTX_NETWORK_LOCK ;
 int M_WAITOK ;
 int NFE_40BIT_ADDR ;
 int NFE_CORRECT_MACADDR ;
 int NFE_CSUM_FEATURES ;
 int NFE_DMA_MAXADDR ;
 int NFE_HW_CSUM ;
 int NFE_HW_VLAN ;
 int NFE_IRQ_MASK ;
 int NFE_IRQ_STATUS ;
 void* NFE_IRQ_WANTED ;
 int NFE_JUMBO_SUP ;
 int NFE_MAC_ADDR_INORDER ;
 int NFE_MIB_V1 ;
 int NFE_MIB_V2 ;
 int NFE_MIB_V3 ;
 int NFE_MSIX_IRQ_STATUS ;
 int NFE_MSIX_MAP0 ;
 int NFE_MSIX_MAP1 ;
 int NFE_MSI_IRQ_MASK ;
 int NFE_MSI_MAP0 ;
 int NFE_MSI_MAP1 ;
 int NFE_MSI_MESSAGES ;
 void* NFE_MSI_VECTOR_0_ENABLED ;
 int NFE_PWR_MGMT ;
 int NFE_READ (struct nfe_softc*,int ) ;
 scalar_t__ NFE_RX_HEADERS ;
 int NFE_TX_FLOW_CTRL ;
 scalar_t__ NFE_TX_RING_COUNT ;
 int NFE_TX_UNK ;
 int NFE_WRITE (struct nfe_softc*,int ,int ) ;
 int PCIR_BAR (int ) ;
 int PCIY_EXPRESS ;
 int PCIY_PMG ;
 int PI_NET ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int TASK_INIT (int *,int ,int ,struct nfe_softc*) ;
 scalar_t__ bootverbose ;
 void* bus_alloc_resource_any (int ,int ,int*,int) ;
 int bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int ,int ,int ,int ,int *,int *,int *) ;
 int bus_get_dma_tag (int ) ;
 int bus_setup_intr (int ,int *,int,int ,int *,struct nfe_softc*,int *) ;
 int callout_init_mtx (int *,int *,int ) ;
 int device_get_name (int ) ;
 int device_get_nameunit (int ) ;
 struct nfe_softc* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*,...) ;
 int ether_ifattach (int *,int ) ;
 int ether_ifdetach (int *) ;
 int if_getcapabilities (int *) ;
 int * if_gethandle (int ) ;
 scalar_t__ if_getmtu (int *) ;
 int if_initname (int *,int ,int ) ;
 int if_setcapabilities (int *,int ) ;
 int if_setcapabilitiesbit (int *,int,int ) ;
 int if_setcapenable (int *,int) ;
 int if_setflags (int *,int) ;
 int if_sethwassist (int *,int ) ;
 int if_sethwassistbits (int *,int,int ) ;
 int if_setifheaderlen (int *,int) ;
 int if_setinitfn (int *,int ) ;
 int if_setioctlfn (int *,int ) ;
 int if_setsendqlen (int *,scalar_t__) ;
 int if_setsendqready (int *) ;
 int if_setsoftc (int *,struct nfe_softc*) ;
 int if_setstartfn (int *,int ) ;
 int mii_attach (int ,int *,int *,int ,int ,int ,int,int ,int ) ;
 int msi_disable ;
 int msix_disable ;
 int mtx_destroy (int *) ;
 int mtx_init (int *,int ,int ,int ) ;
 int nfe_alloc_jrx_ring (struct nfe_softc*,int *) ;
 int nfe_alloc_msix (struct nfe_softc*,int) ;
 int nfe_alloc_rx_ring (struct nfe_softc*,int *) ;
 int nfe_alloc_tx_ring (struct nfe_softc*,int *) ;
 scalar_t__ nfe_can_use_msix (struct nfe_softc*) ;
 int nfe_detach (int ) ;
 scalar_t__ nfe_detect_msik9 (struct nfe_softc*) ;
 int nfe_get_macaddr (struct nfe_softc*,int ) ;
 scalar_t__ nfe_ifmedia_sts ;
 scalar_t__ nfe_ifmedia_upd ;
 int nfe_init ;
 int nfe_int_task ;
 int nfe_intr ;
 int nfe_ioctl ;
 int nfe_power (struct nfe_softc*) ;
 int nfe_start ;
 int nfe_sysctl_node (struct nfe_softc*) ;
 scalar_t__ pci_alloc_msi (int ,int*) ;
 int pci_enable_busmaster (int ) ;
 scalar_t__ pci_find_cap (int ,int ,int*) ;
 int pci_get_device (int ) ;
 int pci_get_revid (int ) ;
 int pci_msi_count (int ) ;
 int pci_msix_count (int ) ;
 int pci_read_config (int ,int,int) ;
 int pci_release_msi (int ) ;
 int pci_write_config (int ,int,int,int) ;
 int * taskqueue_create_fast (char*,int ,int ,int **) ;
 int taskqueue_free (int *) ;
 int taskqueue_start_threads (int **,int,int ,char*,int ) ;
 int taskqueue_thread_enqueue ;

__attribute__((used)) static int
nfe_attach(device_t dev)
{
 struct nfe_softc *sc;
 if_t ifp;
 bus_addr_t dma_addr_max;
 int error = 0, i, msic, phyloc, reg, rid;

 sc = device_get_softc(dev);
 sc->nfe_dev = dev;

 mtx_init(&sc->nfe_mtx, device_get_nameunit(dev), MTX_NETWORK_LOCK,
     MTX_DEF);
 callout_init_mtx(&sc->nfe_stat_ch, &sc->nfe_mtx, 0);

 pci_enable_busmaster(dev);

 rid = PCIR_BAR(0);
 sc->nfe_res[0] = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid,
     RF_ACTIVE);
 if (sc->nfe_res[0] == ((void*)0)) {
  device_printf(dev, "couldn't map memory resources\n");
  mtx_destroy(&sc->nfe_mtx);
  return (ENXIO);
 }

 if (pci_find_cap(dev, PCIY_EXPRESS, &reg) == 0) {
  uint16_t v, width;

  v = pci_read_config(dev, reg + 0x08, 2);

  v &= ~(7 << 12);
  v |= (5 << 12);
  pci_write_config(dev, reg + 0x08, v, 2);

  v = pci_read_config(dev, reg + 0x0c, 2);

  v = (v >> 4) & 0x0f;
  width = pci_read_config(dev, reg + 0x12, 2);

  width = (width >> 4) & 0x3f;
  if (v != width)
   device_printf(sc->nfe_dev,
       "warning, negotiated width of link(x%d) != "
       "max. width of link(x%d)\n", width, v);
 }

 if (nfe_can_use_msix(sc) == 0) {
  device_printf(sc->nfe_dev,
      "MSI/MSI-X capability black-listed, will use INTx\n");
  msix_disable = 1;
  msi_disable = 1;
 }


 if (msix_disable == 0 || msi_disable == 0) {
  if (msix_disable == 0 &&
      (msic = pci_msix_count(dev)) == NFE_MSI_MESSAGES)
   nfe_alloc_msix(sc, msic);
  if (msi_disable == 0 && sc->nfe_msix == 0 &&
      (msic = pci_msi_count(dev)) == NFE_MSI_MESSAGES &&
      pci_alloc_msi(dev, &msic) == 0) {
   if (msic == NFE_MSI_MESSAGES) {
    if (bootverbose)
     device_printf(dev,
         "Using %d MSI messages\n", msic);
    sc->nfe_msi = 1;
   } else
    pci_release_msi(dev);
  }
 }

 if (sc->nfe_msix == 0 && sc->nfe_msi == 0) {
  rid = 0;
  sc->nfe_irq[0] = bus_alloc_resource_any(dev, SYS_RES_IRQ, &rid,
      RF_SHAREABLE | RF_ACTIVE);
  if (sc->nfe_irq[0] == ((void*)0)) {
   device_printf(dev, "couldn't allocate IRQ resources\n");
   error = ENXIO;
   goto fail;
  }
 } else {
  for (i = 0, rid = 1; i < NFE_MSI_MESSAGES; i++, rid++) {
   sc->nfe_irq[i] = bus_alloc_resource_any(dev,
       SYS_RES_IRQ, &rid, RF_ACTIVE);
   if (sc->nfe_irq[i] == ((void*)0)) {
    device_printf(dev,
        "couldn't allocate IRQ resources for "
        "message %d\n", rid);
    error = ENXIO;
    goto fail;
   }
  }

  if (sc->nfe_msix != 0) {
   NFE_WRITE(sc, NFE_MSIX_MAP0, 0);
   NFE_WRITE(sc, NFE_MSIX_MAP1, 0);
  } else if (sc->nfe_msi != 0) {
   NFE_WRITE(sc, NFE_MSI_MAP0, 0);
   NFE_WRITE(sc, NFE_MSI_MAP1, 0);
  }
 }


 sc->nfe_irq_status = NFE_IRQ_STATUS;
 sc->nfe_irq_mask = NFE_IRQ_MASK;
 sc->nfe_intrs = NFE_IRQ_WANTED;
 sc->nfe_nointrs = 0;
 if (sc->nfe_msix != 0) {
  sc->nfe_irq_status = NFE_MSIX_IRQ_STATUS;
  sc->nfe_nointrs = NFE_IRQ_WANTED;
 } else if (sc->nfe_msi != 0) {
  sc->nfe_irq_mask = NFE_MSI_IRQ_MASK;
  sc->nfe_intrs = NFE_MSI_VECTOR_0_ENABLED;
 }

 sc->nfe_devid = pci_get_device(dev);
 sc->nfe_revid = pci_get_revid(dev);
 sc->nfe_flags = 0;

 switch (sc->nfe_devid) {
 case 131:
 case 130:
 case 129:
 case 128:
  sc->nfe_flags |= NFE_JUMBO_SUP | NFE_HW_CSUM;
  break;
 case 160:
 case 159:
  sc->nfe_flags |= NFE_40BIT_ADDR | NFE_PWR_MGMT | NFE_MIB_V1;
  break;
 case 164:
 case 163:
 case 162:
 case 161:
  sc->nfe_flags |= NFE_JUMBO_SUP | NFE_40BIT_ADDR | NFE_HW_CSUM |
      NFE_MIB_V1;
  break;
 case 158:
 case 157:
  sc->nfe_flags |= NFE_JUMBO_SUP | NFE_40BIT_ADDR | NFE_HW_CSUM |
      NFE_HW_VLAN | NFE_PWR_MGMT | NFE_TX_FLOW_CTRL | NFE_MIB_V2;
  break;

 case 156:
 case 155:
 case 154:
 case 153:
 case 148:
 case 147:
 case 146:
 case 145:
 case 144:
 case 143:
 case 142:
 case 141:
  sc->nfe_flags |= NFE_40BIT_ADDR | NFE_PWR_MGMT |
      NFE_CORRECT_MACADDR | NFE_TX_FLOW_CTRL | NFE_MIB_V2;
  break;
 case 140:
 case 139:
 case 138:
 case 137:

  sc->nfe_flags |= NFE_40BIT_ADDR | NFE_HW_CSUM | NFE_PWR_MGMT |
      NFE_CORRECT_MACADDR | NFE_MIB_V3;
  break;
 case 136:
 case 135:
 case 134:
 case 133:
 case 132:

  sc->nfe_flags |= NFE_JUMBO_SUP | NFE_40BIT_ADDR | NFE_HW_CSUM |
      NFE_PWR_MGMT | NFE_CORRECT_MACADDR | NFE_MIB_V3;
  break;
 case 152:
 case 151:
 case 150:
 case 149:
  sc->nfe_flags |= NFE_JUMBO_SUP | NFE_40BIT_ADDR |
      NFE_PWR_MGMT | NFE_CORRECT_MACADDR | NFE_TX_FLOW_CTRL |
      NFE_MIB_V2;
  break;
 }

 nfe_power(sc);

 if ((NFE_READ(sc, NFE_TX_UNK) & NFE_MAC_ADDR_INORDER) != 0)
  sc->nfe_flags |= NFE_CORRECT_MACADDR;
 nfe_get_macaddr(sc, sc->eaddr);



 dma_addr_max = BUS_SPACE_MAXADDR_32BIT;
 if ((sc->nfe_flags & NFE_40BIT_ADDR) != 0)
  dma_addr_max = NFE_DMA_MAXADDR;
 error = bus_dma_tag_create(
     bus_get_dma_tag(sc->nfe_dev),
     1, 0,
     dma_addr_max,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     BUS_SPACE_MAXSIZE_32BIT, 0,
     BUS_SPACE_MAXSIZE_32BIT,
     0,
     ((void*)0), ((void*)0),
     &sc->nfe_parent_tag);
 if (error)
  goto fail;

 ifp = sc->nfe_ifp = if_gethandle(IFT_ETHER);
 if (ifp == ((void*)0)) {
  device_printf(dev, "can not if_gethandle()\n");
  error = ENOSPC;
  goto fail;
 }




 if ((error = nfe_alloc_tx_ring(sc, &sc->txq)) != 0)
  goto fail;

 if ((error = nfe_alloc_rx_ring(sc, &sc->rxq)) != 0)
  goto fail;

 nfe_alloc_jrx_ring(sc, &sc->jrxq);

 nfe_sysctl_node(sc);

 if_setsoftc(ifp, sc);
 if_initname(ifp, device_get_name(dev), device_get_unit(dev));
 if_setflags(ifp, IFF_BROADCAST | IFF_SIMPLEX | IFF_MULTICAST);
 if_setioctlfn(ifp, nfe_ioctl);
 if_setstartfn(ifp, nfe_start);
 if_sethwassist(ifp, 0);
 if_setcapabilities(ifp, 0);
 if_setinitfn(ifp, nfe_init);
 if_setsendqlen(ifp, NFE_TX_RING_COUNT - 1);
 if_setsendqready(ifp);


 if (sc->nfe_flags & NFE_HW_CSUM) {
  if_setcapabilitiesbit(ifp, IFCAP_HWCSUM | IFCAP_TSO4, 0);
  if_sethwassistbits(ifp, NFE_CSUM_FEATURES | CSUM_TSO, 0);
 }
 if_setcapenable(ifp, if_getcapabilities(ifp));

 sc->nfe_framesize = if_getmtu(ifp) + NFE_RX_HEADERS;

 if_setcapabilitiesbit(ifp, IFCAP_VLAN_MTU, 0);
 if ((sc->nfe_flags & NFE_HW_VLAN) != 0) {
  if_setcapabilitiesbit(ifp, IFCAP_VLAN_HWTAGGING, 0);
  if ((if_getcapabilities(ifp) & IFCAP_HWCSUM) != 0)
   if_setcapabilitiesbit(ifp,
       (IFCAP_VLAN_HWCSUM | IFCAP_VLAN_HWTSO), 0);
 }

 if (pci_find_cap(dev, PCIY_PMG, &reg) == 0)
  if_setcapabilitiesbit(ifp, IFCAP_WOL_MAGIC, 0);
 if_setcapenable(ifp, if_getcapabilities(ifp));






 if_setifheaderlen(ifp, sizeof(struct ether_vlan_header));






 phyloc = MII_PHY_ANY;
 if (sc->nfe_devid == 156 ||
     sc->nfe_devid == 155 ||
     sc->nfe_devid == 154 ||
     sc->nfe_devid == 153) {
  if (nfe_detect_msik9(sc) != 0)
   phyloc = 0;
 }
 error = mii_attach(dev, &sc->nfe_miibus, ifp,
     (ifm_change_cb_t)nfe_ifmedia_upd, (ifm_stat_cb_t)nfe_ifmedia_sts,
     BMSR_DEFCAPMASK, phyloc, MII_OFFSET_ANY, MIIF_DOPAUSE);
 if (error != 0) {
  device_printf(dev, "attaching PHYs failed\n");
  goto fail;
 }
 ether_ifattach(ifp, sc->eaddr);

 TASK_INIT(&sc->nfe_int_task, 0, nfe_int_task, sc);
 sc->nfe_tq = taskqueue_create_fast("nfe_taskq", M_WAITOK,
     taskqueue_thread_enqueue, &sc->nfe_tq);
 taskqueue_start_threads(&sc->nfe_tq, 1, PI_NET, "%s taskq",
     device_get_nameunit(sc->nfe_dev));
 error = 0;
 if (sc->nfe_msi == 0 && sc->nfe_msix == 0) {
  error = bus_setup_intr(dev, sc->nfe_irq[0],
      INTR_TYPE_NET | INTR_MPSAFE, nfe_intr, ((void*)0), sc,
      &sc->nfe_intrhand[0]);
 } else {
  for (i = 0; i < NFE_MSI_MESSAGES; i++) {
   error = bus_setup_intr(dev, sc->nfe_irq[i],
       INTR_TYPE_NET | INTR_MPSAFE, nfe_intr, ((void*)0), sc,
       &sc->nfe_intrhand[i]);
   if (error != 0)
    break;
  }
 }
 if (error) {
  device_printf(dev, "couldn't set up irq\n");
  taskqueue_free(sc->nfe_tq);
  sc->nfe_tq = ((void*)0);
  ether_ifdetach(ifp);
  goto fail;
 }

fail:
 if (error)
  nfe_detach(dev);

 return (error);
}
