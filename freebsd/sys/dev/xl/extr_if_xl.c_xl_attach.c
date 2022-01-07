
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
typedef int u_int16_t ;
typedef int u_char ;
struct TYPE_4__ {int * xl_tx_tag; int xl_tx_dmamap; int xl_tx_list; int xl_tx_dmaaddr; int * xl_rx_tag; int xl_rx_dmamap; int xl_rx_list; int xl_rx_dmaaddr; } ;
struct xl_softc {int xl_flags; int xl_caps; scalar_t__ xl_type; int xl_pmcap; int xl_media; int xl_xcvr; int xl_intrhand; int * xl_irq; int ifmedia; int * xl_miibus; int xl_tx_thresh; int xl_tmpmap; int * xl_mtag; TYPE_1__ xl_ldata; int xl_task; int xl_mtx; int xl_tick_callout; struct ifnet* xl_ifp; int * xl_fres; void* xl_fhandle; void* xl_ftag; int * xl_res; void* xl_bhandle; void* xl_btag; int xl_dev; } ;
struct TYPE_5__ {scalar_t__ ifq_drv_maxlen; } ;
struct ifnet {int if_flags; TYPE_2__ if_snd; int if_init; int if_start; int if_capabilities; int if_capenable; int if_hwassist; int if_ioctl; struct xl_softc* if_softc; } ;
typedef int device_t ;
typedef char* caddr_t ;


 int BMSR_DEFCAPMASK ;
 int BUS_DMA_COHERENT ;
 int BUS_DMA_NOWAIT ;
 int BUS_DMA_ZERO ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int CSR_READ_2 (struct xl_softc*,int ) ;
 int CSR_WRITE_2 (struct xl_softc*,int ,int ) ;
 int ENOSPC ;
 int ENXIO ;
 int ETHER_ADDR_LEN ;
 int IFCAP_HWCSUM ;
 int IFCAP_POLLING ;
 int IFCAP_RXCSUM ;
 int IFCAP_VLAN_MTU ;
 int IFCAP_WOL_MAGIC ;
 int IFF_BROADCAST ;
 int IFF_MULTICAST ;
 int IFF_SIMPLEX ;
 int IFM_100_FX ;
 int IFM_100_TX ;
 int IFM_10_2 ;
 int IFM_10_5 ;
 int IFM_10_FL ;
 int IFM_10_T ;
 int IFM_ETHER ;
 int IFM_FDX ;
 int IFM_HDX ;
 int IFQ_SET_MAXLEN (TYPE_2__*,scalar_t__) ;
 int IFQ_SET_READY (TYPE_2__*) ;
 int IFT_ETHER ;
 int INTR_MPSAFE ;
 int INTR_TYPE_NET ;
 int MCLBYTES ;
 int MIIF_DOPAUSE ;
 int MII_OFFSET_ANY ;
 int MII_PHY_ANY ;
 int MTX_DEF ;
 int MTX_NETWORK_LOCK ;
 int PCIY_PMG ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_IOPORT ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int TASK_INIT (int *,int ,int ,struct xl_softc*) ;

 int TC_DEVICEID_HURRICANE_555 ;
 int TC_DEVICEID_HURRICANE_556 ;
 int TC_DEVICEID_HURRICANE_556B ;



 int TC_DEVICEID_HURRICANE_656 ;
 int TC_DEVICEID_HURRICANE_656B ;
 int TC_DEVICEID_TORNADO_10_100BT_920B ;
 int TC_DEVICEID_TORNADO_10_100BT_920B_WNM ;
 int TC_DEVICEID_TORNADO_656C ;
 int XL905B_CSUM_FEATURES ;
 int XL_CAPS_FULL_DUPLEX ;
 int XL_CAPS_LARGE_PKTS ;
 int XL_CAPS_NO_TXLENGTH ;
 int XL_CAPS_PWRMGMT ;
 int XL_EE_CAPS ;
 int XL_EE_ICFG_0 ;
 int XL_EE_OEM_ADR0 ;
 int XL_EE_SOFTINFO2 ;
 int XL_FLAG_8BITROM ;
 int XL_FLAG_EEPROM_OFFSET_30 ;
 int XL_FLAG_FUNCREG ;
 int XL_FLAG_INVERT_LED_PWR ;
 int XL_FLAG_INVERT_MII_PWR ;
 int XL_FLAG_NO_MMIO ;
 int XL_FLAG_NO_XCVR_PWR ;
 int XL_FLAG_PHYOK ;
 int XL_FLAG_USE_MMIO ;
 int XL_FLAG_WEIRDRESET ;
 int XL_FLAG_WOL ;
 int XL_ICFG_CONNECTOR_BITS ;
 int XL_ICFG_CONNECTOR_MASK ;
 int XL_LOCK (struct xl_softc*) ;
 int XL_MAXFRAGS ;
 int XL_MEDIAOPT_10FL ;
 int XL_MEDIAOPT_AUI ;
 int XL_MEDIAOPT_BFX ;
 int XL_MEDIAOPT_BNC ;
 int XL_MEDIAOPT_BT ;
 int XL_MEDIAOPT_BT4 ;
 int XL_MEDIAOPT_BTX ;
 int XL_MEDIAOPT_MII ;
 int XL_MIN_FRAMELEN ;
 int XL_NO_XCVR_PWR_MAGICBITS ;
 int XL_PCI_FUNCMEM ;
 int XL_PCI_LOIO ;
 int XL_PCI_LOMEM ;
 int XL_RX_LIST_SZ ;
 int XL_SEL_WIN (int) ;
 int XL_SINFO2_AUX_WOL_CON ;
 scalar_t__ XL_TX_LIST_CNT ;
 int XL_TX_LIST_SZ ;
 scalar_t__ XL_TYPE_905B ;
 scalar_t__ XL_TYPE_90X ;
 int XL_UNLOCK (struct xl_softc*) ;
 int XL_W0_MFG_ID ;
 int XL_W3_MEDIA_OPT ;
 int XL_XCVR_AUTO ;
 scalar_t__ bootverbose ;
 void* bus_alloc_resource_any (int ,int,int*,int) ;
 int bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int,int,int,int ,int *,int *,int **) ;
 int bus_dma_tag_destroy (int *) ;
 int bus_dmamap_create (int *,int ,int *) ;
 int bus_dmamap_load (int *,int ,int ,int,int ,int *,int) ;
 int bus_dmamem_alloc (int *,void**,int,int *) ;
 int bus_dmamem_free (int *,int ,int ) ;
 int bus_get_dma_tag (int ) ;
 int bus_setup_intr (int ,int *,int,int *,int ,struct xl_softc*,int *) ;
 int callout_init_mtx (int *,int *,int ) ;
 int device_get_name (int ) ;
 int device_get_nameunit (int ) ;
 struct xl_softc* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*,...) ;
 int ether_ifattach (struct ifnet*,int *) ;
 int ether_ifdetach (struct ifnet*) ;
 struct ifnet* if_alloc (int ) ;
 int if_initname (struct ifnet*,int ,int) ;
 int ifmedia_add (int *,int,int ,int *) ;
 int ifmedia_init (int *,int ,int ,int ) ;
 int ifmedia_set (int *,int) ;
 int mii_attach (int ,int **,struct ifnet*,int ,int ,int ,int,int ,int ) ;
 int mtx_init (int *,int ,int ,int ) ;
 int pci_enable_busmaster (int ) ;
 scalar_t__ pci_find_cap (int ,int ,int*) ;
 int pci_get_device (int ) ;
 void* rman_get_bushandle (int *) ;
 void* rman_get_bustag (int *) ;
 int xl_choose_media (struct xl_softc*,int*) ;
 int xl_choose_xcvr (struct xl_softc*,scalar_t__) ;
 int xl_detach (int ) ;
 int xl_dma_map_addr ;
 int xl_ifmedia_sts ;
 int xl_ifmedia_upd ;
 int xl_init ;
 int xl_intr ;
 int xl_ioctl ;
 int xl_mediacheck (struct xl_softc*) ;
 scalar_t__ xl_read_eeprom (struct xl_softc*,char*,int ,int,int) ;
 int xl_reset (struct xl_softc*) ;
 int xl_rxeof_task ;
 int xl_setcfg (struct xl_softc*) ;
 int xl_start ;

__attribute__((used)) static int
xl_attach(device_t dev)
{
 u_char eaddr[ETHER_ADDR_LEN];
 u_int16_t sinfo2, xcvr[2];
 struct xl_softc *sc;
 struct ifnet *ifp;
 int media, pmcap;
 int error = 0, phy, rid, res, unit;
 uint16_t did;

 sc = device_get_softc(dev);
 sc->xl_dev = dev;

 unit = device_get_unit(dev);

 mtx_init(&sc->xl_mtx, device_get_nameunit(dev), MTX_NETWORK_LOCK,
     MTX_DEF);
 ifmedia_init(&sc->ifmedia, 0, xl_ifmedia_upd, xl_ifmedia_sts);

 did = pci_get_device(dev);

 sc->xl_flags = 0;
 if (did == TC_DEVICEID_HURRICANE_555)
  sc->xl_flags |= XL_FLAG_EEPROM_OFFSET_30 | XL_FLAG_PHYOK;
 if (did == TC_DEVICEID_HURRICANE_556 ||
     did == TC_DEVICEID_HURRICANE_556B)
  sc->xl_flags |= XL_FLAG_FUNCREG | XL_FLAG_PHYOK |
      XL_FLAG_EEPROM_OFFSET_30 | XL_FLAG_WEIRDRESET |
      XL_FLAG_INVERT_LED_PWR | XL_FLAG_INVERT_MII_PWR;
 if (did == TC_DEVICEID_HURRICANE_555 ||
     did == TC_DEVICEID_HURRICANE_556)
  sc->xl_flags |= XL_FLAG_8BITROM;
 if (did == TC_DEVICEID_HURRICANE_556B)
  sc->xl_flags |= XL_FLAG_NO_XCVR_PWR;

 if (did == 129 ||
     did == 128 ||
     did == TC_DEVICEID_HURRICANE_656B ||
     did == TC_DEVICEID_TORNADO_656C)
  sc->xl_flags |= XL_FLAG_FUNCREG;
 if (did == 130 ||
     did == 129 ||
     did == 128 ||
     did == TC_DEVICEID_HURRICANE_656B ||
     did == TC_DEVICEID_TORNADO_656C)
  sc->xl_flags |= XL_FLAG_PHYOK | XL_FLAG_EEPROM_OFFSET_30 |
    XL_FLAG_8BITROM;
 if (did == TC_DEVICEID_HURRICANE_656)
  sc->xl_flags |= XL_FLAG_FUNCREG | XL_FLAG_PHYOK;
 if (did == 129)
  sc->xl_flags |= XL_FLAG_INVERT_LED_PWR;
 if (did == 128)
  sc->xl_flags |= XL_FLAG_INVERT_MII_PWR;
 if (did == TC_DEVICEID_TORNADO_656C)
  sc->xl_flags |= XL_FLAG_INVERT_MII_PWR;
 if (did == TC_DEVICEID_HURRICANE_656 ||
     did == TC_DEVICEID_HURRICANE_656B)
  sc->xl_flags |= XL_FLAG_INVERT_MII_PWR |
      XL_FLAG_INVERT_LED_PWR;
 if (did == TC_DEVICEID_TORNADO_10_100BT_920B ||
     did == TC_DEVICEID_TORNADO_10_100BT_920B_WNM)
  sc->xl_flags |= XL_FLAG_PHYOK;

 switch (did) {
 case 131:
 case 130:
 case 129:
 case 128:
  sc->xl_flags |= XL_FLAG_NO_MMIO;
  break;
 default:
  break;
 }




 pci_enable_busmaster(dev);

 if ((sc->xl_flags & XL_FLAG_NO_MMIO) == 0) {
  rid = XL_PCI_LOMEM;
  res = SYS_RES_MEMORY;

  sc->xl_res = bus_alloc_resource_any(dev, res, &rid, RF_ACTIVE);
 }

 if (sc->xl_res != ((void*)0)) {
  sc->xl_flags |= XL_FLAG_USE_MMIO;
  if (bootverbose)
   device_printf(dev, "using memory mapped I/O\n");
 } else {
  rid = XL_PCI_LOIO;
  res = SYS_RES_IOPORT;
  sc->xl_res = bus_alloc_resource_any(dev, res, &rid, RF_ACTIVE);
  if (sc->xl_res == ((void*)0)) {
   device_printf(dev, "couldn't map ports/memory\n");
   error = ENXIO;
   goto fail;
  }
  if (bootverbose)
   device_printf(dev, "using port I/O\n");
 }

 sc->xl_btag = rman_get_bustag(sc->xl_res);
 sc->xl_bhandle = rman_get_bushandle(sc->xl_res);

 if (sc->xl_flags & XL_FLAG_FUNCREG) {
  rid = XL_PCI_FUNCMEM;
  sc->xl_fres = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid,
      RF_ACTIVE);

  if (sc->xl_fres == ((void*)0)) {
   device_printf(dev, "couldn't map funcreg memory\n");
   error = ENXIO;
   goto fail;
  }

  sc->xl_ftag = rman_get_bustag(sc->xl_fres);
  sc->xl_fhandle = rman_get_bushandle(sc->xl_fres);
 }


 rid = 0;
 sc->xl_irq = bus_alloc_resource_any(dev, SYS_RES_IRQ, &rid,
     RF_SHAREABLE | RF_ACTIVE);
 if (sc->xl_irq == ((void*)0)) {
  device_printf(dev, "couldn't map interrupt\n");
  error = ENXIO;
  goto fail;
 }


 ifp = sc->xl_ifp = if_alloc(IFT_ETHER);
 if (ifp == ((void*)0)) {
  device_printf(dev, "can not if_alloc()\n");
  error = ENOSPC;
  goto fail;
 }
 ifp->if_softc = sc;
 if_initname(ifp, device_get_name(dev), device_get_unit(dev));


 XL_LOCK(sc);
 xl_reset(sc);
 XL_UNLOCK(sc);




 if (xl_read_eeprom(sc, (caddr_t)&eaddr, XL_EE_OEM_ADR0, 3, 1)) {
  device_printf(dev, "failed to read station address\n");
  error = ENXIO;
  goto fail;
 }

 callout_init_mtx(&sc->xl_tick_callout, &sc->xl_mtx, 0);
 TASK_INIT(&sc->xl_task, 0, xl_rxeof_task, sc);
 error = bus_dma_tag_create(bus_get_dma_tag(dev), 8, 0,
     BUS_SPACE_MAXADDR_32BIT, BUS_SPACE_MAXADDR, ((void*)0), ((void*)0),
     XL_RX_LIST_SZ, 1, XL_RX_LIST_SZ, 0, ((void*)0), ((void*)0),
     &sc->xl_ldata.xl_rx_tag);
 if (error) {
  device_printf(dev, "failed to allocate rx dma tag\n");
  goto fail;
 }

 error = bus_dmamem_alloc(sc->xl_ldata.xl_rx_tag,
     (void **)&sc->xl_ldata.xl_rx_list, BUS_DMA_NOWAIT |
     BUS_DMA_COHERENT | BUS_DMA_ZERO, &sc->xl_ldata.xl_rx_dmamap);
 if (error) {
  device_printf(dev, "no memory for rx list buffers!\n");
  bus_dma_tag_destroy(sc->xl_ldata.xl_rx_tag);
  sc->xl_ldata.xl_rx_tag = ((void*)0);
  goto fail;
 }

 error = bus_dmamap_load(sc->xl_ldata.xl_rx_tag,
     sc->xl_ldata.xl_rx_dmamap, sc->xl_ldata.xl_rx_list,
     XL_RX_LIST_SZ, xl_dma_map_addr,
     &sc->xl_ldata.xl_rx_dmaaddr, BUS_DMA_NOWAIT);
 if (error) {
  device_printf(dev, "cannot get dma address of the rx ring!\n");
  bus_dmamem_free(sc->xl_ldata.xl_rx_tag, sc->xl_ldata.xl_rx_list,
      sc->xl_ldata.xl_rx_dmamap);
  bus_dma_tag_destroy(sc->xl_ldata.xl_rx_tag);
  sc->xl_ldata.xl_rx_tag = ((void*)0);
  goto fail;
 }

 error = bus_dma_tag_create(bus_get_dma_tag(dev), 8, 0,
     BUS_SPACE_MAXADDR_32BIT, BUS_SPACE_MAXADDR, ((void*)0), ((void*)0),
     XL_TX_LIST_SZ, 1, XL_TX_LIST_SZ, 0, ((void*)0), ((void*)0),
     &sc->xl_ldata.xl_tx_tag);
 if (error) {
  device_printf(dev, "failed to allocate tx dma tag\n");
  goto fail;
 }

 error = bus_dmamem_alloc(sc->xl_ldata.xl_tx_tag,
     (void **)&sc->xl_ldata.xl_tx_list, BUS_DMA_NOWAIT |
     BUS_DMA_COHERENT | BUS_DMA_ZERO, &sc->xl_ldata.xl_tx_dmamap);
 if (error) {
  device_printf(dev, "no memory for list buffers!\n");
  bus_dma_tag_destroy(sc->xl_ldata.xl_tx_tag);
  sc->xl_ldata.xl_tx_tag = ((void*)0);
  goto fail;
 }

 error = bus_dmamap_load(sc->xl_ldata.xl_tx_tag,
     sc->xl_ldata.xl_tx_dmamap, sc->xl_ldata.xl_tx_list,
     XL_TX_LIST_SZ, xl_dma_map_addr,
     &sc->xl_ldata.xl_tx_dmaaddr, BUS_DMA_NOWAIT);
 if (error) {
  device_printf(dev, "cannot get dma address of the tx ring!\n");
  bus_dmamem_free(sc->xl_ldata.xl_tx_tag, sc->xl_ldata.xl_tx_list,
      sc->xl_ldata.xl_tx_dmamap);
  bus_dma_tag_destroy(sc->xl_ldata.xl_tx_tag);
  sc->xl_ldata.xl_tx_tag = ((void*)0);
  goto fail;
 }




 error = bus_dma_tag_create(bus_get_dma_tag(dev), 1, 0,
     BUS_SPACE_MAXADDR_32BIT, BUS_SPACE_MAXADDR, ((void*)0), ((void*)0),
     MCLBYTES * XL_MAXFRAGS, XL_MAXFRAGS, MCLBYTES, 0, ((void*)0),
     ((void*)0), &sc->xl_mtag);
 if (error) {
  device_printf(dev, "failed to allocate mbuf dma tag\n");
  goto fail;
 }


 error = bus_dmamap_create(sc->xl_mtag, 0, &sc->xl_tmpmap);
 if (error)
  goto fail;
 xl_read_eeprom(sc, (caddr_t)&sc->xl_caps, XL_EE_CAPS, 1, 0);
 if (sc->xl_caps & XL_CAPS_NO_TXLENGTH ||
     !(sc->xl_caps & XL_CAPS_LARGE_PKTS))
  sc->xl_type = XL_TYPE_905B;
 else
  sc->xl_type = XL_TYPE_90X;


 if ((sc->xl_caps & XL_CAPS_PWRMGMT) != 0 &&
     pci_find_cap(dev, PCIY_PMG, &pmcap) == 0) {
  sc->xl_pmcap = pmcap;
  sc->xl_flags |= XL_FLAG_WOL;
  sinfo2 = 0;
  xl_read_eeprom(sc, (caddr_t)&sinfo2, XL_EE_SOFTINFO2, 1, 0);
  if ((sinfo2 & XL_SINFO2_AUX_WOL_CON) == 0 && bootverbose)
   device_printf(dev,
       "No auxiliary remote wakeup connector!\n");
 }


 sc->xl_tx_thresh = XL_MIN_FRAMELEN;

 ifp->if_flags = IFF_BROADCAST | IFF_SIMPLEX | IFF_MULTICAST;
 ifp->if_ioctl = xl_ioctl;
 ifp->if_capabilities = IFCAP_VLAN_MTU;
 if (sc->xl_type == XL_TYPE_905B) {
  ifp->if_hwassist = XL905B_CSUM_FEATURES;



  ifp->if_capabilities |= IFCAP_HWCSUM;

 }
 if ((sc->xl_flags & XL_FLAG_WOL) != 0)
  ifp->if_capabilities |= IFCAP_WOL_MAGIC;
 ifp->if_capenable = ifp->if_capabilities;



 ifp->if_start = xl_start;
 ifp->if_init = xl_init;
 IFQ_SET_MAXLEN(&ifp->if_snd, XL_TX_LIST_CNT - 1);
 ifp->if_snd.ifq_drv_maxlen = XL_TX_LIST_CNT - 1;
 IFQ_SET_READY(&ifp->if_snd);






 XL_SEL_WIN(3);
 sc->xl_media = CSR_READ_2(sc, XL_W3_MEDIA_OPT);
 if (bootverbose)
  device_printf(dev, "media options word: %x\n", sc->xl_media);

 xl_read_eeprom(sc, (char *)&xcvr, XL_EE_ICFG_0, 2, 0);
 sc->xl_xcvr = xcvr[0] | xcvr[1] << 16;
 sc->xl_xcvr &= XL_ICFG_CONNECTOR_MASK;
 sc->xl_xcvr >>= XL_ICFG_CONNECTOR_BITS;

 xl_mediacheck(sc);

 if (sc->xl_media & XL_MEDIAOPT_MII ||
     sc->xl_media & XL_MEDIAOPT_BTX ||
     sc->xl_media & XL_MEDIAOPT_BT4) {
  if (bootverbose)
   device_printf(dev, "found MII/AUTO\n");
  xl_setcfg(sc);






  phy = MII_PHY_ANY;
  if ((sc->xl_flags & XL_FLAG_PHYOK) == 0)
   phy = 24;
  error = mii_attach(dev, &sc->xl_miibus, ifp, xl_ifmedia_upd,
      xl_ifmedia_sts, BMSR_DEFCAPMASK, phy, MII_OFFSET_ANY,
      sc->xl_type == XL_TYPE_905B ? MIIF_DOPAUSE : 0);
  if (error != 0) {
   device_printf(dev, "attaching PHYs failed\n");
   goto fail;
  }
  goto done;
 }






 if (sc->xl_xcvr == XL_XCVR_AUTO)
  xl_choose_xcvr(sc, bootverbose);




 if (sc->xl_media & XL_MEDIAOPT_BT) {
  if (bootverbose)
   device_printf(dev, "found 10baseT\n");
  ifmedia_add(&sc->ifmedia, IFM_ETHER|IFM_10_T, 0, ((void*)0));
  ifmedia_add(&sc->ifmedia, IFM_ETHER|IFM_10_T|IFM_HDX, 0, ((void*)0));
  if (sc->xl_caps & XL_CAPS_FULL_DUPLEX)
   ifmedia_add(&sc->ifmedia,
       IFM_ETHER|IFM_10_T|IFM_FDX, 0, ((void*)0));
 }

 if (sc->xl_media & (XL_MEDIAOPT_AUI|XL_MEDIAOPT_10FL)) {



  if (sc->xl_type == XL_TYPE_905B &&
      sc->xl_media == XL_MEDIAOPT_10FL) {
   if (bootverbose)
    device_printf(dev, "found 10baseFL\n");
   ifmedia_add(&sc->ifmedia, IFM_ETHER|IFM_10_FL, 0, ((void*)0));
   ifmedia_add(&sc->ifmedia, IFM_ETHER|IFM_10_FL|IFM_HDX,
       0, ((void*)0));
   if (sc->xl_caps & XL_CAPS_FULL_DUPLEX)
    ifmedia_add(&sc->ifmedia,
        IFM_ETHER|IFM_10_FL|IFM_FDX, 0, ((void*)0));
  } else {
   if (bootverbose)
    device_printf(dev, "found AUI\n");
   ifmedia_add(&sc->ifmedia, IFM_ETHER|IFM_10_5, 0, ((void*)0));
  }
 }

 if (sc->xl_media & XL_MEDIAOPT_BNC) {
  if (bootverbose)
   device_printf(dev, "found BNC\n");
  ifmedia_add(&sc->ifmedia, IFM_ETHER|IFM_10_2, 0, ((void*)0));
 }

 if (sc->xl_media & XL_MEDIAOPT_BFX) {
  if (bootverbose)
   device_printf(dev, "found 100baseFX\n");
  ifmedia_add(&sc->ifmedia, IFM_ETHER|IFM_100_FX, 0, ((void*)0));
 }

 media = IFM_ETHER|IFM_100_TX|IFM_FDX;
 xl_choose_media(sc, &media);

 if (sc->xl_miibus == ((void*)0))
  ifmedia_set(&sc->ifmedia, media);

done:
 if (sc->xl_flags & XL_FLAG_NO_XCVR_PWR) {
  XL_SEL_WIN(0);
  CSR_WRITE_2(sc, XL_W0_MFG_ID, XL_NO_XCVR_PWR_MAGICBITS);
 }




 ether_ifattach(ifp, eaddr);

 error = bus_setup_intr(dev, sc->xl_irq, INTR_TYPE_NET | INTR_MPSAFE,
     ((void*)0), xl_intr, sc, &sc->xl_intrhand);
 if (error) {
  device_printf(dev, "couldn't set up irq\n");
  ether_ifdetach(ifp);
  goto fail;
 }

fail:
 if (error)
  xl_detach(dev);

 return (error);
}
