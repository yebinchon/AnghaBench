
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {int ifq_drv_maxlen; } ;
struct ifnet {int if_flags; int if_hdrlen; int if_capabilities; int if_capenable; int if_hwassist; TYPE_2__ if_snd; int if_init; int if_ioctl; int if_start; struct gem_softc* if_softc; } ;
struct gem_txsoft {int * txs_dmamap; scalar_t__ txs_ndescs; int * txs_mbuf; } ;
struct gem_softc {int sc_flags; scalar_t__ sc_cddma; int sc_variant; int sc_rxfifosize; int sc_pdmatag; int sc_rdmatag; int sc_tdmatag; int sc_cdmatag; int sc_cddmamap; int sc_control_data; struct gem_txsoft* sc_txsoft; TYPE_1__* sc_rxsoft; int sc_csum_features; int sc_enaddr; int sc_dev; int sc_miibus; int sc_mii; int sc_txfreeq; int sc_txdirtyq; int sc_mtx; int sc_rx_ch; int sc_tick_ch; struct ifnet* sc_ifp; } ;
struct gem_control_data {int dummy; } ;
struct ether_vlan_header {int dummy; } ;
struct TYPE_4__ {int * rxs_dmamap; int * rxs_mbuf; } ;


 int BMSR_DEFCAPMASK ;
 int BUS_DMA_ALLOCNOW ;
 int BUS_DMA_COHERENT ;
 int BUS_DMA_WAITOK ;
 int BUS_DMA_ZERO ;
 int BUS_SPACE_BARRIER_READ ;
 int BUS_SPACE_BARRIER_WRITE ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int BUS_SPACE_MAXSIZE_32BIT ;
 int ENOMEM ;
 int ENOSPC ;
 int ENXIO ;


 int GEM_BANK1_BARRIER (struct gem_softc*,int ,int,int) ;
 int GEM_BANK1_READ_4 (struct gem_softc*,int ) ;
 int GEM_BANK1_WRITE_4 (struct gem_softc*,int ,int) ;
 int GEM_CSUM_FEATURES ;
 scalar_t__ GEM_IS_APPLE (struct gem_softc*) ;
 int GEM_MIF_CONFIG ;
 int GEM_MIF_CONFIG_MDI0 ;
 int GEM_MIF_CONFIG_MDI1 ;
 int GEM_MIF_CONFIG_PHY_SEL ;
 int GEM_MII_CONFIG ;
 int GEM_MII_CONFIG_ENABLE ;
 int GEM_MII_DATAPATH_MII ;
 int GEM_MII_DATAPATH_MODE ;
 int GEM_MII_DATAPATH_SERDES ;
 int GEM_MII_SLINK_CONTROL ;
 int GEM_MII_SLINK_EN_SYNC_D ;
 int GEM_MII_SLINK_LOOPBACK ;
 int GEM_NRXDESC ;
 int GEM_NTXSEGS ;
 int GEM_PHYAD_EXTERNAL ;
 int GEM_PHYAD_INTERNAL ;
 int GEM_RX_FIFO_SIZE ;
 int GEM_SERDES ;

 int GEM_SUN_GEM ;
 int GEM_TXQUEUELEN ;
 int GEM_TX_FIFO_SIZE ;
 int IFCAP_HWCSUM ;
 int IFCAP_VLAN_MTU ;
 int IFF_BROADCAST ;
 int IFF_MULTICAST ;
 int IFF_SIMPLEX ;
 int IFQ_SET_MAXLEN (TYPE_2__*,int) ;
 int IFQ_SET_READY (TYPE_2__*) ;
 int IFT_ETHER ;
 int MCLBYTES ;
 int MIIF_DOPAUSE ;
 int MII_OFFSET_ANY ;
 int MII_PHY_ANY ;
 int PAGE_SIZE ;
 int STAILQ_INIT (int *) ;
 int STAILQ_INSERT_TAIL (int *,struct gem_txsoft*,int ) ;
 scalar_t__ bootverbose ;
 int bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int,int,int,int ,int *,int *,int *) ;
 int bus_dma_tag_destroy (int ) ;
 int bus_dmamap_create (int ,int ,int **) ;
 int bus_dmamap_destroy (int ,int *) ;
 int bus_dmamap_load (int ,int ,int ,int,int ,struct gem_softc*,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int bus_dmamem_alloc (int ,void**,int,int *) ;
 int bus_dmamem_free (int ,int ,int ) ;
 int bus_get_dma_tag (int ) ;
 int callout_init_mtx (int *,int *,int ) ;
 int device_get_name (int ) ;
 int device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*,...) ;
 int ether_ifattach (struct ifnet*,int ) ;
 int gem_cddma_callback ;
 int gem_init ;
 int gem_ioctl ;
 int gem_mediachange ;
 int gem_mediastatus ;
 int gem_mifinit (struct gem_softc*) ;
 int gem_reset (struct gem_softc*) ;
 int gem_start ;
 struct ifnet* if_alloc (int ) ;
 int if_free (struct ifnet*) ;
 int if_initname (struct ifnet*,int ,int ) ;
 int mii_attach (int ,int *,struct ifnet*,int ,int ,int ,int,int ,int ) ;
 int txs_q ;

int
gem_attach(struct gem_softc *sc)
{
 struct gem_txsoft *txs;
 struct ifnet *ifp;
 int error, i, phy;
 uint32_t v;

 if (bootverbose)
  device_printf(sc->sc_dev, "flags=0x%x\n", sc->sc_flags);


 ifp = sc->sc_ifp = if_alloc(IFT_ETHER);
 if (ifp == ((void*)0))
  return (ENOSPC);
 sc->sc_csum_features = GEM_CSUM_FEATURES;
 ifp->if_softc = sc;
 if_initname(ifp, device_get_name(sc->sc_dev),
     device_get_unit(sc->sc_dev));
 ifp->if_flags = IFF_BROADCAST | IFF_SIMPLEX | IFF_MULTICAST;
 ifp->if_start = gem_start;
 ifp->if_ioctl = gem_ioctl;
 ifp->if_init = gem_init;
 IFQ_SET_MAXLEN(&ifp->if_snd, GEM_TXQUEUELEN);
 ifp->if_snd.ifq_drv_maxlen = GEM_TXQUEUELEN;
 IFQ_SET_READY(&ifp->if_snd);

 callout_init_mtx(&sc->sc_tick_ch, &sc->sc_mtx, 0);





 gem_reset(sc);

 error = bus_dma_tag_create(bus_get_dma_tag(sc->sc_dev), 1, 0,
     BUS_SPACE_MAXADDR_32BIT, BUS_SPACE_MAXADDR, ((void*)0), ((void*)0),
     BUS_SPACE_MAXSIZE_32BIT, 0, BUS_SPACE_MAXSIZE_32BIT, 0, ((void*)0),
     ((void*)0), &sc->sc_pdmatag);
 if (error != 0)
  goto fail_ifnet;

 error = bus_dma_tag_create(sc->sc_pdmatag, 1, 0,
     BUS_SPACE_MAXADDR, BUS_SPACE_MAXADDR, ((void*)0), ((void*)0), MCLBYTES,
     1, MCLBYTES, BUS_DMA_ALLOCNOW, ((void*)0), ((void*)0), &sc->sc_rdmatag);
 if (error != 0)
  goto fail_ptag;

 error = bus_dma_tag_create(sc->sc_pdmatag, 1, 0,
     BUS_SPACE_MAXADDR, BUS_SPACE_MAXADDR, ((void*)0), ((void*)0),
     MCLBYTES * GEM_NTXSEGS, GEM_NTXSEGS, MCLBYTES,
     BUS_DMA_ALLOCNOW, ((void*)0), ((void*)0), &sc->sc_tdmatag);
 if (error != 0)
  goto fail_rtag;

 error = bus_dma_tag_create(sc->sc_pdmatag, PAGE_SIZE, 0,
     BUS_SPACE_MAXADDR, BUS_SPACE_MAXADDR, ((void*)0), ((void*)0),
     sizeof(struct gem_control_data), 1,
     sizeof(struct gem_control_data), 0,
     ((void*)0), ((void*)0), &sc->sc_cdmatag);
 if (error != 0)
  goto fail_ttag;





 if ((error = bus_dmamem_alloc(sc->sc_cdmatag,
     (void **)&sc->sc_control_data,
     BUS_DMA_WAITOK | BUS_DMA_COHERENT | BUS_DMA_ZERO,
     &sc->sc_cddmamap)) != 0) {
  device_printf(sc->sc_dev,
      "unable to allocate control data, error = %d\n", error);
  goto fail_ctag;
 }

 sc->sc_cddma = 0;
 if ((error = bus_dmamap_load(sc->sc_cdmatag, sc->sc_cddmamap,
     sc->sc_control_data, sizeof(struct gem_control_data),
     gem_cddma_callback, sc, 0)) != 0 || sc->sc_cddma == 0) {
  device_printf(sc->sc_dev,
      "unable to load control data DMA map, error = %d\n",
      error);
  goto fail_cmem;
 }




 STAILQ_INIT(&sc->sc_txfreeq);
 STAILQ_INIT(&sc->sc_txdirtyq);




 error = ENOMEM;
 for (i = 0; i < GEM_TXQUEUELEN; i++) {
  txs = &sc->sc_txsoft[i];
  txs->txs_mbuf = ((void*)0);
  txs->txs_ndescs = 0;
  if ((error = bus_dmamap_create(sc->sc_tdmatag, 0,
      &txs->txs_dmamap)) != 0) {
   device_printf(sc->sc_dev,
       "unable to create TX DMA map %d, error = %d\n",
       i, error);
   goto fail_txd;
  }
  STAILQ_INSERT_TAIL(&sc->sc_txfreeq, txs, txs_q);
 }




 for (i = 0; i < GEM_NRXDESC; i++) {
  if ((error = bus_dmamap_create(sc->sc_rdmatag, 0,
      &sc->sc_rxsoft[i].rxs_dmamap)) != 0) {
   device_printf(sc->sc_dev,
       "unable to create RX DMA map %d, error = %d\n",
       i, error);
   goto fail_rxd;
  }
  sc->sc_rxsoft[i].rxs_mbuf = ((void*)0);
 }


 if ((sc->sc_flags & GEM_SERDES) != 0)
  goto serdes;


 if (sc->sc_variant != 128) {
  GEM_BANK1_WRITE_4(sc, GEM_MII_DATAPATH_MODE,
      GEM_MII_DATAPATH_MII);
  GEM_BANK1_BARRIER(sc, GEM_MII_DATAPATH_MODE, 4,
      BUS_SPACE_BARRIER_READ | BUS_SPACE_BARRIER_WRITE);
 }

 gem_mifinit(sc);




 error = ENXIO;
 v = GEM_BANK1_READ_4(sc, GEM_MIF_CONFIG);
 if ((v & GEM_MIF_CONFIG_MDI1) != 0) {
  v |= GEM_MIF_CONFIG_PHY_SEL;
  GEM_BANK1_WRITE_4(sc, GEM_MIF_CONFIG, v);
  GEM_BANK1_BARRIER(sc, GEM_MIF_CONFIG, 4,
      BUS_SPACE_BARRIER_READ | BUS_SPACE_BARRIER_WRITE);
  switch (sc->sc_variant) {
  case 128:
   phy = GEM_PHYAD_EXTERNAL;
   break;
  default:
   phy = MII_PHY_ANY;
   break;
  }
  error = mii_attach(sc->sc_dev, &sc->sc_miibus, ifp,
      gem_mediachange, gem_mediastatus, BMSR_DEFCAPMASK, phy,
      MII_OFFSET_ANY, MIIF_DOPAUSE);
 }






 if (error != 0 &&
     ((v & GEM_MIF_CONFIG_MDI0) != 0 || GEM_IS_APPLE(sc))) {
  v &= ~GEM_MIF_CONFIG_PHY_SEL;
  GEM_BANK1_WRITE_4(sc, GEM_MIF_CONFIG, v);
  GEM_BANK1_BARRIER(sc, GEM_MIF_CONFIG, 4,
      BUS_SPACE_BARRIER_READ | BUS_SPACE_BARRIER_WRITE);
  switch (sc->sc_variant) {
  case 128:
  case 129:
   phy = GEM_PHYAD_INTERNAL;
   break;
  case 130:
   phy = GEM_PHYAD_EXTERNAL;
   break;
  default:
   phy = MII_PHY_ANY;
   break;
  }
  error = mii_attach(sc->sc_dev, &sc->sc_miibus, ifp,
      gem_mediachange, gem_mediastatus, BMSR_DEFCAPMASK, phy,
      MII_OFFSET_ANY, MIIF_DOPAUSE);
 }




 if (error != 0 && sc->sc_variant == GEM_SUN_GEM) {
 serdes:
  GEM_BANK1_WRITE_4(sc, GEM_MII_DATAPATH_MODE,
      GEM_MII_DATAPATH_SERDES);
  GEM_BANK1_BARRIER(sc, GEM_MII_DATAPATH_MODE, 4,
      BUS_SPACE_BARRIER_WRITE);
  GEM_BANK1_WRITE_4(sc, GEM_MII_SLINK_CONTROL,
      GEM_MII_SLINK_LOOPBACK | GEM_MII_SLINK_EN_SYNC_D);
  GEM_BANK1_BARRIER(sc, GEM_MII_SLINK_CONTROL, 4,
      BUS_SPACE_BARRIER_WRITE);
  GEM_BANK1_WRITE_4(sc, GEM_MII_CONFIG, GEM_MII_CONFIG_ENABLE);
  GEM_BANK1_BARRIER(sc, GEM_MII_CONFIG, 4,
      BUS_SPACE_BARRIER_WRITE);
  sc->sc_flags |= GEM_SERDES;
  error = mii_attach(sc->sc_dev, &sc->sc_miibus, ifp,
      gem_mediachange, gem_mediastatus, BMSR_DEFCAPMASK,
      GEM_PHYAD_EXTERNAL, MII_OFFSET_ANY, MIIF_DOPAUSE);
 }
 if (error != 0) {
  device_printf(sc->sc_dev, "attaching PHYs failed\n");
  goto fail_rxd;
 }
 sc->sc_mii = device_get_softc(sc->sc_miibus);
 sc->sc_rxfifosize = 64 *
     GEM_BANK1_READ_4(sc, GEM_RX_FIFO_SIZE);


 v = GEM_BANK1_READ_4(sc, GEM_TX_FIFO_SIZE);
 device_printf(sc->sc_dev, "%ukB RX FIFO, %ukB TX FIFO\n",
     sc->sc_rxfifosize / 1024, v / 16);


 ether_ifattach(ifp, sc->sc_enaddr);




 ifp->if_hdrlen = sizeof(struct ether_vlan_header);
 ifp->if_capabilities |= IFCAP_VLAN_MTU | IFCAP_HWCSUM;
 ifp->if_hwassist |= sc->sc_csum_features;
 ifp->if_capenable |= IFCAP_VLAN_MTU | IFCAP_HWCSUM;

 return (0);





 fail_rxd:
 for (i = 0; i < GEM_NRXDESC; i++)
  if (sc->sc_rxsoft[i].rxs_dmamap != ((void*)0))
   bus_dmamap_destroy(sc->sc_rdmatag,
       sc->sc_rxsoft[i].rxs_dmamap);
 fail_txd:
 for (i = 0; i < GEM_TXQUEUELEN; i++)
  if (sc->sc_txsoft[i].txs_dmamap != ((void*)0))
   bus_dmamap_destroy(sc->sc_tdmatag,
       sc->sc_txsoft[i].txs_dmamap);
 bus_dmamap_unload(sc->sc_cdmatag, sc->sc_cddmamap);
 fail_cmem:
 bus_dmamem_free(sc->sc_cdmatag, sc->sc_control_data,
     sc->sc_cddmamap);
 fail_ctag:
 bus_dma_tag_destroy(sc->sc_cdmatag);
 fail_ttag:
 bus_dma_tag_destroy(sc->sc_tdmatag);
 fail_rtag:
 bus_dma_tag_destroy(sc->sc_rdmatag);
 fail_ptag:
 bus_dma_tag_destroy(sc->sc_pdmatag);
 fail_ifnet:
 if_free(ifp);
 return (error);
}
