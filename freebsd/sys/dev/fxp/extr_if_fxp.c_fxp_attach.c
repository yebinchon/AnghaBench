
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
typedef int u_char ;
struct fxp_tx {int tx_map; struct fxp_cb_tx* tx_cb; } ;
struct fxp_stats {int dummy; } ;
struct TYPE_3__ {struct fxp_rx* rx_list; int * rx_tail; int rx_head; struct fxp_cb_tx* cbl_list; struct fxp_tx* tx_list; int cbl_addr; } ;
struct fxp_softc {scalar_t__ fxp_spec; scalar_t__ revision; int* eeprom; int flags; int eeprom_size; int rfa_size; int maxtxseg; int maxsegsize; void* ifp; int ih; int * fxp_res; int miibus; int sc_media; int fxp_rxmtag; TYPE_1__ fxp_desc; int spare_map; int fxp_txmtag; int mcs_addr; struct fxp_cb_tx* mcsp; int mcs_map; int mcs_tag; int cbl_map; int cbl_tag; int stats_addr; struct fxp_cb_tx* fxp_stats; int fxp_smap; int fxp_stag; int tx_cmd; TYPE_2__* ident; int dev; int sc_mtx; int stat_ch; } ;
struct fxp_rx {int rx_map; } ;
struct fxp_rfa {int dummy; } ;
struct fxp_cb_tx {int dummy; } ;
struct fxp_cb_mcs {int dummy; } ;
struct ether_vlan_header {int dummy; } ;
typedef int ifm_stat_cb_t ;
typedef int ifm_change_cb_t ;
typedef void* if_t ;
typedef int device_t ;
struct TYPE_4__ {int ich; int device; } ;


 int BMSR_DEFCAPMASK ;
 int BUS_DMA_COHERENT ;
 int BUS_DMA_NOWAIT ;
 int BUS_DMA_ZERO ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int CSR_READ_1 (struct fxp_softc*,int ) ;
 int CSR_WRITE_1 (struct fxp_softc*,int ,int ) ;
 int CSR_WRITE_4 (struct fxp_softc*,int ,int ) ;
 int CSUM_TSO ;
 int DELAY (int) ;
 int ENOMEM ;
 int ENOSPC ;
 int ENXIO ;
 int ETHER_ADDR_LEN ;
 int FXP_CB_COMMAND_IPCBXMIT ;
 int FXP_CB_COMMAND_XMIT ;
 int FXP_CSR_PMDR ;
 int FXP_CSR_PORT ;
 int FXP_CSR_SCB_INTRCNTL ;
 int FXP_CSUM_FEATURES ;
 size_t FXP_EEPROM_MAP_CNTR ;
 size_t FXP_EEPROM_MAP_COMPAT ;
 size_t FXP_EEPROM_MAP_IA0 ;
 size_t FXP_EEPROM_MAP_IA1 ;
 size_t FXP_EEPROM_MAP_IA2 ;
 size_t FXP_EEPROM_MAP_ID ;
 size_t FXP_EEPROM_MAP_PRI_PHY ;
 int FXP_FLAG_82559_RXCSUM ;
 int FXP_FLAG_CU_RESUME_BUG ;
 int FXP_FLAG_EXT_RFA ;
 int FXP_FLAG_EXT_TXCB ;
 int FXP_FLAG_LONG_PKT_EN ;
 int FXP_FLAG_MWI_ENABLE ;
 int FXP_FLAG_NO_UCODE ;
 int FXP_FLAG_RXBUG ;
 int FXP_FLAG_SAVE_BAD ;
 int FXP_FLAG_SERIAL_MEDIA ;
 int FXP_FLAG_WOLCAP ;
 int FXP_LOCK (struct fxp_softc*) ;
 int FXP_NRFABUFS ;
 int FXP_NTXCB ;
 int FXP_NTXSEG ;
 int FXP_PHY_DEVICE_MASK ;
 int FXP_PHY_SERIAL_ONLY ;
 int FXP_PORT_SELECTIVE_RESET ;
 int FXP_PORT_SOFTWARE_RESET ;
 scalar_t__ FXP_REV_82550 ;
 scalar_t__ FXP_REV_82550_C ;
 scalar_t__ FXP_REV_82551_10 ;
 scalar_t__ FXP_REV_82551_E ;
 scalar_t__ FXP_REV_82551_F ;
 scalar_t__ FXP_REV_82557 ;
 scalar_t__ FXP_REV_82558_A4 ;
 scalar_t__ FXP_REV_82559S_A ;
 scalar_t__ FXP_REV_82559_A0 ;
 int FXP_RFAX_LEN ;
 int FXP_SCB_INTR_DISABLE ;
 int FXP_TSO_SEGSIZE ;
 int FXP_TXCB_SZ ;
 int FXP_UNLOCK (struct fxp_softc*) ;
 int Giant ;
 int IFCAP_HWCSUM ;
 int IFCAP_POLLING ;
 int IFCAP_RXCSUM ;
 int IFCAP_TSO4 ;
 int IFCAP_VLAN_HWCSUM ;
 int IFCAP_VLAN_HWTAGGING ;
 int IFCAP_VLAN_HWTSO ;
 int IFCAP_VLAN_MTU ;
 int IFCAP_WOL_MAGIC ;
 int IFF_BROADCAST ;
 int IFF_MULTICAST ;
 int IFF_SIMPLEX ;
 int IFM_ETHER ;
 int IFM_MANUAL ;
 int IFT_ETHER ;
 int INTR_MPSAFE ;
 int INTR_TYPE_NET ;
 int MCLBYTES ;
 int MIIF_DOPAUSE ;
 int MIIF_NOISOLATE ;
 int MII_OFFSET_ANY ;
 int MII_PHY_ANY ;
 int MTX_DEF ;
 int MTX_NETWORK_LOCK ;
 int PCIM_CMD_MWRICEN ;
 int PCIR_CACHELNSZ ;
 int PCIR_COMMAND ;
 int PCIY_PMG ;
 scalar_t__ bootverbose ;
 int bus_alloc_resources (int ,scalar_t__,int *) ;
 int bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int,int,int,int ,int ,int *,int *) ;
 int bus_dmamap_create (int ,int ,int *) ;
 int bus_dmamap_load (int ,int ,struct fxp_cb_tx*,int,int ,int *,int) ;
 int bus_dmamem_alloc (int ,void**,int,int *) ;
 int bus_get_dma_tag (int ) ;
 int bus_setup_intr (int ,int ,int,int *,int ,struct fxp_softc*,int *) ;
 int busdma_lock_mutex ;
 int callout_init_mtx (int *,int *,int ) ;
 int device_get_name (int ) ;
 int device_get_nameunit (int ) ;
 struct fxp_softc* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*,...) ;
 int ether_ifattach (void*,int*) ;
 int ether_ifdetach (void*) ;
 int fxp_add_rfabuf (struct fxp_softc*,struct fxp_rx*) ;
 int fxp_autosize_eeprom (struct fxp_softc*) ;
 int fxp_dma_map_addr ;
 TYPE_2__* fxp_find_ident (int ) ;
 scalar_t__ fxp_ifmedia_sts ;
 scalar_t__ fxp_ifmedia_upd ;
 int fxp_init ;
 int fxp_init_body (struct fxp_softc*,int ) ;
 int fxp_intr ;
 int fxp_ioctl ;
 int fxp_load_eeprom (struct fxp_softc*) ;
 scalar_t__ fxp_new_rfabuf (struct fxp_softc*,struct fxp_rx*) ;
 int fxp_release (struct fxp_softc*) ;
 void* fxp_res_spec_io ;
 scalar_t__ fxp_res_spec_mem ;
 int fxp_serial_ifmedia_sts ;
 int fxp_serial_ifmedia_upd ;
 int fxp_start ;
 int fxp_stop (struct fxp_softc*) ;
 int fxp_sysctl_node (struct fxp_softc*) ;
 int fxp_write_eeprom (struct fxp_softc*,int*,int,int) ;
 void* if_gethandle (int ) ;
 int if_initname (void*,int ,int ) ;
 int if_setcapabilities (void*,int ) ;
 int if_setcapabilitiesbit (void*,int,int ) ;
 int if_setcapenable (void*,int ) ;
 int if_setcapenablebit (void*,int,int ) ;
 int if_setdev (void*,int ) ;
 int if_setflags (void*,int) ;
 int if_sethwassist (void*,int) ;
 int if_setifheaderlen (void*,int) ;
 int if_setinitfn (void*,int ) ;
 int if_setioctlfn (void*,int ) ;
 int if_setsendqlen (void*,int) ;
 int if_setsendqready (void*) ;
 int if_setsoftc (void*,struct fxp_softc*) ;
 int if_setstartfn (void*,int ) ;
 int ifmedia_add (int *,int,int ,int *) ;
 int ifmedia_init (int *,int ,int ,int ) ;
 int ifmedia_set (int *,int) ;
 int mii_attach (int ,int *,void*,int ,int ,int ,int ,int ,int) ;
 int mtx_init (int *,int ,int ,int ) ;
 int pci_enable_busmaster (int ) ;
 scalar_t__ pci_find_cap (int ,int ,int*) ;
 int pci_get_device (int ) ;
 scalar_t__ pci_get_revid (int ) ;
 int pci_get_subdevice (int ) ;
 int pci_get_subvendor (int ) ;
 int pci_get_vendor (int ) ;
 scalar_t__ pci_read_config (int ,int ,int) ;
 int resource_int_value (int ,int ,char*,int*) ;

__attribute__((used)) static int
fxp_attach(device_t dev)
{
 struct fxp_softc *sc;
 struct fxp_cb_tx *tcbp;
 struct fxp_tx *txp;
 struct fxp_rx *rxp;
 if_t ifp;
 uint32_t val;
 uint16_t data;
 u_char eaddr[ETHER_ADDR_LEN];
 int error, flags, i, pmc, prefer_iomap;

 error = 0;
 sc = device_get_softc(dev);
 sc->dev = dev;
 mtx_init(&sc->sc_mtx, device_get_nameunit(dev), MTX_NETWORK_LOCK,
     MTX_DEF);
 callout_init_mtx(&sc->stat_ch, &sc->sc_mtx, 0);
 ifmedia_init(&sc->sc_media, 0, fxp_serial_ifmedia_upd,
     fxp_serial_ifmedia_sts);

 ifp = sc->ifp = if_gethandle(IFT_ETHER);
 if (ifp == (void *)((void*)0)) {
  device_printf(dev, "can not if_alloc()\n");
  error = ENOSPC;
  goto fail;
 }




 pci_enable_busmaster(dev);






 prefer_iomap = 0;
 resource_int_value(device_get_name(dev), device_get_unit(dev),
     "prefer_iomap", &prefer_iomap);
 if (prefer_iomap)
  sc->fxp_spec = fxp_res_spec_io;
 else
  sc->fxp_spec = fxp_res_spec_mem;

 error = bus_alloc_resources(dev, sc->fxp_spec, sc->fxp_res);
 if (error) {
  if (sc->fxp_spec == fxp_res_spec_mem)
   sc->fxp_spec = fxp_res_spec_io;
  else
   sc->fxp_spec = fxp_res_spec_mem;
  error = bus_alloc_resources(dev, sc->fxp_spec, sc->fxp_res);
 }
 if (error) {
  device_printf(dev, "could not allocate resources\n");
  error = ENXIO;
  goto fail;
 }

 if (bootverbose) {
  device_printf(dev, "using %s space register mapping\n",
     sc->fxp_spec == fxp_res_spec_mem ? "memory" : "I/O");
 }




 CSR_WRITE_4(sc, FXP_CSR_PORT, FXP_PORT_SELECTIVE_RESET);
 DELAY(10);

 CSR_WRITE_4(sc, FXP_CSR_PORT, FXP_PORT_SOFTWARE_RESET);
 DELAY(10);
 CSR_WRITE_1(sc, FXP_CSR_SCB_INTRCNTL, FXP_SCB_INTR_DISABLE);




 fxp_autosize_eeprom(sc);
 fxp_load_eeprom(sc);




 sc->ident = fxp_find_ident(dev);
 if (sc->ident->ich > 0) {

  sc->revision = FXP_REV_82559_A0;
 } else {
  data = sc->eeprom[FXP_EEPROM_MAP_CNTR];
  if ((data >> 8) == 1)
   sc->revision = FXP_REV_82557;
  else
   sc->revision = pci_get_revid(dev);
 }




 if (sc->revision >= FXP_REV_82558_A4 &&
     sc->revision != FXP_REV_82559S_A) {
  data = sc->eeprom[FXP_EEPROM_MAP_ID];
  if ((data & 0x20) != 0 &&
      pci_find_cap(sc->dev, PCIY_PMG, &pmc) == 0)
   sc->flags |= FXP_FLAG_WOLCAP;
 }

 if (sc->revision == FXP_REV_82550_C) {






  data = sc->eeprom[FXP_EEPROM_MAP_COMPAT];
  if ((data & 0x0400) == 0)
   sc->flags |= FXP_FLAG_NO_UCODE;
 }


 if (sc->revision < FXP_REV_82558_A4) {
  data = sc->eeprom[FXP_EEPROM_MAP_COMPAT];
  if ((data & 0x03) != 0x03) {
   sc->flags |= FXP_FLAG_RXBUG;
   device_printf(dev, "Enabling Rx lock-up workaround\n");
  }
 }




 data = sc->eeprom[FXP_EEPROM_MAP_PRI_PHY];
 if (sc->revision == FXP_REV_82557 && (data & FXP_PHY_DEVICE_MASK) != 0
     && (data & FXP_PHY_SERIAL_ONLY))
  sc->flags |= FXP_FLAG_SERIAL_MEDIA;

 fxp_sysctl_node(sc);
 if ((sc->ident->ich >= 2 && sc->ident->ich <= 3) ||
     (sc->ident->ich == 0 && sc->revision >= FXP_REV_82559_A0)) {
  data = sc->eeprom[FXP_EEPROM_MAP_ID];
  if (data & 0x02) {
   uint16_t cksum;
   int i;

   device_printf(dev,
       "Disabling dynamic standby mode in EEPROM\n");
   data &= ~0x02;
   sc->eeprom[FXP_EEPROM_MAP_ID] = data;
   fxp_write_eeprom(sc, &data, FXP_EEPROM_MAP_ID, 1);
   device_printf(dev, "New EEPROM ID: 0x%x\n", data);
   cksum = 0;
   for (i = 0; i < (1 << sc->eeprom_size) - 1; i++)
    cksum += sc->eeprom[i];
   i = (1 << sc->eeprom_size) - 1;
   cksum = 0xBABA - cksum;
   fxp_write_eeprom(sc, &cksum, i, 1);
   device_printf(dev,
       "EEPROM checksum @ 0x%x: 0x%x -> 0x%x\n",
       i, sc->eeprom[i], cksum);
   sc->eeprom[i] = cksum;




   sc->flags |= FXP_FLAG_CU_RESUME_BUG;
  }
 }




 if (sc->revision != FXP_REV_82557) {





  val = pci_read_config(dev, PCIR_COMMAND, 2);
  if (val & PCIM_CMD_MWRICEN &&
      pci_read_config(dev, PCIR_CACHELNSZ, 1) != 0)
   sc->flags |= FXP_FLAG_MWI_ENABLE;


  sc->flags |= FXP_FLAG_EXT_TXCB;


  sc->flags |= FXP_FLAG_LONG_PKT_EN;
 } else {

  sc->flags |= FXP_FLAG_SAVE_BAD;
 }


 if (sc->revision >= FXP_REV_82559_A0) {

  if (sc->ident->device != 0x1209)
   sc->flags |= FXP_FLAG_82559_RXCSUM;
 }






 if (sc->revision == FXP_REV_82550 || sc->revision == FXP_REV_82550_C ||
     sc->revision == FXP_REV_82551_E || sc->revision == FXP_REV_82551_F
     || sc->revision == FXP_REV_82551_10) {
  sc->rfa_size = sizeof (struct fxp_rfa);
  sc->tx_cmd = FXP_CB_COMMAND_IPCBXMIT;
  sc->flags |= FXP_FLAG_EXT_RFA;

  sc->flags &= ~FXP_FLAG_82559_RXCSUM;
 } else {
  sc->rfa_size = sizeof (struct fxp_rfa) - FXP_RFAX_LEN;
  sc->tx_cmd = FXP_CB_COMMAND_XMIT;
 }




 sc->maxtxseg = FXP_NTXSEG;
 sc->maxsegsize = MCLBYTES;
 if (sc->flags & FXP_FLAG_EXT_RFA) {
  sc->maxtxseg--;
  sc->maxsegsize = FXP_TSO_SEGSIZE;
 }
 error = bus_dma_tag_create(bus_get_dma_tag(dev), 2, 0,
     BUS_SPACE_MAXADDR_32BIT, BUS_SPACE_MAXADDR, ((void*)0), ((void*)0),
     sc->maxsegsize * sc->maxtxseg + sizeof(struct ether_vlan_header),
     sc->maxtxseg, sc->maxsegsize, 0,
     busdma_lock_mutex, &Giant, &sc->fxp_txmtag);
 if (error) {
  device_printf(dev, "could not create TX DMA tag\n");
  goto fail;
 }

 error = bus_dma_tag_create(bus_get_dma_tag(dev), 2, 0,
     BUS_SPACE_MAXADDR_32BIT, BUS_SPACE_MAXADDR, ((void*)0), ((void*)0),
     MCLBYTES, 1, MCLBYTES, 0,
     busdma_lock_mutex, &Giant, &sc->fxp_rxmtag);
 if (error) {
  device_printf(dev, "could not create RX DMA tag\n");
  goto fail;
 }

 error = bus_dma_tag_create(bus_get_dma_tag(dev), 4, 0,
     BUS_SPACE_MAXADDR_32BIT, BUS_SPACE_MAXADDR, ((void*)0), ((void*)0),
     sizeof(struct fxp_stats), 1, sizeof(struct fxp_stats), 0,
     busdma_lock_mutex, &Giant, &sc->fxp_stag);
 if (error) {
  device_printf(dev, "could not create stats DMA tag\n");
  goto fail;
 }

 error = bus_dmamem_alloc(sc->fxp_stag, (void **)&sc->fxp_stats,
     BUS_DMA_NOWAIT | BUS_DMA_COHERENT | BUS_DMA_ZERO, &sc->fxp_smap);
 if (error) {
  device_printf(dev, "could not allocate stats DMA memory\n");
  goto fail;
 }
 error = bus_dmamap_load(sc->fxp_stag, sc->fxp_smap, sc->fxp_stats,
     sizeof(struct fxp_stats), fxp_dma_map_addr, &sc->stats_addr,
     BUS_DMA_NOWAIT);
 if (error) {
  device_printf(dev, "could not load the stats DMA buffer\n");
  goto fail;
 }

 error = bus_dma_tag_create(bus_get_dma_tag(dev), 4, 0,
     BUS_SPACE_MAXADDR_32BIT, BUS_SPACE_MAXADDR, ((void*)0), ((void*)0),
     FXP_TXCB_SZ, 1, FXP_TXCB_SZ, 0,
     busdma_lock_mutex, &Giant, &sc->cbl_tag);
 if (error) {
  device_printf(dev, "could not create TxCB DMA tag\n");
  goto fail;
 }

 error = bus_dmamem_alloc(sc->cbl_tag, (void **)&sc->fxp_desc.cbl_list,
     BUS_DMA_NOWAIT | BUS_DMA_COHERENT | BUS_DMA_ZERO, &sc->cbl_map);
 if (error) {
  device_printf(dev, "could not allocate TxCB DMA memory\n");
  goto fail;
 }

 error = bus_dmamap_load(sc->cbl_tag, sc->cbl_map,
     sc->fxp_desc.cbl_list, FXP_TXCB_SZ, fxp_dma_map_addr,
     &sc->fxp_desc.cbl_addr, BUS_DMA_NOWAIT);
 if (error) {
  device_printf(dev, "could not load TxCB DMA buffer\n");
  goto fail;
 }

 error = bus_dma_tag_create(bus_get_dma_tag(dev), 4, 0,
     BUS_SPACE_MAXADDR_32BIT, BUS_SPACE_MAXADDR, ((void*)0), ((void*)0),
     sizeof(struct fxp_cb_mcs), 1, sizeof(struct fxp_cb_mcs), 0,
     busdma_lock_mutex, &Giant, &sc->mcs_tag);
 if (error) {
  device_printf(dev,
      "could not create multicast setup DMA tag\n");
  goto fail;
 }

 error = bus_dmamem_alloc(sc->mcs_tag, (void **)&sc->mcsp,
     BUS_DMA_NOWAIT | BUS_DMA_COHERENT | BUS_DMA_ZERO, &sc->mcs_map);
 if (error) {
  device_printf(dev,
      "could not allocate multicast setup DMA memory\n");
  goto fail;
 }
 error = bus_dmamap_load(sc->mcs_tag, sc->mcs_map, sc->mcsp,
     sizeof(struct fxp_cb_mcs), fxp_dma_map_addr, &sc->mcs_addr,
     BUS_DMA_NOWAIT);
 if (error) {
  device_printf(dev,
      "can't load the multicast setup DMA buffer\n");
  goto fail;
 }





 txp = sc->fxp_desc.tx_list;
 tcbp = sc->fxp_desc.cbl_list;
 for (i = 0; i < FXP_NTXCB; i++) {
  txp[i].tx_cb = tcbp + i;
  error = bus_dmamap_create(sc->fxp_txmtag, 0, &txp[i].tx_map);
  if (error) {
   device_printf(dev, "can't create DMA map for TX\n");
   goto fail;
  }
 }
 error = bus_dmamap_create(sc->fxp_rxmtag, 0, &sc->spare_map);
 if (error) {
  device_printf(dev, "can't create spare DMA map\n");
  goto fail;
 }




 sc->fxp_desc.rx_head = sc->fxp_desc.rx_tail = ((void*)0);
 for (i = 0; i < FXP_NRFABUFS; i++) {
  rxp = &sc->fxp_desc.rx_list[i];
  error = bus_dmamap_create(sc->fxp_rxmtag, 0, &rxp->rx_map);
  if (error) {
   device_printf(dev, "can't create DMA map for RX\n");
   goto fail;
  }
  if (fxp_new_rfabuf(sc, rxp) != 0) {
   error = ENOMEM;
   goto fail;
  }
  fxp_add_rfabuf(sc, rxp);
 }




 eaddr[0] = sc->eeprom[FXP_EEPROM_MAP_IA0] & 0xff;
 eaddr[1] = sc->eeprom[FXP_EEPROM_MAP_IA0] >> 8;
 eaddr[2] = sc->eeprom[FXP_EEPROM_MAP_IA1] & 0xff;
 eaddr[3] = sc->eeprom[FXP_EEPROM_MAP_IA1] >> 8;
 eaddr[4] = sc->eeprom[FXP_EEPROM_MAP_IA2] & 0xff;
 eaddr[5] = sc->eeprom[FXP_EEPROM_MAP_IA2] >> 8;
 if (bootverbose) {
  device_printf(dev, "PCI IDs: %04x %04x %04x %04x %04x\n",
      pci_get_vendor(dev), pci_get_device(dev),
      pci_get_subvendor(dev), pci_get_subdevice(dev),
      pci_get_revid(dev));
  device_printf(dev, "Dynamic Standby mode is %s\n",
      sc->eeprom[FXP_EEPROM_MAP_ID] & 0x02 ? "enabled" :
      "disabled");
 }
 if (sc->flags & FXP_FLAG_SERIAL_MEDIA) {
  ifmedia_add(&sc->sc_media, IFM_ETHER|IFM_MANUAL, 0, ((void*)0));
  ifmedia_set(&sc->sc_media, IFM_ETHER|IFM_MANUAL);
 } else {



  flags = MIIF_NOISOLATE;
  if (sc->revision >= FXP_REV_82558_A4)
   flags |= MIIF_DOPAUSE;
  error = mii_attach(dev, &sc->miibus, ifp,
      (ifm_change_cb_t)fxp_ifmedia_upd,
      (ifm_stat_cb_t)fxp_ifmedia_sts, BMSR_DEFCAPMASK,
      MII_PHY_ANY, MII_OFFSET_ANY, flags);
  if (error != 0) {
   device_printf(dev, "attaching PHYs failed\n");
   goto fail;
  }
 }

 if_initname(ifp, device_get_name(dev), device_get_unit(dev));
 if_setdev(ifp, dev);
 if_setinitfn(ifp, fxp_init);
 if_setsoftc(ifp, sc);
 if_setflags(ifp, IFF_BROADCAST | IFF_SIMPLEX | IFF_MULTICAST);
 if_setioctlfn(ifp, fxp_ioctl);
 if_setstartfn(ifp, fxp_start);

 if_setcapabilities(ifp, 0);
 if_setcapenable(ifp, 0);


 if (sc->flags & FXP_FLAG_EXT_RFA) {
  if_sethwassist(ifp, FXP_CSUM_FEATURES | CSUM_TSO);
  if_setcapabilitiesbit(ifp, IFCAP_HWCSUM | IFCAP_TSO4, 0);
  if_setcapenablebit(ifp, IFCAP_HWCSUM | IFCAP_TSO4, 0);
 }

 if (sc->flags & FXP_FLAG_82559_RXCSUM) {
  if_setcapabilitiesbit(ifp, IFCAP_RXCSUM, 0);
  if_setcapenablebit(ifp, IFCAP_RXCSUM, 0);
 }

 if (sc->flags & FXP_FLAG_WOLCAP) {
  if_setcapabilitiesbit(ifp, IFCAP_WOL_MAGIC, 0);
  if_setcapenablebit(ifp, IFCAP_WOL_MAGIC, 0);
 }
 ether_ifattach(ifp, eaddr);






 if_setifheaderlen(ifp, sizeof(struct ether_vlan_header));
 if_setcapabilitiesbit(ifp, IFCAP_VLAN_MTU, 0);
 if_setcapenablebit(ifp, IFCAP_VLAN_MTU, 0);
 if ((sc->flags & FXP_FLAG_EXT_RFA) != 0) {
  if_setcapabilitiesbit(ifp, IFCAP_VLAN_HWTAGGING |
      IFCAP_VLAN_HWCSUM | IFCAP_VLAN_HWTSO, 0);
  if_setcapenablebit(ifp, IFCAP_VLAN_HWTAGGING |
      IFCAP_VLAN_HWCSUM | IFCAP_VLAN_HWTSO, 0);
 }





 if_setsendqlen(ifp, FXP_NTXCB - 1);
 if_setsendqready(ifp);




 error = bus_setup_intr(dev, sc->fxp_res[1], INTR_TYPE_NET | INTR_MPSAFE,
          ((void*)0), fxp_intr, sc, &sc->ih);
 if (error) {
  device_printf(dev, "could not setup irq\n");
  ether_ifdetach(sc->ifp);
  goto fail;
 }





 if ((sc->flags & FXP_FLAG_WOLCAP) != 0) {
  FXP_LOCK(sc);

  CSR_WRITE_1(sc, FXP_CSR_PMDR, CSR_READ_1(sc, FXP_CSR_PMDR));
  fxp_init_body(sc, 0);
  fxp_stop(sc);
  FXP_UNLOCK(sc);
 }

fail:
 if (error)
  fxp_release(sc);
 return (error);
}
