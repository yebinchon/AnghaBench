#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct mii_data {int /*<<< orphan*/  mii_media; } ;
struct mgb_softc {int /*<<< orphan*/  dev; int /*<<< orphan*/ * pba; int /*<<< orphan*/  miibus; int /*<<< orphan*/  ctx; } ;
struct mgb_ring_desc {int dummy; } ;
struct ether_addr {int /*<<< orphan*/  octet; } ;
typedef  TYPE_1__* if_softc_ctx_t ;
typedef  int /*<<< orphan*/  if_ctx_t ;
struct TYPE_3__ {int* isc_txqsizes; int* isc_ntxd; int* isc_rxqsizes; int* isc_nrxd; int isc_nrxqsets; int isc_ntxqsets; int isc_capabilities; int isc_capenable; int isc_msix_bar; int /*<<< orphan*/ * isc_media; scalar_t__ isc_tx_csum_flags; int /*<<< orphan*/  isc_tx_nsegments; int /*<<< orphan*/ * isc_txrx; } ;

/* Variables and functions */
 int /*<<< orphan*/  BMSR_DEFCAPMASK ; 
 int /*<<< orphan*/  FUNC0 (struct mgb_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ENXIO ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int IFCAP_JUMBO_MTU ; 
 int IFCAP_LRO ; 
 int IFCAP_RXCSUM ; 
 int IFCAP_RXCSUM_IPV6 ; 
 int IFCAP_TSO4 ; 
 int IFCAP_TSO6 ; 
 int IFCAP_TXCSUM ; 
 int IFCAP_TXCSUM_IPV6 ; 
 int IFCAP_VLAN_HWCSUM ; 
 int IFCAP_VLAN_HWFILTER ; 
 int IFCAP_VLAN_HWTAGGING ; 
 int IFCAP_VLAN_HWTSO ; 
 int IFCAP_VLAN_MTU ; 
 int /*<<< orphan*/  MGB_DMA_MAXSEGS ; 
 int /*<<< orphan*/  MGB_INTR_VEC_OTHER_MAP ; 
 int /*<<< orphan*/  MGB_INTR_VEC_RX_MAP ; 
 int /*<<< orphan*/  MGB_INTR_VEC_TX_MAP ; 
#define  MGB_LAN7430_DEVICE_ID 129 
#define  MGB_LAN7431_DEVICE_ID 128 
 int /*<<< orphan*/  MIIF_DOPAUSE ; 
 int /*<<< orphan*/  MII_OFFSET_ANY ; 
 int MII_PHY_ANY ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 struct mii_data* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct ether_addr*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 struct mgb_softc* FUNC10 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct mgb_softc*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct mgb_softc*,struct ether_addr*) ; 
 int FUNC16 (struct mgb_softc*) ; 
 int /*<<< orphan*/  mgb_media_change ; 
 int /*<<< orphan*/  mgb_media_status ; 
 int FUNC17 (struct mgb_softc*) ; 
 int /*<<< orphan*/  mgb_txrx ; 
 int FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC19 (int /*<<< orphan*/ ) ; 
 int FUNC20 (int /*<<< orphan*/ ) ; 
 int FUNC21 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC22(if_ctx_t ctx)
{
	struct mgb_softc *sc;
	if_softc_ctx_t scctx;
	int error, phyaddr, rid;
	struct ether_addr hwaddr;
	struct mii_data *miid;

	sc = FUNC10(ctx);
	sc->ctx = ctx;
	sc->dev = FUNC8(ctx);
	scctx = FUNC11(ctx);

	/* IFLIB required setup */
	scctx->isc_txrx = &mgb_txrx;
	scctx->isc_tx_nsegments = MGB_DMA_MAXSEGS;
	/* Ring desc queues */
	scctx->isc_txqsizes[0] = sizeof(struct mgb_ring_desc) *
	    scctx->isc_ntxd[0];
	scctx->isc_rxqsizes[0] = sizeof(struct mgb_ring_desc) *
	    scctx->isc_nrxd[0];

	/* Head WB queues */
	scctx->isc_txqsizes[1] = sizeof(uint32_t) * scctx->isc_ntxd[1];
	scctx->isc_rxqsizes[1] = sizeof(uint32_t) * scctx->isc_nrxd[1];

	/* XXX: Must have 1 txqset, but can have up to 4 rxqsets */
	scctx->isc_nrxqsets = 1;
	scctx->isc_ntxqsets = 1;

	/* scctx->isc_tx_csum_flags = (CSUM_TCP | CSUM_UDP) |
	    (CSUM_TCP_IPV6 | CSUM_UDP_IPV6) | CSUM_TSO */
	scctx->isc_tx_csum_flags = 0;
	scctx->isc_capabilities = scctx->isc_capenable = 0;
#if 0
	/*
	 * CSUM, TSO and VLAN support are TBD
	 */
	    IFCAP_TXCSUM | IFCAP_TXCSUM_IPV6 |
	    IFCAP_TSO4 | IFCAP_TSO6 |
	    IFCAP_RXCSUM | IFCAP_RXCSUM_IPV6 |
	    IFCAP_VLAN_MTU | IFCAP_VLAN_HWTAGGING |
	    IFCAP_VLAN_HWCSUM | IFCAP_VLAN_HWTSO |
	    IFCAP_JUMBO_MTU;
	scctx->isc_capabilities |= IFCAP_LRO | IFCAP_VLAN_HWFILTER;
#endif

	/* get the BAR */
	error = FUNC13(sc);
	if (error != 0) {
		FUNC6(sc->dev,
		    "Unable to allocate bus resource: registers.\n");
		goto fail;
	}

	error = FUNC17(sc);
	if (error != 0)
		goto fail;

	error = FUNC16(sc);
	if (error != 0) {
		FUNC6(sc->dev,
		    "MGB device init failed. (err: %d)\n", error);
		goto fail;
	}

	switch (FUNC19(sc->dev))
	{
	case MGB_LAN7430_DEVICE_ID:
		phyaddr = 1;
		break;
	case MGB_LAN7431_DEVICE_ID:
	default:
		phyaddr = MII_PHY_ANY;
		break;
	}

	/* XXX: Would be nice(r) if locked methods were here */
	error = FUNC18(sc->dev, &sc->miibus, FUNC9(ctx),
	    mgb_media_change, mgb_media_status,
	    BMSR_DEFCAPMASK, phyaddr, MII_OFFSET_ANY, MIIF_DOPAUSE);
	if (error != 0) {
		FUNC6(sc->dev, "Failed to attach MII interface\n");
		goto fail;
	}

	miid = FUNC5(sc->miibus);
	scctx->isc_media = &miid->mii_media;

	scctx->isc_msix_bar = FUNC21(sc->dev);
	/** Setup PBA BAR **/
	rid = FUNC20(sc->dev);
	if (rid != scctx->isc_msix_bar) {
		sc->pba = FUNC4(sc->dev, SYS_RES_MEMORY,
		    &rid, RF_ACTIVE);
		if (sc->pba == NULL) {
			error = ENXIO;
			FUNC6(sc->dev, "Failed to setup PBA BAR\n");
			goto fail;
		}
	}

	FUNC15(sc, &hwaddr);
	if (FUNC1(hwaddr.octet) ||
	    FUNC2(hwaddr.octet) ||
	    FUNC3(hwaddr.octet))
		FUNC7(FUNC9(ctx), &hwaddr);

	/*
	 * XXX: if the MAC address was generated the linux driver
	 * writes it back to the device.
	 */
	FUNC12(ctx, hwaddr.octet);

	/* Map all vectors to vector 0 (admin interrupts) by default. */
	FUNC0(sc, MGB_INTR_VEC_RX_MAP, 0);
	FUNC0(sc, MGB_INTR_VEC_TX_MAP, 0);
	FUNC0(sc, MGB_INTR_VEC_OTHER_MAP, 0);

	return (0);

fail:
	FUNC14(ctx);
	return (error);
}