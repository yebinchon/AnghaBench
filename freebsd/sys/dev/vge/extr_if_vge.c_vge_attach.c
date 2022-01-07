
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
struct vge_softc {int vge_flags; int vge_expcap; int vge_pmcap; int vge_phyaddr; int vge_intrhand; int * vge_irq; int vge_miibus; struct ifnet* vge_ifp; int * vge_res; int vge_mtx; int vge_watchdog; int vge_dev; } ;
struct TYPE_3__ {scalar_t__ ifq_drv_maxlen; } ;
struct ifnet {int if_flags; int if_capabilities; int if_capenable; int if_hdrlen; TYPE_1__ if_snd; int if_init; int if_hwassist; int if_start; int if_ioctl; struct vge_softc* if_softc; } ;
struct ether_vlan_header {int dummy; } ;
typedef int device_t ;
typedef int caddr_t ;


 int BMSR_DEFCAPMASK ;
 int CSR_CLRBIT_1 (struct vge_softc*,int ,int ) ;
 int CSR_READ_1 (struct vge_softc*,int ) ;
 int CSR_WRITE_1 (struct vge_softc*,int ,int) ;
 int DELAY (int) ;
 int ENOSPC ;
 int ENXIO ;
 int ETHER_ADDR_LEN ;
 int IFCAP_HWCSUM ;
 int IFCAP_POLLING ;
 int IFCAP_VLAN_HWCSUM ;
 int IFCAP_VLAN_HWTAGGING ;
 int IFCAP_VLAN_MTU ;
 int IFCAP_WOL ;
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
 int MTX_DEF ;
 int MTX_NETWORK_LOCK ;
 int PCIR_BAR (int) ;
 int PCIY_EXPRESS ;
 int PCIY_PMG ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int VGE_CHIPCFG0 ;
 int VGE_CHIPCFG0_PACPI ;
 int VGE_CSUM_FEATURES ;
 int VGE_EECSR ;
 int VGE_EECSR_RELOAD ;
 int VGE_EE_EADDR ;
 int VGE_FLAG_JUMBO ;
 int VGE_FLAG_MSI ;
 int VGE_FLAG_PCIE ;
 int VGE_FLAG_PMCAP ;
 int VGE_MIICFG ;
 int VGE_MIICFG_PHYADDR ;
 int VGE_TIMEOUT ;
 scalar_t__ VGE_TX_DESC_CNT ;
 void* bus_alloc_resource_any (int ,int ,int*,int) ;
 int bus_setup_intr (int ,int *,int,int *,int ,struct vge_softc*,int *) ;
 int callout_init_mtx (int *,int *,int ) ;
 int device_get_name (int ) ;
 int device_get_nameunit (int ) ;
 struct vge_softc* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*,...) ;
 int ether_ifattach (struct ifnet*,int *) ;
 int ether_ifdetach (struct ifnet*) ;
 struct ifnet* if_alloc (int ) ;
 int if_initname (struct ifnet*,int ,int ) ;
 int mii_attach (int ,int *,struct ifnet*,int ,int ,int ,int,int ,int ) ;
 scalar_t__ msi_disable ;
 int mtx_init (int *,int ,int ,int ) ;
 scalar_t__ pci_alloc_msi (int ,int*) ;
 int pci_enable_busmaster (int ) ;
 scalar_t__ pci_find_cap (int ,int ,int*) ;
 int pci_msi_count (int ) ;
 int pci_release_msi (int ) ;
 int vge_clrwol (struct vge_softc*) ;
 int vge_detach (int ) ;
 int vge_dma_alloc (struct vge_softc*) ;
 int vge_ifmedia_sts ;
 int vge_ifmedia_upd ;
 int vge_init ;
 int vge_intr ;
 int vge_ioctl ;
 int vge_miipoll_start (struct vge_softc*) ;
 int vge_read_eeprom (struct vge_softc*,int ,int ,int,int ) ;
 int vge_reset (struct vge_softc*) ;
 int vge_start ;
 int vge_sysctl_node (struct vge_softc*) ;

__attribute__((used)) static int
vge_attach(device_t dev)
{
 u_char eaddr[ETHER_ADDR_LEN];
 struct vge_softc *sc;
 struct ifnet *ifp;
 int error = 0, cap, i, msic, rid;

 sc = device_get_softc(dev);
 sc->vge_dev = dev;

 mtx_init(&sc->vge_mtx, device_get_nameunit(dev), MTX_NETWORK_LOCK,
     MTX_DEF);
 callout_init_mtx(&sc->vge_watchdog, &sc->vge_mtx, 0);




 pci_enable_busmaster(dev);

 rid = PCIR_BAR(1);
 sc->vge_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid,
     RF_ACTIVE);

 if (sc->vge_res == ((void*)0)) {
  device_printf(dev, "couldn't map ports/memory\n");
  error = ENXIO;
  goto fail;
 }

 if (pci_find_cap(dev, PCIY_EXPRESS, &cap) == 0) {
  sc->vge_flags |= VGE_FLAG_PCIE;
  sc->vge_expcap = cap;
 } else
  sc->vge_flags |= VGE_FLAG_JUMBO;
 if (pci_find_cap(dev, PCIY_PMG, &cap) == 0) {
  sc->vge_flags |= VGE_FLAG_PMCAP;
  sc->vge_pmcap = cap;
 }
 rid = 0;
 msic = pci_msi_count(dev);
 if (msi_disable == 0 && msic > 0) {
  msic = 1;
  if (pci_alloc_msi(dev, &msic) == 0) {
   if (msic == 1) {
    sc->vge_flags |= VGE_FLAG_MSI;
    device_printf(dev, "Using %d MSI message\n",
        msic);
    rid = 1;
   } else
    pci_release_msi(dev);
  }
 }


 sc->vge_irq = bus_alloc_resource_any(dev, SYS_RES_IRQ, &rid,
     ((sc->vge_flags & VGE_FLAG_MSI) ? 0 : RF_SHAREABLE) | RF_ACTIVE);
 if (sc->vge_irq == ((void*)0)) {
  device_printf(dev, "couldn't map interrupt\n");
  error = ENXIO;
  goto fail;
 }


 vge_reset(sc);

 CSR_WRITE_1(sc, VGE_EECSR, VGE_EECSR_RELOAD);
 for (i = 0; i < VGE_TIMEOUT; i++) {
  DELAY(5);
  if ((CSR_READ_1(sc, VGE_EECSR) & VGE_EECSR_RELOAD) == 0)
   break;
 }
 if (i == VGE_TIMEOUT)
  device_printf(dev, "EEPROM reload timed out\n");





 CSR_CLRBIT_1(sc, VGE_CHIPCFG0, VGE_CHIPCFG0_PACPI);




 vge_read_eeprom(sc, (caddr_t)eaddr, VGE_EE_EADDR, 3, 0);






 if ((sc->vge_flags & VGE_FLAG_PCIE) != 0)
  sc->vge_phyaddr = 1;
 else
  sc->vge_phyaddr = CSR_READ_1(sc, VGE_MIICFG) &
      VGE_MIICFG_PHYADDR;

 vge_clrwol(sc);
 vge_sysctl_node(sc);
 error = vge_dma_alloc(sc);
 if (error)
  goto fail;

 ifp = sc->vge_ifp = if_alloc(IFT_ETHER);
 if (ifp == ((void*)0)) {
  device_printf(dev, "can not if_alloc()\n");
  error = ENOSPC;
  goto fail;
 }

 vge_miipoll_start(sc);

 error = mii_attach(dev, &sc->vge_miibus, ifp, vge_ifmedia_upd,
     vge_ifmedia_sts, BMSR_DEFCAPMASK, sc->vge_phyaddr, MII_OFFSET_ANY,
     MIIF_DOPAUSE);
 if (error != 0) {
  device_printf(dev, "attaching PHYs failed\n");
  goto fail;
 }

 ifp->if_softc = sc;
 if_initname(ifp, device_get_name(dev), device_get_unit(dev));
 ifp->if_flags = IFF_BROADCAST | IFF_SIMPLEX | IFF_MULTICAST;
 ifp->if_ioctl = vge_ioctl;
 ifp->if_capabilities = IFCAP_VLAN_MTU;
 ifp->if_start = vge_start;
 ifp->if_hwassist = VGE_CSUM_FEATURES;
 ifp->if_capabilities |= IFCAP_HWCSUM | IFCAP_VLAN_HWCSUM |
     IFCAP_VLAN_HWTAGGING;
 if ((sc->vge_flags & VGE_FLAG_PMCAP) != 0)
  ifp->if_capabilities |= IFCAP_WOL;
 ifp->if_capenable = ifp->if_capabilities;



 ifp->if_init = vge_init;
 IFQ_SET_MAXLEN(&ifp->if_snd, VGE_TX_DESC_CNT - 1);
 ifp->if_snd.ifq_drv_maxlen = VGE_TX_DESC_CNT - 1;
 IFQ_SET_READY(&ifp->if_snd);




 ether_ifattach(ifp, eaddr);


 ifp->if_hdrlen = sizeof(struct ether_vlan_header);


 error = bus_setup_intr(dev, sc->vge_irq, INTR_TYPE_NET|INTR_MPSAFE,
     ((void*)0), vge_intr, sc, &sc->vge_intrhand);

 if (error) {
  device_printf(dev, "couldn't set up irq\n");
  ether_ifdetach(ifp);
  goto fail;
 }

fail:
 if (error)
  vge_detach(dev);

 return (error);
}
