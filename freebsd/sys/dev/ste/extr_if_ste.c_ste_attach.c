
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct ste_softc {int ste_flags; int ste_res_id; int ste_intrhand; int * ste_irq; int ste_tx_thresh; int ste_miibus; struct ifnet* ste_ifp; int ste_mtx; int ste_callout; int * ste_res; int ste_res_type; int ste_dev; } ;
struct TYPE_3__ {scalar_t__ ifq_drv_maxlen; } ;
struct ifnet {int if_flags; int if_hdrlen; int if_capabilities; int if_capenable; TYPE_1__ if_snd; int if_init; int if_start; int if_ioctl; struct ste_softc* if_softc; } ;
struct ether_vlan_header {int dummy; } ;
typedef int device_t ;


 int BMSR_DEFCAPMASK ;
 scalar_t__ DL_DEVICEID_DL10050 ;
 scalar_t__ DL_VENDORID ;
 int ENOSPC ;
 int ENXIO ;
 int ETHER_ADDR_LEN ;
 int IFCAP_POLLING ;
 int IFCAP_VLAN_MTU ;
 int IFCAP_WOL_MAGIC ;
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
 int PCIY_PMG ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int STE_EEADDR_NODE0 ;
 int STE_FLAG_ONE_PHY ;
 int STE_TXSTART_THRESH ;
 scalar_t__ STE_TX_LIST_CNT ;
 scalar_t__ ST_DEVICEID_ST201_1 ;
 int SYS_RES_IOPORT ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 void* bus_alloc_resource_any (int ,int ,int*,int) ;
 int bus_setup_intr (int ,int *,int,int *,int ,struct ste_softc*,int *) ;
 int callout_init_mtx (int *,int *,int ) ;
 int device_get_name (int ) ;
 int device_get_nameunit (int ) ;
 struct ste_softc* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*) ;
 int ether_ifattach (struct ifnet*,int *) ;
 int ether_ifdetach (struct ifnet*) ;
 struct ifnet* if_alloc (int ) ;
 int if_initname (struct ifnet*,int ,int ) ;
 int mii_attach (int ,int *,struct ifnet*,int ,int ,int ,int,int ,int ) ;
 int mtx_init (int *,int ,int ,int ) ;
 int pci_enable_busmaster (int ) ;
 scalar_t__ pci_find_cap (int ,int ,int*) ;
 scalar_t__ pci_get_device (int ) ;
 int pci_get_revid (int ) ;
 scalar_t__ pci_get_vendor (int ) ;
 int resource_int_value (int ,int ,char*,int*) ;
 int ste_detach (int ) ;
 int ste_dma_alloc (struct ste_softc*) ;
 int ste_ifmedia_sts ;
 int ste_ifmedia_upd ;
 int ste_init ;
 int ste_intr ;
 int ste_ioctl ;
 scalar_t__ ste_read_eeprom (struct ste_softc*,int *,int ,int) ;
 int ste_reset (struct ste_softc*) ;
 int ste_start ;
 int ste_sysctl_node (struct ste_softc*) ;

__attribute__((used)) static int
ste_attach(device_t dev)
{
 struct ste_softc *sc;
 struct ifnet *ifp;
 uint16_t eaddr[ETHER_ADDR_LEN / 2];
 int error = 0, phy, pmc, prefer_iomap, rid;

 sc = device_get_softc(dev);
 sc->ste_dev = dev;






 if (pci_get_vendor(dev) == DL_VENDORID &&
     pci_get_device(dev) == DL_DEVICEID_DL10050 &&
     pci_get_revid(dev) == 0x12 )
  sc->ste_flags |= STE_FLAG_ONE_PHY;

 mtx_init(&sc->ste_mtx, device_get_nameunit(dev), MTX_NETWORK_LOCK,
     MTX_DEF);



 pci_enable_busmaster(dev);






 prefer_iomap = 0;
 if (pci_get_device(dev) == ST_DEVICEID_ST201_1)
  prefer_iomap = 1;
 else
  resource_int_value(device_get_name(sc->ste_dev),
      device_get_unit(sc->ste_dev), "prefer_iomap",
      &prefer_iomap);
 if (prefer_iomap == 0) {
  sc->ste_res_id = PCIR_BAR(1);
  sc->ste_res_type = SYS_RES_MEMORY;
  sc->ste_res = bus_alloc_resource_any(dev, sc->ste_res_type,
      &sc->ste_res_id, RF_ACTIVE);
 }
 if (prefer_iomap || sc->ste_res == ((void*)0)) {
  sc->ste_res_id = PCIR_BAR(0);
  sc->ste_res_type = SYS_RES_IOPORT;
  sc->ste_res = bus_alloc_resource_any(dev, sc->ste_res_type,
      &sc->ste_res_id, RF_ACTIVE);
 }
 if (sc->ste_res == ((void*)0)) {
  device_printf(dev, "couldn't map ports/memory\n");
  error = ENXIO;
  goto fail;
 }


 rid = 0;
 sc->ste_irq = bus_alloc_resource_any(dev, SYS_RES_IRQ, &rid,
     RF_SHAREABLE | RF_ACTIVE);

 if (sc->ste_irq == ((void*)0)) {
  device_printf(dev, "couldn't map interrupt\n");
  error = ENXIO;
  goto fail;
 }

 callout_init_mtx(&sc->ste_callout, &sc->ste_mtx, 0);


 ste_reset(sc);




 if (ste_read_eeprom(sc, eaddr, STE_EEADDR_NODE0, ETHER_ADDR_LEN / 2)) {
  device_printf(dev, "failed to read station address\n");
  error = ENXIO;
  goto fail;
 }
 ste_sysctl_node(sc);

 if ((error = ste_dma_alloc(sc)) != 0)
  goto fail;

 ifp = sc->ste_ifp = if_alloc(IFT_ETHER);
 if (ifp == ((void*)0)) {
  device_printf(dev, "can not if_alloc()\n");
  error = ENOSPC;
  goto fail;
 }


 phy = MII_PHY_ANY;
 if ((sc->ste_flags & STE_FLAG_ONE_PHY) != 0)
  phy = 0;
 error = mii_attach(dev, &sc->ste_miibus, ifp, ste_ifmedia_upd,
  ste_ifmedia_sts, BMSR_DEFCAPMASK, phy, MII_OFFSET_ANY, 0);
 if (error != 0) {
  device_printf(dev, "attaching PHYs failed\n");
  goto fail;
 }

 ifp->if_softc = sc;
 if_initname(ifp, device_get_name(dev), device_get_unit(dev));
 ifp->if_flags = IFF_BROADCAST | IFF_SIMPLEX | IFF_MULTICAST;
 ifp->if_ioctl = ste_ioctl;
 ifp->if_start = ste_start;
 ifp->if_init = ste_init;
 IFQ_SET_MAXLEN(&ifp->if_snd, STE_TX_LIST_CNT - 1);
 ifp->if_snd.ifq_drv_maxlen = STE_TX_LIST_CNT - 1;
 IFQ_SET_READY(&ifp->if_snd);

 sc->ste_tx_thresh = STE_TXSTART_THRESH;




 ether_ifattach(ifp, (uint8_t *)eaddr);




 ifp->if_hdrlen = sizeof(struct ether_vlan_header);
 ifp->if_capabilities |= IFCAP_VLAN_MTU;
 if (pci_find_cap(dev, PCIY_PMG, &pmc) == 0)
  ifp->if_capabilities |= IFCAP_WOL_MAGIC;
 ifp->if_capenable = ifp->if_capabilities;





 error = bus_setup_intr(dev, sc->ste_irq, INTR_TYPE_NET | INTR_MPSAFE,
     ((void*)0), ste_intr, sc, &sc->ste_intrhand);

 if (error) {
  device_printf(dev, "couldn't set up irq\n");
  ether_ifdetach(ifp);
  goto fail;
 }

fail:
 if (error)
  ste_detach(dev);

 return (error);
}
