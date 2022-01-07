
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct nge_softc {scalar_t__ nge_res_type; int nge_res_id; int nge_intrhand; int * nge_irq; int nge_miibus; int nge_flags; int nge_dev; struct ifnet* nge_ifp; int * nge_res; int nge_mtx; int nge_stat_ch; } ;
struct TYPE_3__ {scalar_t__ ifq_drv_maxlen; } ;
struct ifnet {int if_flags; int if_capabilities; int if_capenable; int if_hdrlen; int if_hwassist; TYPE_1__ if_snd; int if_init; int if_start; int if_ioctl; struct nge_softc* if_softc; } ;
struct ether_vlan_header {int dummy; } ;
typedef int eaddr ;
typedef int device_t ;
typedef int caddr_t ;


 int BMSR_DEFCAPMASK ;
 int CSR_READ_4 (struct nge_softc*,int ) ;
 int CSR_WRITE_4 (struct nge_softc*,int ,int) ;
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
 int MII_OFFSET_ANY ;
 int MII_PHY_ANY ;
 int NGE_CFG ;
 int NGE_CFG_TBI_EN ;
 int NGE_CSUM_FEATURES ;
 int NGE_EE_NODEADDR ;
 int NGE_FLAG_TBI ;
 int NGE_GPIO ;
 int NGE_GPIO_GP1_OUTENB ;
 int NGE_GPIO_GP2_OUTENB ;
 int NGE_GPIO_GP3_IN ;
 int NGE_GPIO_GP3_OUTENB ;
 int NGE_GPIO_GP4_IN ;
 int NGE_GPIO_GP4_OUT ;
 int NGE_LOCK_DESTROY (struct nge_softc*) ;
 int NGE_LOCK_INIT (struct nge_softc*,int ) ;
 scalar_t__ NGE_TX_RING_CNT ;
 int PCIM_CMD_MWRICEN ;
 void* PCIR_BAR (int) ;
 int PCIR_COMMAND ;
 int PCIY_PMG ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 void* SYS_RES_IOPORT ;
 scalar_t__ SYS_RES_IRQ ;
 scalar_t__ SYS_RES_MEMORY ;
 int bcopy (int *,int *,int) ;
 void* bus_alloc_resource_any (int ,scalar_t__,int*,int) ;
 int bus_setup_intr (int ,int *,int,int *,int ,struct nge_softc*,int *) ;
 int callout_init_mtx (int *,int *,int ) ;
 int device_get_name (int ) ;
 int device_get_nameunit (int ) ;
 struct nge_softc* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*,...) ;
 int ether_ifattach (struct ifnet*,int *) ;
 struct ifnet* if_alloc (int ) ;
 int if_initname (struct ifnet*,int ,int ) ;
 int le16toh (int ) ;
 int mii_attach (int ,int *,struct ifnet*,int ,int ,int ,int ,int ,int ) ;
 int nge_detach (int ) ;
 scalar_t__ nge_dma_alloc (struct nge_softc*) ;
 int nge_init ;
 int nge_intr ;
 int nge_ioctl ;
 int nge_mediachange ;
 int nge_mediastatus ;
 int nge_read_eeprom (struct nge_softc*,int ,int ,int) ;
 int nge_reset (struct nge_softc*) ;
 int nge_start ;
 int nge_sysctl_node (struct nge_softc*) ;
 int pci_enable_busmaster (int ) ;
 scalar_t__ pci_find_cap (int ,int ,int*) ;
 int pci_read_config (int ,int ,int) ;
 int pci_write_config (int ,int ,int ,int) ;

__attribute__((used)) static int
nge_attach(device_t dev)
{
 uint8_t eaddr[ETHER_ADDR_LEN];
 uint16_t ea[ETHER_ADDR_LEN/2], ea_temp, reg;
 struct nge_softc *sc;
 struct ifnet *ifp;
 int error, i, rid;

 error = 0;
 sc = device_get_softc(dev);
 sc->nge_dev = dev;

 NGE_LOCK_INIT(sc, device_get_nameunit(dev));
 callout_init_mtx(&sc->nge_stat_ch, &sc->nge_mtx, 0);




 pci_enable_busmaster(dev);





 sc->nge_res_type = SYS_RES_MEMORY;
 sc->nge_res_id = PCIR_BAR(1);

 sc->nge_res = bus_alloc_resource_any(dev, sc->nge_res_type,
     &sc->nge_res_id, RF_ACTIVE);

 if (sc->nge_res == ((void*)0)) {
  if (sc->nge_res_type == SYS_RES_MEMORY) {
   sc->nge_res_type = SYS_RES_IOPORT;
   sc->nge_res_id = PCIR_BAR(0);
  } else {
   sc->nge_res_type = SYS_RES_MEMORY;
   sc->nge_res_id = PCIR_BAR(1);
  }
  sc->nge_res = bus_alloc_resource_any(dev, sc->nge_res_type,
      &sc->nge_res_id, RF_ACTIVE);
  if (sc->nge_res == ((void*)0)) {
   device_printf(dev, "couldn't allocate %s resources\n",
       sc->nge_res_type == SYS_RES_MEMORY ? "memory" :
       "I/O");
   NGE_LOCK_DESTROY(sc);
   return (ENXIO);
  }
 }


 rid = 0;
 sc->nge_irq = bus_alloc_resource_any(dev, SYS_RES_IRQ, &rid,
     RF_SHAREABLE | RF_ACTIVE);

 if (sc->nge_irq == ((void*)0)) {
  device_printf(dev, "couldn't map interrupt\n");
  error = ENXIO;
  goto fail;
 }


 reg = pci_read_config(dev, PCIR_COMMAND, 2);
 reg |= PCIM_CMD_MWRICEN;
 pci_write_config(dev, PCIR_COMMAND, reg, 2);


 nge_reset(sc);




 nge_read_eeprom(sc, (caddr_t)ea, NGE_EE_NODEADDR, 3);
 for (i = 0; i < ETHER_ADDR_LEN / 2; i++)
  ea[i] = le16toh(ea[i]);
 ea_temp = ea[0];
 ea[0] = ea[2];
 ea[2] = ea_temp;
 bcopy(ea, eaddr, sizeof(eaddr));

 if (nge_dma_alloc(sc) != 0) {
  error = ENXIO;
  goto fail;
 }

 nge_sysctl_node(sc);

 ifp = sc->nge_ifp = if_alloc(IFT_ETHER);
 if (ifp == ((void*)0)) {
  device_printf(dev, "can not allocate ifnet structure\n");
  error = ENOSPC;
  goto fail;
 }
 ifp->if_softc = sc;
 if_initname(ifp, device_get_name(dev), device_get_unit(dev));
 ifp->if_flags = IFF_BROADCAST | IFF_SIMPLEX | IFF_MULTICAST;
 ifp->if_ioctl = nge_ioctl;
 ifp->if_start = nge_start;
 ifp->if_init = nge_init;
 ifp->if_snd.ifq_drv_maxlen = NGE_TX_RING_CNT - 1;
 IFQ_SET_MAXLEN(&ifp->if_snd, ifp->if_snd.ifq_drv_maxlen);
 IFQ_SET_READY(&ifp->if_snd);
 ifp->if_hwassist = NGE_CSUM_FEATURES;
 ifp->if_capabilities = IFCAP_HWCSUM;





 if (pci_find_cap(sc->nge_dev, PCIY_PMG, &i) == 0)
  ifp->if_capabilities |= IFCAP_WOL;
 ifp->if_capenable = ifp->if_capabilities;

 if ((CSR_READ_4(sc, NGE_CFG) & NGE_CFG_TBI_EN) != 0) {
  sc->nge_flags |= NGE_FLAG_TBI;
  device_printf(dev, "Using TBI\n");

  CSR_WRITE_4(sc, NGE_GPIO, CSR_READ_4(sc, NGE_GPIO)
      | NGE_GPIO_GP4_OUT
      | NGE_GPIO_GP1_OUTENB | NGE_GPIO_GP2_OUTENB
      | NGE_GPIO_GP3_OUTENB
      | NGE_GPIO_GP3_IN | NGE_GPIO_GP4_IN);
 }




 error = mii_attach(dev, &sc->nge_miibus, ifp, nge_mediachange,
     nge_mediastatus, BMSR_DEFCAPMASK, MII_PHY_ANY, MII_OFFSET_ANY, 0);
 if (error != 0) {
  device_printf(dev, "attaching PHYs failed\n");
  goto fail;
 }




 ether_ifattach(ifp, eaddr);


 ifp->if_capabilities |= IFCAP_VLAN_MTU | IFCAP_VLAN_HWTAGGING;
 ifp->if_capabilities |= IFCAP_VLAN_HWCSUM;
 ifp->if_capenable = ifp->if_capabilities;
 ifp->if_hdrlen = sizeof(struct ether_vlan_header);




 error = bus_setup_intr(dev, sc->nge_irq, INTR_TYPE_NET | INTR_MPSAFE,
     ((void*)0), nge_intr, sc, &sc->nge_intrhand);
 if (error) {
  device_printf(dev, "couldn't set up irq\n");
  goto fail;
 }

fail:
 if (error != 0)
  nge_detach(dev);
 return (error);
}
