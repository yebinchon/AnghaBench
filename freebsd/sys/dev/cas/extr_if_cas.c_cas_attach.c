
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {int ifq_drv_maxlen; } ;
struct ifnet {int if_flags; void* sc_control_data; scalar_t__ sc_cddma; int sc_rxdptr; int sc_flags; scalar_t__ sc_variant; int if_hdrlen; int * sc_tq; int sc_pdmatag; int sc_rdmatag; int sc_tdmatag; int sc_cdmatag; int sc_cddmamap; struct cas_txsoft* sc_txsoft; TYPE_1__* sc_rxdsoft; int if_capabilities; int if_capenable; int if_hwassist; int sc_enaddr; int sc_dev; int sc_miibus; int sc_mii; int sc_txfreeq; int sc_txdirtyq; int sc_tx_task; int sc_intr_task; int sc_mtx; int sc_rx_ch; int sc_tick_ch; TYPE_2__ if_snd; int if_init; int if_ioctl; int if_start; struct ifnet* if_softc; struct ifnet* sc_ifp; } ;
struct ether_vlan_header {int dummy; } ;
struct cas_txsoft {int * txs_dmamap; scalar_t__ txs_ndescs; int * txs_mbuf; } ;
struct cas_softc {int if_flags; void* sc_control_data; scalar_t__ sc_cddma; int sc_rxdptr; int sc_flags; scalar_t__ sc_variant; int if_hdrlen; int * sc_tq; int sc_pdmatag; int sc_rdmatag; int sc_tdmatag; int sc_cdmatag; int sc_cddmamap; struct cas_txsoft* sc_txsoft; TYPE_1__* sc_rxdsoft; int if_capabilities; int if_capenable; int if_hwassist; int sc_enaddr; int sc_dev; int sc_miibus; int sc_mii; int sc_txfreeq; int sc_txdirtyq; int sc_tx_task; int sc_intr_task; int sc_mtx; int sc_rx_ch; int sc_tick_ch; TYPE_2__ if_snd; int if_init; int if_ioctl; int if_start; struct cas_softc* if_softc; struct cas_softc* sc_ifp; } ;
struct cas_control_data {int dummy; } ;
struct TYPE_4__ {void* rxds_buf; scalar_t__ rxds_paddr; int rxds_dmamap; } ;


 int BMSR_DEFCAPMASK ;
 int BUS_DMA_ALLOCNOW ;
 int BUS_DMA_COHERENT ;
 int BUS_DMA_WAITOK ;
 int BUS_DMA_ZERO ;
 int BUS_SPACE_BARRIER_READ ;
 int BUS_SPACE_BARRIER_WRITE ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXSIZE ;
 int CAS_BARRIER (struct ifnet*,int ,int,int) ;
 int CAS_CSUM_FEATURES ;
 int CAS_MIF_CONF ;
 int CAS_MIF_CONF_MDI0 ;
 int CAS_MIF_CONF_MDI1 ;
 int CAS_MIF_CONF_PHY_SELECT ;
 int CAS_NO_CSUM ;
 int CAS_NRXDESC ;
 int CAS_NTXSEGS ;
 int CAS_PAGE_SIZE ;
 int CAS_PCS_CONF ;
 int CAS_PCS_CONF_EN ;
 int CAS_PCS_DATAPATH ;
 int CAS_PCS_DATAPATH_MII ;
 int CAS_PCS_DATAPATH_SERDES ;
 int CAS_PCS_SERDES_CTRL ;
 int CAS_PCS_SERDES_CTRL_ESD ;
 int CAS_PHYAD_EXTERNAL ;
 int CAS_READ_4 (struct ifnet*,int ) ;
 int CAS_RX_FIFO_SIZE ;
 scalar_t__ CAS_SATURN ;
 int CAS_SATURN_PCFG ;
 int CAS_SATURN_PCFG_FSI ;
 int CAS_SERDES ;
 int CAS_TXQUEUELEN ;
 int CAS_TX_DESC_ALIGN ;
 int CAS_TX_FIFO_SIZE ;
 int CAS_WRITE_4 (struct ifnet*,int ,int) ;
 int DELAY (int) ;
 int ENOMEM ;
 int ENOSPC ;
 int ENXIO ;
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
 int M_WAITOK ;
 int PI_NET ;
 int STAILQ_INIT (int *) ;
 int STAILQ_INSERT_TAIL (int *,struct cas_txsoft*,int ) ;
 int TASK_INIT (int *,int,int ,struct ifnet*) ;
 int bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int,int,int,int ,int *,int *,int *) ;
 int bus_dma_tag_destroy (int ) ;
 int bus_dmamap_create (int ,int ,int **) ;
 int bus_dmamap_destroy (int ,int *) ;
 int bus_dmamap_load (int ,int ,void*,int,int ,struct ifnet*,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int bus_dmamem_alloc (int ,void**,int,int *) ;
 int bus_dmamem_free (int ,void*,int ) ;
 int bus_get_dma_tag (int ) ;
 int callout_init_mtx (int *,int *,int ) ;
 int cas_cddma_callback ;
 int cas_init ;
 int cas_intr_task ;
 int cas_ioctl ;
 int cas_mediachange ;
 int cas_mediastatus ;
 int cas_mifinit (struct ifnet*) ;
 int cas_reset (struct ifnet*) ;
 int cas_rxdma_callback ;
 int cas_start ;
 int cas_tx_task ;
 int device_get_name (int ) ;
 int device_get_nameunit (int ) ;
 int device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*,...) ;
 int ether_ifattach (struct ifnet*,int ) ;
 struct ifnet* if_alloc (int ) ;
 int if_free (struct ifnet*) ;
 int if_initname (struct ifnet*,int ,int ) ;
 int mii_attach (int ,int *,struct ifnet*,int ,int ,int ,int ,int ,int ) ;
 int * taskqueue_create_fast (char*,int ,int ,int **) ;
 int taskqueue_free (int *) ;
 int taskqueue_start_threads (int **,int,int ,char*,int ) ;
 int taskqueue_thread_enqueue ;
 int txs_q ;

__attribute__((used)) static int
cas_attach(struct cas_softc *sc)
{
 struct cas_txsoft *txs;
 struct ifnet *ifp;
 int error, i;
 uint32_t v;


 ifp = sc->sc_ifp = if_alloc(IFT_ETHER);
 if (ifp == ((void*)0))
  return (ENOSPC);
 ifp->if_softc = sc;
 if_initname(ifp, device_get_name(sc->sc_dev),
     device_get_unit(sc->sc_dev));
 ifp->if_flags = IFF_BROADCAST | IFF_SIMPLEX | IFF_MULTICAST;
 ifp->if_start = cas_start;
 ifp->if_ioctl = cas_ioctl;
 ifp->if_init = cas_init;
 IFQ_SET_MAXLEN(&ifp->if_snd, CAS_TXQUEUELEN);
 ifp->if_snd.ifq_drv_maxlen = CAS_TXQUEUELEN;
 IFQ_SET_READY(&ifp->if_snd);

 callout_init_mtx(&sc->sc_tick_ch, &sc->sc_mtx, 0);
 callout_init_mtx(&sc->sc_rx_ch, &sc->sc_mtx, 0);

 TASK_INIT(&sc->sc_intr_task, 0, cas_intr_task, sc);
 TASK_INIT(&sc->sc_tx_task, 1, cas_tx_task, ifp);
 sc->sc_tq = taskqueue_create_fast("cas_taskq", M_WAITOK,
     taskqueue_thread_enqueue, &sc->sc_tq);
 if (sc->sc_tq == ((void*)0)) {
  device_printf(sc->sc_dev, "could not create taskqueue\n");
  error = ENXIO;
  goto fail_ifnet;
 }
 error = taskqueue_start_threads(&sc->sc_tq, 1, PI_NET, "%s taskq",
     device_get_nameunit(sc->sc_dev));
 if (error != 0) {
  device_printf(sc->sc_dev, "could not start threads\n");
  goto fail_taskq;
 }


 cas_reset(sc);

 error = bus_dma_tag_create(bus_get_dma_tag(sc->sc_dev), 1, 0,
     BUS_SPACE_MAXADDR, BUS_SPACE_MAXADDR, ((void*)0), ((void*)0),
     BUS_SPACE_MAXSIZE, 0, BUS_SPACE_MAXSIZE, 0, ((void*)0), ((void*)0),
     &sc->sc_pdmatag);
 if (error != 0)
  goto fail_taskq;

 error = bus_dma_tag_create(sc->sc_pdmatag, 1, 0,
     BUS_SPACE_MAXADDR, BUS_SPACE_MAXADDR, ((void*)0), ((void*)0),
     CAS_PAGE_SIZE, 1, CAS_PAGE_SIZE, 0, ((void*)0), ((void*)0), &sc->sc_rdmatag);
 if (error != 0)
  goto fail_ptag;

 error = bus_dma_tag_create(sc->sc_pdmatag, 1, 0,
     BUS_SPACE_MAXADDR, BUS_SPACE_MAXADDR, ((void*)0), ((void*)0),
     MCLBYTES * CAS_NTXSEGS, CAS_NTXSEGS, MCLBYTES,
     BUS_DMA_ALLOCNOW, ((void*)0), ((void*)0), &sc->sc_tdmatag);
 if (error != 0)
  goto fail_rtag;

 error = bus_dma_tag_create(sc->sc_pdmatag, CAS_TX_DESC_ALIGN, 0,
     BUS_SPACE_MAXADDR, BUS_SPACE_MAXADDR, ((void*)0), ((void*)0),
     sizeof(struct cas_control_data), 1,
     sizeof(struct cas_control_data), 0,
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
     sc->sc_control_data, sizeof(struct cas_control_data),
     cas_cddma_callback, sc, 0)) != 0 || sc->sc_cddma == 0) {
  device_printf(sc->sc_dev,
      "unable to load control data DMA map, error = %d\n",
      error);
  goto fail_cmem;
 }




 STAILQ_INIT(&sc->sc_txfreeq);
 STAILQ_INIT(&sc->sc_txdirtyq);




 error = ENOMEM;
 for (i = 0; i < CAS_TXQUEUELEN; i++) {
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





 for (i = 0; i < CAS_NRXDESC; i++) {
  if ((error = bus_dmamem_alloc(sc->sc_rdmatag,
      &sc->sc_rxdsoft[i].rxds_buf, BUS_DMA_WAITOK,
      &sc->sc_rxdsoft[i].rxds_dmamap)) != 0) {
   device_printf(sc->sc_dev,
       "unable to allocate RX buffer %d, error = %d\n",
       i, error);
   goto fail_rxmem;
  }

  sc->sc_rxdptr = i;
  sc->sc_rxdsoft[i].rxds_paddr = 0;
  if ((error = bus_dmamap_load(sc->sc_rdmatag,
      sc->sc_rxdsoft[i].rxds_dmamap, sc->sc_rxdsoft[i].rxds_buf,
      CAS_PAGE_SIZE, cas_rxdma_callback, sc, 0)) != 0 ||
      sc->sc_rxdsoft[i].rxds_paddr == 0) {
   device_printf(sc->sc_dev,
       "unable to load RX DMA map %d, error = %d\n",
       i, error);
   goto fail_rxmap;
  }
 }

 if ((sc->sc_flags & CAS_SERDES) == 0) {
  CAS_WRITE_4(sc, CAS_PCS_DATAPATH, CAS_PCS_DATAPATH_MII);
  CAS_BARRIER(sc, CAS_PCS_DATAPATH, 4,
      BUS_SPACE_BARRIER_READ | BUS_SPACE_BARRIER_WRITE);
  cas_mifinit(sc);



  error = ENXIO;
  v = CAS_READ_4(sc, CAS_MIF_CONF);
  if ((v & CAS_MIF_CONF_MDI1) != 0) {
   v |= CAS_MIF_CONF_PHY_SELECT;
   CAS_WRITE_4(sc, CAS_MIF_CONF, v);
   CAS_BARRIER(sc, CAS_MIF_CONF, 4,
       BUS_SPACE_BARRIER_READ | BUS_SPACE_BARRIER_WRITE);

   if (sc->sc_variant == CAS_SATURN) {
    CAS_WRITE_4(sc, CAS_SATURN_PCFG,
        CAS_READ_4(sc, CAS_SATURN_PCFG) &
        ~CAS_SATURN_PCFG_FSI);
    CAS_BARRIER(sc, CAS_SATURN_PCFG, 4,
        BUS_SPACE_BARRIER_READ |
        BUS_SPACE_BARRIER_WRITE);
    DELAY(10000);
   }
   error = mii_attach(sc->sc_dev, &sc->sc_miibus, ifp,
       cas_mediachange, cas_mediastatus, BMSR_DEFCAPMASK,
       MII_PHY_ANY, MII_OFFSET_ANY, MIIF_DOPAUSE);
  }



  if (error != 0 && (v & CAS_MIF_CONF_MDI0) != 0) {
   v &= ~CAS_MIF_CONF_PHY_SELECT;
   CAS_WRITE_4(sc, CAS_MIF_CONF, v);
   CAS_BARRIER(sc, CAS_MIF_CONF, 4,
       BUS_SPACE_BARRIER_READ | BUS_SPACE_BARRIER_WRITE);

   if (sc->sc_variant == CAS_SATURN) {
    CAS_WRITE_4(sc, CAS_SATURN_PCFG,
        CAS_READ_4(sc, CAS_SATURN_PCFG) |
        CAS_SATURN_PCFG_FSI);
    CAS_BARRIER(sc, CAS_SATURN_PCFG, 4,
        BUS_SPACE_BARRIER_READ |
        BUS_SPACE_BARRIER_WRITE);
    DELAY(10000);
   }
   error = mii_attach(sc->sc_dev, &sc->sc_miibus, ifp,
       cas_mediachange, cas_mediastatus, BMSR_DEFCAPMASK,
       MII_PHY_ANY, MII_OFFSET_ANY, MIIF_DOPAUSE);
  }
 } else {



  CAS_WRITE_4(sc, CAS_PCS_DATAPATH, CAS_PCS_DATAPATH_SERDES);
  CAS_BARRIER(sc, CAS_PCS_DATAPATH, 4, BUS_SPACE_BARRIER_WRITE);

  if (sc->sc_variant == CAS_SATURN) {
   CAS_WRITE_4(sc, CAS_SATURN_PCFG, 0);
   CAS_BARRIER(sc, CAS_SATURN_PCFG, 4,
       BUS_SPACE_BARRIER_WRITE);
  }
  CAS_WRITE_4(sc, CAS_PCS_SERDES_CTRL, CAS_PCS_SERDES_CTRL_ESD);
  CAS_BARRIER(sc, CAS_PCS_SERDES_CTRL, 4,
      BUS_SPACE_BARRIER_WRITE);
  CAS_WRITE_4(sc, CAS_PCS_CONF, CAS_PCS_CONF_EN);
  CAS_BARRIER(sc, CAS_PCS_CONF, 4,
      BUS_SPACE_BARRIER_READ | BUS_SPACE_BARRIER_WRITE);
  error = mii_attach(sc->sc_dev, &sc->sc_miibus, ifp,
      cas_mediachange, cas_mediastatus, BMSR_DEFCAPMASK,
      CAS_PHYAD_EXTERNAL, MII_OFFSET_ANY, MIIF_DOPAUSE);
 }
 if (error != 0) {
  device_printf(sc->sc_dev, "attaching PHYs failed\n");
  goto fail_rxmap;
 }
 sc->sc_mii = device_get_softc(sc->sc_miibus);
 v = CAS_READ_4(sc, CAS_TX_FIFO_SIZE);
 device_printf(sc->sc_dev, "%ukB RX FIFO, %ukB TX FIFO\n",
     CAS_RX_FIFO_SIZE / 1024, v / 16);


 ether_ifattach(ifp, sc->sc_enaddr);




 ifp->if_hdrlen = sizeof(struct ether_vlan_header);
 ifp->if_capabilities = IFCAP_VLAN_MTU;
 if ((sc->sc_flags & CAS_NO_CSUM) == 0) {
  ifp->if_capabilities |= IFCAP_HWCSUM;
  ifp->if_hwassist = CAS_CSUM_FEATURES;
 }
 ifp->if_capenable = ifp->if_capabilities;

 return (0);





 fail_rxmap:
 for (i = 0; i < CAS_NRXDESC; i++)
  if (sc->sc_rxdsoft[i].rxds_paddr != 0)
   bus_dmamap_unload(sc->sc_rdmatag,
       sc->sc_rxdsoft[i].rxds_dmamap);
 fail_rxmem:
 for (i = 0; i < CAS_NRXDESC; i++)
  if (sc->sc_rxdsoft[i].rxds_buf != ((void*)0))
   bus_dmamem_free(sc->sc_rdmatag,
       sc->sc_rxdsoft[i].rxds_buf,
       sc->sc_rxdsoft[i].rxds_dmamap);
 fail_txd:
 for (i = 0; i < CAS_TXQUEUELEN; i++)
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
 fail_taskq:
 taskqueue_free(sc->sc_tq);
 fail_ifnet:
 if_free(ifp);
 return (error);
}
