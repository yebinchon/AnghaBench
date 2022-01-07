
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef void* uint32_t ;
typedef int uint16_t ;
struct stge_softc {scalar_t__ sc_spec; int sc_rev; int sc_usefiber; int sc_led; int sc_stge1023; int sc_PhyCtrl; int sc_txthresh; struct ifnet* sc_ifp; int sc_dev; int sc_ih; int * sc_res; int sc_DMACtrl; int sc_miibus; void* sc_rxint_dmawait; void* sc_rxint_nframe; int sc_link_task; int sc_mtx; int sc_tick_ch; int sc_mii_mtx; } ;
struct TYPE_3__ {scalar_t__ ifq_drv_maxlen; } ;
struct ifnet {int if_flags; int if_capabilities; int if_capenable; int if_hdrlen; scalar_t__ if_hwassist; TYPE_1__ if_snd; int if_init; int if_start; int if_ioctl; struct stge_softc* if_softc; } ;
struct ether_vlan_header {int dummy; } ;
typedef int enaddr ;
typedef int device_t ;


 int AC_PhyMedia ;
 int BMSR_DEFCAPMASK ;
 int CSR_READ_1 (struct stge_softc*,int ) ;
 int CSR_READ_2 (struct stge_softc*,int ) ;
 int CSR_READ_4 (struct stge_softc*,int ) ;
 int CTLFLAG_RW ;
 int CTLTYPE_INT ;
 scalar_t__ DEVICEID_SUNDANCETI_ST1023 ;
 int DMAC_MWIDisable ;
 int ENXIO ;
 int ETHER_ADDR_LEN ;
 int IFCAP_HWCSUM ;
 int IFCAP_POLLING ;
 int IFCAP_VLAN_HWCSUM ;
 int IFCAP_VLAN_HWTAGGING ;
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
 int MIIF_DOPAUSE ;
 int MIIF_MACPRIV0 ;
 int MII_OFFSET_ANY ;
 int MII_PHY_ANY ;
 int MTX_DEF ;
 int * MTX_NETWORK_LOCK ;
 int OID_AUTO ;
 int PCIM_CMD_MWRICEN ;
 int PCIR_BAR (int) ;
 int PCIR_COMMAND ;
 scalar_t__ PCI_BAR_IO (void*) ;
 int PC_PhyDuplexPolarity ;
 int PC_PhyLnkPolarity ;
 int STGE_AsicCtrl ;
 scalar_t__ STGE_CSUM_FEATURES ;
 scalar_t__ STGE_EEPROM_LEDMode ;
 scalar_t__ STGE_EEPROM_StationAddress0 ;
 int STGE_LOCK (struct stge_softc*) ;
 int STGE_PhyCtrl ;
 int STGE_RESET_FULL ;
 void* STGE_RXINT_DMAWAIT_DEFAULT ;
 void* STGE_RXINT_DMAWAIT_MAX ;
 void* STGE_RXINT_DMAWAIT_MIN ;
 void* STGE_RXINT_NFRAME_DEFAULT ;
 void* STGE_RXINT_NFRAME_MAX ;
 void* STGE_RXINT_NFRAME_MIN ;
 int STGE_StationAddress0 ;
 int STGE_StationAddress1 ;
 int STGE_StationAddress2 ;
 scalar_t__ STGE_TX_RING_CNT ;
 int STGE_UNLOCK (struct stge_softc*) ;
 int SYSCTL_ADD_PROC (int ,int ,int ,char*,int,void**,int ,int ,char*,char*) ;
 int SYSCTL_CHILDREN (int ) ;
 int TASK_INIT (int *,int ,int ,struct stge_softc*) ;
 int bcopy (int*,int*,int) ;
 int bus_alloc_resources (int ,scalar_t__,int *) ;
 int bus_setup_intr (int ,int ,int,int *,int ,struct stge_softc*,int *) ;
 int callout_init_mtx (int *,int *,int ) ;
 int device_get_name (int ) ;
 char* device_get_nameunit (int ) ;
 struct stge_softc* device_get_softc (int ) ;
 int device_get_sysctl_ctx (int ) ;
 int device_get_sysctl_tree (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*,...) ;
 int ether_ifattach (struct ifnet*,int*) ;
 int ether_ifdetach (struct ifnet*) ;
 struct ifnet* if_alloc (int ) ;
 int if_initname (struct ifnet*,int ,int ) ;
 int le16toh (int) ;
 int mii_attach (int ,int *,struct ifnet*,int ,int ,int ,int ,int ,int) ;
 int mtx_init (int *,char*,int *,int ) ;
 int pci_enable_busmaster (int ) ;
 scalar_t__ pci_get_device (int ) ;
 int pci_get_revid (int ) ;
 void* pci_read_config (int ,int ,int) ;
 int resource_int_value (int ,int ,char*,void**) ;
 int stge_detach (int ) ;
 int stge_dma_alloc (struct stge_softc*) ;
 int stge_init ;
 int stge_intr ;
 int stge_ioctl ;
 int stge_link_task ;
 int stge_mediachange ;
 int stge_mediastatus ;
 int stge_read_eeprom (struct stge_softc*,scalar_t__,int*) ;
 scalar_t__ stge_res_spec_io ;
 scalar_t__ stge_res_spec_mem ;
 int stge_reset (struct stge_softc*,int ) ;
 int stge_start ;
 int sysctl_hw_stge_rxint_dmawait ;
 int sysctl_hw_stge_rxint_nframe ;

__attribute__((used)) static int
stge_attach(device_t dev)
{
 struct stge_softc *sc;
 struct ifnet *ifp;
 uint8_t enaddr[ETHER_ADDR_LEN];
 int error, flags, i;
 uint16_t cmd;
 uint32_t val;

 error = 0;
 sc = device_get_softc(dev);
 sc->sc_dev = dev;

 mtx_init(&sc->sc_mtx, device_get_nameunit(dev), MTX_NETWORK_LOCK,
     MTX_DEF);
 mtx_init(&sc->sc_mii_mtx, "stge_mii_mutex", ((void*)0), MTX_DEF);
 callout_init_mtx(&sc->sc_tick_ch, &sc->sc_mtx, 0);
 TASK_INIT(&sc->sc_link_task, 0, stge_link_task, sc);




 pci_enable_busmaster(dev);
 cmd = pci_read_config(dev, PCIR_COMMAND, 2);
 val = pci_read_config(dev, PCIR_BAR(1), 4);
 if (PCI_BAR_IO(val))
  sc->sc_spec = stge_res_spec_mem;
 else {
  val = pci_read_config(dev, PCIR_BAR(0), 4);
  if (!PCI_BAR_IO(val)) {
   device_printf(sc->sc_dev, "couldn't locate IO BAR\n");
   error = ENXIO;
   goto fail;
  }
  sc->sc_spec = stge_res_spec_io;
 }
 error = bus_alloc_resources(dev, sc->sc_spec, sc->sc_res);
 if (error != 0) {
  device_printf(dev, "couldn't allocate %s resources\n",
      sc->sc_spec == stge_res_spec_mem ? "memory" : "I/O");
  goto fail;
 }
 sc->sc_rev = pci_get_revid(dev);

 SYSCTL_ADD_PROC(device_get_sysctl_ctx(dev),
     SYSCTL_CHILDREN(device_get_sysctl_tree(dev)), OID_AUTO,
     "rxint_nframe", CTLTYPE_INT|CTLFLAG_RW, &sc->sc_rxint_nframe, 0,
     sysctl_hw_stge_rxint_nframe, "I", "stge rx interrupt nframe");

 SYSCTL_ADD_PROC(device_get_sysctl_ctx(dev),
     SYSCTL_CHILDREN(device_get_sysctl_tree(dev)), OID_AUTO,
     "rxint_dmawait", CTLTYPE_INT|CTLFLAG_RW, &sc->sc_rxint_dmawait, 0,
     sysctl_hw_stge_rxint_dmawait, "I", "stge rx interrupt dmawait");


 sc->sc_rxint_nframe = STGE_RXINT_NFRAME_DEFAULT;
 error = resource_int_value(device_get_name(dev), device_get_unit(dev),
     "rxint_nframe", &sc->sc_rxint_nframe);
 if (error == 0) {
  if (sc->sc_rxint_nframe < STGE_RXINT_NFRAME_MIN ||
      sc->sc_rxint_nframe > STGE_RXINT_NFRAME_MAX) {
   device_printf(dev, "rxint_nframe value out of range; "
       "using default: %d\n", STGE_RXINT_NFRAME_DEFAULT);
   sc->sc_rxint_nframe = STGE_RXINT_NFRAME_DEFAULT;
  }
 }

 sc->sc_rxint_dmawait = STGE_RXINT_DMAWAIT_DEFAULT;
 error = resource_int_value(device_get_name(dev), device_get_unit(dev),
     "rxint_dmawait", &sc->sc_rxint_dmawait);
 if (error == 0) {
  if (sc->sc_rxint_dmawait < STGE_RXINT_DMAWAIT_MIN ||
      sc->sc_rxint_dmawait > STGE_RXINT_DMAWAIT_MAX) {
   device_printf(dev, "rxint_dmawait value out of range; "
       "using default: %d\n", STGE_RXINT_DMAWAIT_DEFAULT);
   sc->sc_rxint_dmawait = STGE_RXINT_DMAWAIT_DEFAULT;
  }
 }

 if ((error = stge_dma_alloc(sc)) != 0)
  goto fail;





 if (CSR_READ_4(sc, STGE_AsicCtrl) & AC_PhyMedia)
  sc->sc_usefiber = 1;
 else
  sc->sc_usefiber = 0;


 stge_read_eeprom(sc, STGE_EEPROM_LEDMode, &sc->sc_led);




 STGE_LOCK(sc);
 stge_reset(sc, STGE_RESET_FULL);
 STGE_UNLOCK(sc);
 if (pci_get_device(dev) != DEVICEID_SUNDANCETI_ST1023) {
  uint16_t v;

  v = CSR_READ_2(sc, STGE_StationAddress0);
  enaddr[0] = v & 0xff;
  enaddr[1] = v >> 8;
  v = CSR_READ_2(sc, STGE_StationAddress1);
  enaddr[2] = v & 0xff;
  enaddr[3] = v >> 8;
  v = CSR_READ_2(sc, STGE_StationAddress2);
  enaddr[4] = v & 0xff;
  enaddr[5] = v >> 8;
  sc->sc_stge1023 = 0;
 } else {
  uint16_t myaddr[ETHER_ADDR_LEN / 2];
  for (i = 0; i <ETHER_ADDR_LEN / 2; i++) {
   stge_read_eeprom(sc, STGE_EEPROM_StationAddress0 + i,
       &myaddr[i]);
   myaddr[i] = le16toh(myaddr[i]);
  }
  bcopy(myaddr, enaddr, sizeof(enaddr));
  sc->sc_stge1023 = 1;
 }

 ifp = sc->sc_ifp = if_alloc(IFT_ETHER);
 if (ifp == ((void*)0)) {
  device_printf(sc->sc_dev, "failed to if_alloc()\n");
  error = ENXIO;
  goto fail;
 }

 ifp->if_softc = sc;
 if_initname(ifp, device_get_name(dev), device_get_unit(dev));
 ifp->if_flags = IFF_BROADCAST | IFF_SIMPLEX | IFF_MULTICAST;
 ifp->if_ioctl = stge_ioctl;
 ifp->if_start = stge_start;
 ifp->if_init = stge_init;
 ifp->if_snd.ifq_drv_maxlen = STGE_TX_RING_CNT - 1;
 IFQ_SET_MAXLEN(&ifp->if_snd, ifp->if_snd.ifq_drv_maxlen);
 IFQ_SET_READY(&ifp->if_snd);

 if (sc->sc_rev >= 0x0c) {
  ifp->if_hwassist = STGE_CSUM_FEATURES;
  ifp->if_capabilities = IFCAP_HWCSUM;
 } else {
  ifp->if_hwassist = 0;
  ifp->if_capabilities = 0;
 }
 ifp->if_capabilities |= IFCAP_WOL_MAGIC;
 ifp->if_capenable = ifp->if_capabilities;




 sc->sc_PhyCtrl = CSR_READ_1(sc, STGE_PhyCtrl) &
     (PC_PhyDuplexPolarity | PC_PhyLnkPolarity);


 flags = MIIF_DOPAUSE;
 if (sc->sc_rev >= 0x40 && sc->sc_rev <= 0x4e)
  flags |= MIIF_MACPRIV0;
 error = mii_attach(sc->sc_dev, &sc->sc_miibus, ifp, stge_mediachange,
     stge_mediastatus, BMSR_DEFCAPMASK, MII_PHY_ANY, MII_OFFSET_ANY,
     flags);
 if (error != 0) {
  device_printf(sc->sc_dev, "attaching PHYs failed\n");
  goto fail;
 }

 ether_ifattach(ifp, enaddr);


 ifp->if_capabilities |= IFCAP_VLAN_MTU | IFCAP_VLAN_HWTAGGING;
 if (sc->sc_rev >= 0x0c)
  ifp->if_capabilities |= IFCAP_VLAN_HWCSUM;
 ifp->if_capenable = ifp->if_capabilities;
 ifp->if_hdrlen = sizeof(struct ether_vlan_header);







 sc->sc_txthresh = 0x0fff;




 sc->sc_DMACtrl = 0;
 if ((cmd & PCIM_CMD_MWRICEN) == 0)
  sc->sc_DMACtrl |= DMAC_MWIDisable;




 error = bus_setup_intr(dev, sc->sc_res[1], INTR_TYPE_NET | INTR_MPSAFE,
     ((void*)0), stge_intr, sc, &sc->sc_ih);
 if (error != 0) {
  ether_ifdetach(ifp);
  device_printf(sc->sc_dev, "couldn't set up IRQ\n");
  sc->sc_ifp = ((void*)0);
  goto fail;
 }

fail:
 if (error != 0)
  stge_detach(dev);

 return (error);
}
