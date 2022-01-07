
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct vr_type {int vr_quirks; } ;
struct vr_softc {int vr_quirks; scalar_t__ vr_revid; int vr_res_id; int vr_intrhand; int * vr_irq; int vr_miibus; void* vr_txthresh; int vr_inttask; struct ifnet* vr_ifp; int * vr_res; int vr_res_type; int vr_mtx; int vr_stat_callout; int vr_dev; } ;
struct TYPE_3__ {scalar_t__ ifq_maxlen; } ;
struct ifnet {int if_flags; int if_capabilities; int if_capenable; int if_hdrlen; int if_hwassist; TYPE_1__ if_snd; int if_init; int if_start; int if_ioctl; struct vr_softc* if_softc; } ;
struct ether_vlan_header {int dummy; } ;
typedef int device_t ;


 int BMSR_DEFCAPMASK ;
 int CSR_READ_1 (struct vr_softc*,scalar_t__) ;
 int CSR_WRITE_2 (struct vr_softc*,int ,int) ;
 int CTLFLAG_RW ;
 int CTLTYPE_INT ;
 int DELAY (int) ;
 int ENOSPC ;
 int ENXIO ;
 int ETHER_ADDR_LEN ;
 int IFCAP_HWCSUM ;
 int IFCAP_POLLING ;
 int IFCAP_VLAN_MTU ;
 int IFCAP_WOL_MAGIC ;
 int IFCAP_WOL_UCAST ;
 int IFF_BROADCAST ;
 int IFF_MULTICAST ;
 int IFF_SIMPLEX ;
 int IFQ_SET_MAXLEN (TYPE_1__*,scalar_t__) ;
 int IFQ_SET_READY (TYPE_1__*) ;
 int IFT_ETHER ;
 int INTR_MPSAFE ;
 int INTR_TYPE_NET ;
 int KASSERT (int ,char*) ;
 int MIIF_DOPAUSE ;
 int MII_OFFSET_ANY ;
 int MTX_DEF ;
 int MTX_NETWORK_LOCK ;
 int OID_AUTO ;
 int PCIR_BAR (int ) ;
 int PCIY_PMG ;
 scalar_t__ REV_ID_VT6102_A ;
 scalar_t__ REV_ID_VT6105M_A0 ;
 scalar_t__ REV_ID_VT6105_A0 ;
 scalar_t__ REV_ID_VT6105_LOM ;
 scalar_t__ REV_ID_VT6107_A1 ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYSCTL_ADD_PROC (int ,int ,int ,char*,int,struct vr_softc*,int ,int ,char*,char*) ;
 int SYSCTL_CHILDREN (int ) ;
 int SYS_RES_IOPORT ;
 int SYS_RES_IRQ ;
 int TASK_INIT (int *,int ,int ,struct vr_softc*) ;
 int VR_CLRBIT (struct vr_softc*,int ,int) ;
 int VR_CSUM_FEATURES ;
 scalar_t__ VR_EECSR ;
 int VR_EECSR_LOAD ;
 int VR_IMR ;
 int VR_ISR ;
 int VR_MIICMD ;
 int VR_MIICMD_AUTOPOLL ;
 int VR_MII_IMR ;
 int VR_MODE2_MODE10T ;
 int VR_MODE2_MRDPL ;
 int VR_MODE2_PCEROPT ;
 int VR_MODE3_MIION ;
 scalar_t__ VR_PAR0 ;
 int VR_PCI_MODE2 ;
 int VR_PCI_MODE3 ;
 scalar_t__ VR_PHYADDR ;
 int VR_PHYADDR_MASK ;
 int VR_Q_CSUM ;
 int VR_SETBIT (struct vr_softc*,scalar_t__,int) ;
 int VR_STICKHW ;
 int VR_STICKHW_DS0 ;
 int VR_STICKHW_DS1 ;
 int VR_TIMEOUT ;
 void* VR_TXTHRESH_MAX ;
 void* VR_TXTHRESH_MIN ;
 scalar_t__ VR_TX_RING_CNT ;
 void* bus_alloc_resource_any (int ,int ,int*,int) ;
 int bus_setup_intr (int ,int *,int,int ,int *,struct vr_softc*,int *) ;
 int callout_init_mtx (int *,int *,int ) ;
 int device_get_name (int ) ;
 int device_get_nameunit (int ) ;
 struct vr_softc* device_get_softc (int ) ;
 int device_get_sysctl_ctx (int ) ;
 int device_get_sysctl_tree (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*,...) ;
 int ether_ifattach (struct ifnet*,int*) ;
 int ether_ifdetach (struct ifnet*) ;
 struct ifnet* if_alloc (int ) ;
 int if_initname (struct ifnet*,int ,int ) ;
 int mii_attach (int ,int *,struct ifnet*,int ,int ,int ,int,int ,int ) ;
 int mtx_init (int *,int ,int ,int ) ;
 int pci_enable_busmaster (int ) ;
 scalar_t__ pci_find_cap (int ,int ,int*) ;
 scalar_t__ pci_get_revid (int ) ;
 int pci_read_config (int ,int ,int) ;
 int pci_write_config (int ,int ,int,int) ;
 int vr_detach (int ) ;
 scalar_t__ vr_dma_alloc (struct vr_softc*) ;
 int vr_ifmedia_sts ;
 int vr_ifmedia_upd ;
 int vr_init ;
 int vr_int_task ;
 int vr_intr ;
 int vr_ioctl ;
 struct vr_type* vr_match (int ) ;
 int vr_reset (struct vr_softc*) ;
 int vr_start ;
 int vr_sysctl_stats ;

__attribute__((used)) static int
vr_attach(device_t dev)
{
 struct vr_softc *sc;
 struct ifnet *ifp;
 const struct vr_type *t;
 uint8_t eaddr[ETHER_ADDR_LEN];
 int error, rid;
 int i, phy, pmc;

 sc = device_get_softc(dev);
 sc->vr_dev = dev;
 t = vr_match(dev);
 KASSERT(t != ((void*)0), ("Lost if_vr device match"));
 sc->vr_quirks = t->vr_quirks;
 device_printf(dev, "Quirks: 0x%x\n", sc->vr_quirks);

 mtx_init(&sc->vr_mtx, device_get_nameunit(dev), MTX_NETWORK_LOCK,
     MTX_DEF);
 callout_init_mtx(&sc->vr_stat_callout, &sc->vr_mtx, 0);
 SYSCTL_ADD_PROC(device_get_sysctl_ctx(dev),
     SYSCTL_CHILDREN(device_get_sysctl_tree(dev)),
     OID_AUTO, "stats", CTLTYPE_INT | CTLFLAG_RW, sc, 0,
     vr_sysctl_stats, "I", "Statistics");

 error = 0;




 pci_enable_busmaster(dev);
 sc->vr_revid = pci_get_revid(dev);
 device_printf(dev, "Revision: 0x%x\n", sc->vr_revid);

 sc->vr_res_id = PCIR_BAR(0);
 sc->vr_res_type = SYS_RES_IOPORT;
 sc->vr_res = bus_alloc_resource_any(dev, sc->vr_res_type,
     &sc->vr_res_id, RF_ACTIVE);
 if (sc->vr_res == ((void*)0)) {
  device_printf(dev, "couldn't map ports\n");
  error = ENXIO;
  goto fail;
 }


 rid = 0;
 sc->vr_irq = bus_alloc_resource_any(dev, SYS_RES_IRQ, &rid,
     RF_SHAREABLE | RF_ACTIVE);

 if (sc->vr_irq == ((void*)0)) {
  device_printf(dev, "couldn't map interrupt\n");
  error = ENXIO;
  goto fail;
 }


 ifp = sc->vr_ifp = if_alloc(IFT_ETHER);
 if (ifp == ((void*)0)) {
  device_printf(dev, "couldn't allocate ifnet structure\n");
  error = ENOSPC;
  goto fail;
 }
 ifp->if_softc = sc;
 if_initname(ifp, device_get_name(dev), device_get_unit(dev));
 ifp->if_flags = IFF_BROADCAST | IFF_SIMPLEX | IFF_MULTICAST;
 ifp->if_ioctl = vr_ioctl;
 ifp->if_start = vr_start;
 ifp->if_init = vr_init;
 IFQ_SET_MAXLEN(&ifp->if_snd, VR_TX_RING_CNT - 1);
 ifp->if_snd.ifq_maxlen = VR_TX_RING_CNT - 1;
 IFQ_SET_READY(&ifp->if_snd);

 TASK_INIT(&sc->vr_inttask, 0, vr_int_task, sc);


 sc->vr_txthresh = VR_TXTHRESH_MIN;
 if (sc->vr_revid < REV_ID_VT6105_A0) {






  sc->vr_txthresh = VR_TXTHRESH_MAX;
 }
 if ((sc->vr_quirks & VR_Q_CSUM) != 0) {
  ifp->if_hwassist = VR_CSUM_FEATURES;
  ifp->if_capabilities |= IFCAP_HWCSUM;




  sc->vr_txthresh = VR_TXTHRESH_MAX;
 }

 if (sc->vr_revid >= REV_ID_VT6102_A &&
     pci_find_cap(dev, PCIY_PMG, &pmc) == 0)
  ifp->if_capabilities |= IFCAP_WOL_UCAST | IFCAP_WOL_MAGIC;


 ifp->if_capabilities |= IFCAP_VLAN_MTU;
 ifp->if_capenable = ifp->if_capabilities;
 if (pci_find_cap(dev, PCIY_PMG, &pmc) == 0)
  VR_CLRBIT(sc, VR_STICKHW, (VR_STICKHW_DS0|VR_STICKHW_DS1));
 VR_SETBIT(sc, VR_EECSR, VR_EECSR_LOAD);
 for (i = VR_TIMEOUT; i > 0; i--) {
  DELAY(1);
  if ((CSR_READ_1(sc, VR_EECSR) & VR_EECSR_LOAD) == 0)
   break;
 }
 if (i == 0)
  device_printf(dev, "Reloading EEPROM timeout!\n");
 for (i = 0; i < ETHER_ADDR_LEN; i++)
  eaddr[i] = CSR_READ_1(sc, VR_PAR0 + i);


 vr_reset(sc);

 CSR_WRITE_2(sc, VR_ISR, 0xFFFF);
 CSR_WRITE_2(sc, VR_IMR, 0);
 if (sc->vr_revid >= REV_ID_VT6102_A)
  CSR_WRITE_2(sc, VR_MII_IMR, 0);

 if (sc->vr_revid < REV_ID_VT6102_A) {
  pci_write_config(dev, VR_PCI_MODE2,
      pci_read_config(dev, VR_PCI_MODE2, 1) |
      VR_MODE2_MODE10T, 1);
 } else {

  pci_write_config(dev, VR_PCI_MODE2,
      pci_read_config(dev, VR_PCI_MODE2, 1) |
      VR_MODE2_PCEROPT, 1);

  pci_write_config(dev, VR_PCI_MODE3,
      pci_read_config(dev, VR_PCI_MODE3, 1) |
      VR_MODE3_MIION, 1);
  if (sc->vr_revid >= REV_ID_VT6105_LOM &&
      sc->vr_revid < REV_ID_VT6105M_A0)
   pci_write_config(dev, VR_PCI_MODE2,
       pci_read_config(dev, VR_PCI_MODE2, 1) |
       VR_MODE2_MODE10T, 1);

  if (sc->vr_revid >= REV_ID_VT6107_A1 &&
      sc->vr_revid < REV_ID_VT6105M_A0)
   pci_write_config(dev, VR_PCI_MODE2,
       pci_read_config(dev, VR_PCI_MODE2, 1) |
       VR_MODE2_MRDPL, 1);
 }

 VR_CLRBIT(sc, VR_MIICMD, VR_MIICMD_AUTOPOLL);

 if (vr_dma_alloc(sc) != 0) {
  error = ENXIO;
  goto fail;
 }


 if (sc->vr_revid >= REV_ID_VT6105_A0)
  phy = 1;
 else
  phy = CSR_READ_1(sc, VR_PHYADDR) & VR_PHYADDR_MASK;
 error = mii_attach(dev, &sc->vr_miibus, ifp, vr_ifmedia_upd,
     vr_ifmedia_sts, BMSR_DEFCAPMASK, phy, MII_OFFSET_ANY,
     sc->vr_revid >= REV_ID_VT6102_A ? MIIF_DOPAUSE : 0);
 if (error != 0) {
  device_printf(dev, "attaching PHYs failed\n");
  goto fail;
 }


 ether_ifattach(ifp, eaddr);





 ifp->if_hdrlen = sizeof(struct ether_vlan_header);


 error = bus_setup_intr(dev, sc->vr_irq, INTR_TYPE_NET | INTR_MPSAFE,
     vr_intr, ((void*)0), sc, &sc->vr_intrhand);

 if (error) {
  device_printf(dev, "couldn't set up irq\n");
  ether_ifdetach(ifp);
  goto fail;
 }

fail:
 if (error)
  vr_detach(dev);

 return (error);
}
