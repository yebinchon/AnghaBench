#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_5__ {int ifq_drv_maxlen; } ;
struct ifnet {int if_flags; void* sc_control_data; scalar_t__ sc_cddma; int sc_rxdptr; int sc_flags; scalar_t__ sc_variant; int if_hdrlen; int /*<<< orphan*/ * sc_tq; int /*<<< orphan*/  sc_pdmatag; int /*<<< orphan*/  sc_rdmatag; int /*<<< orphan*/  sc_tdmatag; int /*<<< orphan*/  sc_cdmatag; int /*<<< orphan*/  sc_cddmamap; struct cas_txsoft* sc_txsoft; TYPE_1__* sc_rxdsoft; int /*<<< orphan*/  if_capabilities; int /*<<< orphan*/  if_capenable; int /*<<< orphan*/  if_hwassist; int /*<<< orphan*/  sc_enaddr; int /*<<< orphan*/  sc_dev; int /*<<< orphan*/  sc_miibus; int /*<<< orphan*/  sc_mii; int /*<<< orphan*/  sc_txfreeq; int /*<<< orphan*/  sc_txdirtyq; int /*<<< orphan*/  sc_tx_task; int /*<<< orphan*/  sc_intr_task; int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_rx_ch; int /*<<< orphan*/  sc_tick_ch; TYPE_2__ if_snd; int /*<<< orphan*/  if_init; int /*<<< orphan*/  if_ioctl; int /*<<< orphan*/  if_start; struct ifnet* if_softc; struct ifnet* sc_ifp; } ;
struct ether_vlan_header {int dummy; } ;
struct cas_txsoft {int /*<<< orphan*/ * txs_dmamap; scalar_t__ txs_ndescs; int /*<<< orphan*/ * txs_mbuf; } ;
struct cas_softc {int if_flags; void* sc_control_data; scalar_t__ sc_cddma; int sc_rxdptr; int sc_flags; scalar_t__ sc_variant; int if_hdrlen; int /*<<< orphan*/ * sc_tq; int /*<<< orphan*/  sc_pdmatag; int /*<<< orphan*/  sc_rdmatag; int /*<<< orphan*/  sc_tdmatag; int /*<<< orphan*/  sc_cdmatag; int /*<<< orphan*/  sc_cddmamap; struct cas_txsoft* sc_txsoft; TYPE_1__* sc_rxdsoft; int /*<<< orphan*/  if_capabilities; int /*<<< orphan*/  if_capenable; int /*<<< orphan*/  if_hwassist; int /*<<< orphan*/  sc_enaddr; int /*<<< orphan*/  sc_dev; int /*<<< orphan*/  sc_miibus; int /*<<< orphan*/  sc_mii; int /*<<< orphan*/  sc_txfreeq; int /*<<< orphan*/  sc_txdirtyq; int /*<<< orphan*/  sc_tx_task; int /*<<< orphan*/  sc_intr_task; int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_rx_ch; int /*<<< orphan*/  sc_tick_ch; TYPE_2__ if_snd; int /*<<< orphan*/  if_init; int /*<<< orphan*/  if_ioctl; int /*<<< orphan*/  if_start; struct cas_softc* if_softc; struct cas_softc* sc_ifp; } ;
struct cas_control_data {int dummy; } ;
struct TYPE_4__ {void* rxds_buf; scalar_t__ rxds_paddr; int /*<<< orphan*/  rxds_dmamap; } ;

/* Variables and functions */
 int /*<<< orphan*/  BMSR_DEFCAPMASK ; 
 int /*<<< orphan*/  BUS_DMA_ALLOCNOW ; 
 int BUS_DMA_COHERENT ; 
 int BUS_DMA_WAITOK ; 
 int BUS_DMA_ZERO ; 
 int BUS_SPACE_BARRIER_READ ; 
 int BUS_SPACE_BARRIER_WRITE ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int BUS_SPACE_MAXSIZE ; 
 int /*<<< orphan*/  FUNC0 (struct ifnet*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  CAS_CSUM_FEATURES ; 
 int /*<<< orphan*/  CAS_MIF_CONF ; 
 int CAS_MIF_CONF_MDI0 ; 
 int CAS_MIF_CONF_MDI1 ; 
 int CAS_MIF_CONF_PHY_SELECT ; 
 int CAS_NO_CSUM ; 
 int CAS_NRXDESC ; 
 int CAS_NTXSEGS ; 
 int CAS_PAGE_SIZE ; 
 int /*<<< orphan*/  CAS_PCS_CONF ; 
 int CAS_PCS_CONF_EN ; 
 int /*<<< orphan*/  CAS_PCS_DATAPATH ; 
 int CAS_PCS_DATAPATH_MII ; 
 int CAS_PCS_DATAPATH_SERDES ; 
 int /*<<< orphan*/  CAS_PCS_SERDES_CTRL ; 
 int CAS_PCS_SERDES_CTRL_ESD ; 
 int /*<<< orphan*/  CAS_PHYAD_EXTERNAL ; 
 int FUNC1 (struct ifnet*,int /*<<< orphan*/ ) ; 
 int CAS_RX_FIFO_SIZE ; 
 scalar_t__ CAS_SATURN ; 
 int /*<<< orphan*/  CAS_SATURN_PCFG ; 
 int CAS_SATURN_PCFG_FSI ; 
 int CAS_SERDES ; 
 int CAS_TXQUEUELEN ; 
 int CAS_TX_DESC_ALIGN ; 
 int /*<<< orphan*/  CAS_TX_FIFO_SIZE ; 
 int /*<<< orphan*/  FUNC2 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int ENOMEM ; 
 int ENOSPC ; 
 int ENXIO ; 
 int /*<<< orphan*/  IFCAP_HWCSUM ; 
 int /*<<< orphan*/  IFCAP_VLAN_MTU ; 
 int IFF_BROADCAST ; 
 int IFF_MULTICAST ; 
 int IFF_SIMPLEX ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  IFT_ETHER ; 
 int MCLBYTES ; 
 int /*<<< orphan*/  MIIF_DOPAUSE ; 
 int /*<<< orphan*/  MII_OFFSET_ANY ; 
 int /*<<< orphan*/  MII_PHY_ANY ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  PI_NET ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct cas_txsoft*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct ifnet*) ; 
 int FUNC9 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ ,struct ifnet*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ ,void**,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cas_cddma_callback ; 
 int /*<<< orphan*/  cas_init ; 
 int /*<<< orphan*/  cas_intr_task ; 
 int /*<<< orphan*/  cas_ioctl ; 
 int /*<<< orphan*/  cas_mediachange ; 
 int /*<<< orphan*/  cas_mediastatus ; 
 int /*<<< orphan*/  FUNC19 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC20 (struct ifnet*) ; 
 int /*<<< orphan*/  cas_rxdma_callback ; 
 int /*<<< orphan*/  cas_start ; 
 int /*<<< orphan*/  cas_tx_task ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC26 (struct ifnet*,int /*<<< orphan*/ ) ; 
 struct ifnet* FUNC27 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC29 (struct ifnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC30 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct ifnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC31 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ *) ; 
 int FUNC33 (int /*<<< orphan*/ **,int,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  taskqueue_thread_enqueue ; 
 int /*<<< orphan*/  txs_q ; 

__attribute__((used)) static int
FUNC34(struct cas_softc *sc)
{
	struct cas_txsoft *txs;
	struct ifnet *ifp;
	int error, i;
	uint32_t v;

	/* Set up ifnet structure. */
	ifp = sc->sc_ifp = FUNC27(IFT_ETHER);
	if (ifp == NULL)
		return (ENOSPC);
	ifp->if_softc = sc;
	FUNC29(ifp, FUNC21(sc->sc_dev),
	    FUNC24(sc->sc_dev));
	ifp->if_flags = IFF_BROADCAST | IFF_SIMPLEX | IFF_MULTICAST;
	ifp->if_start = cas_start;
	ifp->if_ioctl = cas_ioctl;
	ifp->if_init = cas_init;
	FUNC4(&ifp->if_snd, CAS_TXQUEUELEN);
	ifp->if_snd.ifq_drv_maxlen = CAS_TXQUEUELEN;
	FUNC5(&ifp->if_snd);

	FUNC18(&sc->sc_tick_ch, &sc->sc_mtx, 0);
	FUNC18(&sc->sc_rx_ch, &sc->sc_mtx, 0);
	/* Create local taskq. */
	FUNC8(&sc->sc_intr_task, 0, cas_intr_task, sc);
	FUNC8(&sc->sc_tx_task, 1, cas_tx_task, ifp);
	sc->sc_tq = FUNC31("cas_taskq", M_WAITOK,
	    taskqueue_thread_enqueue, &sc->sc_tq);
	if (sc->sc_tq == NULL) {
		FUNC25(sc->sc_dev, "could not create taskqueue\n");
		error = ENXIO;
		goto fail_ifnet;
	}
	error = FUNC33(&sc->sc_tq, 1, PI_NET, "%s taskq",
	    FUNC22(sc->sc_dev));
	if (error != 0) {
		FUNC25(sc->sc_dev, "could not start threads\n");
		goto fail_taskq;
	}

	/* Make sure the chip is stopped. */
	FUNC20(sc);

	error = FUNC9(FUNC17(sc->sc_dev), 1, 0,
	    BUS_SPACE_MAXADDR, BUS_SPACE_MAXADDR, NULL, NULL,
	    BUS_SPACE_MAXSIZE, 0, BUS_SPACE_MAXSIZE, 0, NULL, NULL,
	    &sc->sc_pdmatag);
	if (error != 0)
		goto fail_taskq;

	error = FUNC9(sc->sc_pdmatag, 1, 0,
	    BUS_SPACE_MAXADDR, BUS_SPACE_MAXADDR, NULL, NULL,
	    CAS_PAGE_SIZE, 1, CAS_PAGE_SIZE, 0, NULL, NULL, &sc->sc_rdmatag);
	if (error != 0)
		goto fail_ptag;

	error = FUNC9(sc->sc_pdmatag, 1, 0,
	    BUS_SPACE_MAXADDR, BUS_SPACE_MAXADDR, NULL, NULL,
	    MCLBYTES * CAS_NTXSEGS, CAS_NTXSEGS, MCLBYTES,
	    BUS_DMA_ALLOCNOW, NULL, NULL, &sc->sc_tdmatag);
	if (error != 0)
		goto fail_rtag;

	error = FUNC9(sc->sc_pdmatag, CAS_TX_DESC_ALIGN, 0,
	    BUS_SPACE_MAXADDR, BUS_SPACE_MAXADDR, NULL, NULL,
	    sizeof(struct cas_control_data), 1,
	    sizeof(struct cas_control_data), 0,
	    NULL, NULL, &sc->sc_cdmatag);
	if (error != 0)
		goto fail_ttag;

	/*
	 * Allocate the control data structures, create and load the
	 * DMA map for it.
	 */
	if ((error = FUNC15(sc->sc_cdmatag,
	    (void **)&sc->sc_control_data,
	    BUS_DMA_WAITOK | BUS_DMA_COHERENT | BUS_DMA_ZERO,
	    &sc->sc_cddmamap)) != 0) {
		FUNC25(sc->sc_dev,
		    "unable to allocate control data, error = %d\n", error);
		goto fail_ctag;
	}

	sc->sc_cddma = 0;
	if ((error = FUNC13(sc->sc_cdmatag, sc->sc_cddmamap,
	    sc->sc_control_data, sizeof(struct cas_control_data),
	    cas_cddma_callback, sc, 0)) != 0 || sc->sc_cddma == 0) {
		FUNC25(sc->sc_dev,
		    "unable to load control data DMA map, error = %d\n",
		    error);
		goto fail_cmem;
	}

	/*
	 * Initialize the transmit job descriptors.
	 */
	FUNC6(&sc->sc_txfreeq);
	FUNC6(&sc->sc_txdirtyq);

	/*
	 * Create the transmit buffer DMA maps.
	 */
	error = ENOMEM;
	for (i = 0; i < CAS_TXQUEUELEN; i++) {
		txs = &sc->sc_txsoft[i];
		txs->txs_mbuf = NULL;
		txs->txs_ndescs = 0;
		if ((error = FUNC11(sc->sc_tdmatag, 0,
		    &txs->txs_dmamap)) != 0) {
			FUNC25(sc->sc_dev,
			    "unable to create TX DMA map %d, error = %d\n",
			    i, error);
			goto fail_txd;
		}
		FUNC7(&sc->sc_txfreeq, txs, txs_q);
	}

	/*
	 * Allocate the receive buffers, create and load the DMA maps
	 * for them.
	 */
	for (i = 0; i < CAS_NRXDESC; i++) {
		if ((error = FUNC15(sc->sc_rdmatag,
		    &sc->sc_rxdsoft[i].rxds_buf, BUS_DMA_WAITOK,
		    &sc->sc_rxdsoft[i].rxds_dmamap)) != 0) {
			FUNC25(sc->sc_dev,
			    "unable to allocate RX buffer %d, error = %d\n",
			    i, error);
			goto fail_rxmem;
		}

		sc->sc_rxdptr = i;
		sc->sc_rxdsoft[i].rxds_paddr = 0;
		if ((error = FUNC13(sc->sc_rdmatag,
		    sc->sc_rxdsoft[i].rxds_dmamap, sc->sc_rxdsoft[i].rxds_buf,
		    CAS_PAGE_SIZE, cas_rxdma_callback, sc, 0)) != 0 ||
		    sc->sc_rxdsoft[i].rxds_paddr == 0) {
			FUNC25(sc->sc_dev,
			    "unable to load RX DMA map %d, error = %d\n",
			    i, error);
			goto fail_rxmap;
		}
	}

	if ((sc->sc_flags & CAS_SERDES) == 0) {
		FUNC2(sc, CAS_PCS_DATAPATH, CAS_PCS_DATAPATH_MII);
		FUNC0(sc, CAS_PCS_DATAPATH, 4,
		    BUS_SPACE_BARRIER_READ | BUS_SPACE_BARRIER_WRITE);
		FUNC19(sc);
		/*
		 * Look for an external PHY.
		 */
		error = ENXIO;
		v = FUNC1(sc, CAS_MIF_CONF);
		if ((v & CAS_MIF_CONF_MDI1) != 0) {
			v |= CAS_MIF_CONF_PHY_SELECT;
			FUNC2(sc, CAS_MIF_CONF, v);
			FUNC0(sc, CAS_MIF_CONF, 4,
			    BUS_SPACE_BARRIER_READ | BUS_SPACE_BARRIER_WRITE);
			/* Enable/unfreeze the GMII pins of Saturn. */
			if (sc->sc_variant == CAS_SATURN) {
				FUNC2(sc, CAS_SATURN_PCFG,
				    FUNC1(sc, CAS_SATURN_PCFG) &
				    ~CAS_SATURN_PCFG_FSI);
				FUNC0(sc, CAS_SATURN_PCFG, 4,
				    BUS_SPACE_BARRIER_READ |
				    BUS_SPACE_BARRIER_WRITE);
				FUNC3(10000);
			}
			error = FUNC30(sc->sc_dev, &sc->sc_miibus, ifp,
			    cas_mediachange, cas_mediastatus, BMSR_DEFCAPMASK,
			    MII_PHY_ANY, MII_OFFSET_ANY, MIIF_DOPAUSE);
		}
		/*
		 * Fall back on an internal PHY if no external PHY was found.
		 */
		if (error != 0 && (v & CAS_MIF_CONF_MDI0) != 0) {
			v &= ~CAS_MIF_CONF_PHY_SELECT;
			FUNC2(sc, CAS_MIF_CONF, v);
			FUNC0(sc, CAS_MIF_CONF, 4,
			    BUS_SPACE_BARRIER_READ | BUS_SPACE_BARRIER_WRITE);
			/* Freeze the GMII pins of Saturn for saving power. */
			if (sc->sc_variant == CAS_SATURN) {
				FUNC2(sc, CAS_SATURN_PCFG,
				    FUNC1(sc, CAS_SATURN_PCFG) |
				    CAS_SATURN_PCFG_FSI);
				FUNC0(sc, CAS_SATURN_PCFG, 4,
				    BUS_SPACE_BARRIER_READ |
				    BUS_SPACE_BARRIER_WRITE);
				FUNC3(10000);
			}
			error = FUNC30(sc->sc_dev, &sc->sc_miibus, ifp,
			    cas_mediachange, cas_mediastatus, BMSR_DEFCAPMASK,
			    MII_PHY_ANY, MII_OFFSET_ANY, MIIF_DOPAUSE);
		}
	} else {
		/*
		 * Use the external PCS SERDES.
		 */
		FUNC2(sc, CAS_PCS_DATAPATH, CAS_PCS_DATAPATH_SERDES);
		FUNC0(sc, CAS_PCS_DATAPATH, 4, BUS_SPACE_BARRIER_WRITE);
		/* Enable/unfreeze the SERDES pins of Saturn. */
		if (sc->sc_variant == CAS_SATURN) {
			FUNC2(sc, CAS_SATURN_PCFG, 0);
			FUNC0(sc, CAS_SATURN_PCFG, 4,
			    BUS_SPACE_BARRIER_WRITE);
		}
		FUNC2(sc, CAS_PCS_SERDES_CTRL, CAS_PCS_SERDES_CTRL_ESD);
		FUNC0(sc, CAS_PCS_SERDES_CTRL, 4,
		    BUS_SPACE_BARRIER_WRITE);
		FUNC2(sc, CAS_PCS_CONF, CAS_PCS_CONF_EN);
		FUNC0(sc, CAS_PCS_CONF, 4,
		    BUS_SPACE_BARRIER_READ | BUS_SPACE_BARRIER_WRITE);
		error = FUNC30(sc->sc_dev, &sc->sc_miibus, ifp,
		    cas_mediachange, cas_mediastatus, BMSR_DEFCAPMASK,
		    CAS_PHYAD_EXTERNAL, MII_OFFSET_ANY, MIIF_DOPAUSE);
	}
	if (error != 0) {
		FUNC25(sc->sc_dev, "attaching PHYs failed\n");
		goto fail_rxmap;
	}
	sc->sc_mii = FUNC23(sc->sc_miibus);

	/*
	 * From this point forward, the attachment cannot fail.  A failure
	 * before this point releases all resources that may have been
	 * allocated.
	 */

	/* Announce FIFO sizes. */
	v = FUNC1(sc, CAS_TX_FIFO_SIZE);
	FUNC25(sc->sc_dev, "%ukB RX FIFO, %ukB TX FIFO\n",
	    CAS_RX_FIFO_SIZE / 1024, v / 16);

	/* Attach the interface. */
	FUNC26(ifp, sc->sc_enaddr);

	/*
	 * Tell the upper layer(s) we support long frames/checksum offloads.
	 */
	ifp->if_hdrlen = sizeof(struct ether_vlan_header);
	ifp->if_capabilities = IFCAP_VLAN_MTU;
	if ((sc->sc_flags & CAS_NO_CSUM) == 0) {
		ifp->if_capabilities |= IFCAP_HWCSUM;
		ifp->if_hwassist = CAS_CSUM_FEATURES;
	}
	ifp->if_capenable = ifp->if_capabilities;

	return (0);

	/*
	 * Free any resources we've allocated during the failed attach
	 * attempt.  Do this in reverse order and fall through.
	 */
 fail_rxmap:
	for (i = 0; i < CAS_NRXDESC; i++)
		if (sc->sc_rxdsoft[i].rxds_paddr != 0)
			FUNC14(sc->sc_rdmatag,
			    sc->sc_rxdsoft[i].rxds_dmamap);
 fail_rxmem:
	for (i = 0; i < CAS_NRXDESC; i++)
		if (sc->sc_rxdsoft[i].rxds_buf != NULL)
			FUNC16(sc->sc_rdmatag,
			    sc->sc_rxdsoft[i].rxds_buf,
			    sc->sc_rxdsoft[i].rxds_dmamap);
 fail_txd:
	for (i = 0; i < CAS_TXQUEUELEN; i++)
		if (sc->sc_txsoft[i].txs_dmamap != NULL)
			FUNC12(sc->sc_tdmatag,
			    sc->sc_txsoft[i].txs_dmamap);
	FUNC14(sc->sc_cdmatag, sc->sc_cddmamap);
 fail_cmem:
	FUNC16(sc->sc_cdmatag, sc->sc_control_data,
	    sc->sc_cddmamap);
 fail_ctag:
	FUNC10(sc->sc_cdmatag);
 fail_ttag:
	FUNC10(sc->sc_tdmatag);
 fail_rtag:
	FUNC10(sc->sc_rdmatag);
 fail_ptag:
	FUNC10(sc->sc_pdmatag);
 fail_taskq:
	FUNC32(sc->sc_tq);
 fail_ifnet:
	FUNC28(ifp);
	return (error);
}