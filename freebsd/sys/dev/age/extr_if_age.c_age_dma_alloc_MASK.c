#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct age_txdesc {int /*<<< orphan*/ * tx_dmamap; int /*<<< orphan*/ * tx_m; } ;
struct TYPE_4__ {int /*<<< orphan*/  age_rx_tag; struct age_rxdesc* age_rxdesc; int /*<<< orphan*/ * age_rx_sparemap; int /*<<< orphan*/  age_tx_tag; struct age_txdesc* age_txdesc; int /*<<< orphan*/  age_buffer_tag; int /*<<< orphan*/  age_smb_block_map; int /*<<< orphan*/  age_smb_block_tag; int /*<<< orphan*/  age_cmb_block_map; int /*<<< orphan*/  age_cmb_block_tag; int /*<<< orphan*/  age_rr_ring_map; int /*<<< orphan*/  age_rr_ring_tag; int /*<<< orphan*/  age_rx_ring_map; int /*<<< orphan*/  age_rx_ring_tag; int /*<<< orphan*/  age_tx_ring_map; int /*<<< orphan*/  age_tx_ring_tag; int /*<<< orphan*/  age_parent_tag; } ;
struct TYPE_3__ {scalar_t__ age_tx_ring_paddr; scalar_t__ age_rx_ring_paddr; scalar_t__ age_rr_ring_paddr; scalar_t__ age_cmb_block_paddr; scalar_t__ age_smb_block_paddr; int /*<<< orphan*/  age_smb_block; int /*<<< orphan*/  age_cmb_block; int /*<<< orphan*/  age_rr_ring; int /*<<< orphan*/  age_rx_ring; int /*<<< orphan*/  age_tx_ring; } ;
struct age_softc {int /*<<< orphan*/  age_dev; TYPE_2__ age_cdata; TYPE_1__ age_rdata; } ;
struct age_rxdesc {int /*<<< orphan*/ * rx_dmamap; int /*<<< orphan*/ * rx_m; } ;
struct age_dmamap_arg {scalar_t__ age_busaddr; } ;
typedef  scalar_t__ bus_addr_t ;

/* Variables and functions */
 int AGE_CMB_ALIGN ; 
 int /*<<< orphan*/  AGE_CMB_BLOCK_SZ ; 
 int AGE_MAXTXSEGS ; 
 int AGE_RR_RING_ALIGN ; 
 int /*<<< orphan*/  AGE_RR_RING_SZ ; 
 int AGE_RX_BUF_ALIGN ; 
 int AGE_RX_RING_ALIGN ; 
 int AGE_RX_RING_CNT ; 
 int /*<<< orphan*/  AGE_RX_RING_SZ ; 
 int AGE_SMB_ALIGN ; 
 int /*<<< orphan*/  AGE_SMB_BLOCK_SZ ; 
 int /*<<< orphan*/  AGE_TSO_MAXSEGSIZE ; 
 int /*<<< orphan*/  AGE_TSO_MAXSIZE ; 
 int AGE_TX_RING_ALIGN ; 
 int AGE_TX_RING_CNT ; 
 int /*<<< orphan*/  AGE_TX_RING_SZ ; 
 int BUS_DMA_COHERENT ; 
 int BUS_DMA_WAITOK ; 
 int BUS_DMA_ZERO ; 
 scalar_t__ BUS_SPACE_MAXADDR ; 
 scalar_t__ BUS_SPACE_MAXADDR_32BIT ; 
 int /*<<< orphan*/  BUS_SPACE_MAXSIZE_32BIT ; 
 int /*<<< orphan*/  MCLBYTES ; 
 int FUNC0 (struct age_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct age_softc*) ; 
 int /*<<< orphan*/  age_dmamap_cb ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct age_dmamap_arg*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,void**,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC8(struct age_softc *sc)
{
	struct age_txdesc *txd;
	struct age_rxdesc *rxd;
	bus_addr_t lowaddr;
	struct age_dmamap_arg ctx;
	int error, i;

	lowaddr = BUS_SPACE_MAXADDR;

again:
	/* Create parent ring/DMA block tag. */
	error = FUNC2(
	    FUNC6(sc->age_dev), /* parent */
	    1, 0,			/* alignment, boundary */
	    lowaddr,			/* lowaddr */
	    BUS_SPACE_MAXADDR,		/* highaddr */
	    NULL, NULL,			/* filter, filterarg */
	    BUS_SPACE_MAXSIZE_32BIT,	/* maxsize */
	    0,				/* nsegments */
	    BUS_SPACE_MAXSIZE_32BIT,	/* maxsegsize */
	    0,				/* flags */
	    NULL, NULL,			/* lockfunc, lockarg */
	    &sc->age_cdata.age_parent_tag);
	if (error != 0) {
		FUNC7(sc->age_dev,
		    "could not create parent DMA tag.\n");
		goto fail;
	}

	/* Create tag for Tx ring. */
	error = FUNC2(
	    sc->age_cdata.age_parent_tag, /* parent */
	    AGE_TX_RING_ALIGN, 0,	/* alignment, boundary */
	    BUS_SPACE_MAXADDR,		/* lowaddr */
	    BUS_SPACE_MAXADDR,		/* highaddr */
	    NULL, NULL,			/* filter, filterarg */
	    AGE_TX_RING_SZ,		/* maxsize */
	    1,				/* nsegments */
	    AGE_TX_RING_SZ,		/* maxsegsize */
	    0,				/* flags */
	    NULL, NULL,			/* lockfunc, lockarg */
	    &sc->age_cdata.age_tx_ring_tag);
	if (error != 0) {
		FUNC7(sc->age_dev,
		    "could not create Tx ring DMA tag.\n");
		goto fail;
	}

	/* Create tag for Rx ring. */
	error = FUNC2(
	    sc->age_cdata.age_parent_tag, /* parent */
	    AGE_RX_RING_ALIGN, 0,	/* alignment, boundary */
	    BUS_SPACE_MAXADDR,		/* lowaddr */
	    BUS_SPACE_MAXADDR,		/* highaddr */
	    NULL, NULL,			/* filter, filterarg */
	    AGE_RX_RING_SZ,		/* maxsize */
	    1,				/* nsegments */
	    AGE_RX_RING_SZ,		/* maxsegsize */
	    0,				/* flags */
	    NULL, NULL,			/* lockfunc, lockarg */
	    &sc->age_cdata.age_rx_ring_tag);
	if (error != 0) {
		FUNC7(sc->age_dev,
		    "could not create Rx ring DMA tag.\n");
		goto fail;
	}

	/* Create tag for Rx return ring. */
	error = FUNC2(
	    sc->age_cdata.age_parent_tag, /* parent */
	    AGE_RR_RING_ALIGN, 0,	/* alignment, boundary */
	    BUS_SPACE_MAXADDR,		/* lowaddr */
	    BUS_SPACE_MAXADDR,		/* highaddr */
	    NULL, NULL,			/* filter, filterarg */
	    AGE_RR_RING_SZ,		/* maxsize */
	    1,				/* nsegments */
	    AGE_RR_RING_SZ,		/* maxsegsize */
	    0,				/* flags */
	    NULL, NULL,			/* lockfunc, lockarg */
	    &sc->age_cdata.age_rr_ring_tag);
	if (error != 0) {
		FUNC7(sc->age_dev,
		    "could not create Rx return ring DMA tag.\n");
		goto fail;
	}

	/* Create tag for coalesing message block. */
	error = FUNC2(
	    sc->age_cdata.age_parent_tag, /* parent */
	    AGE_CMB_ALIGN, 0,		/* alignment, boundary */
	    BUS_SPACE_MAXADDR,		/* lowaddr */
	    BUS_SPACE_MAXADDR,		/* highaddr */
	    NULL, NULL,			/* filter, filterarg */
	    AGE_CMB_BLOCK_SZ,		/* maxsize */
	    1,				/* nsegments */
	    AGE_CMB_BLOCK_SZ,		/* maxsegsize */
	    0,				/* flags */
	    NULL, NULL,			/* lockfunc, lockarg */
	    &sc->age_cdata.age_cmb_block_tag);
	if (error != 0) {
		FUNC7(sc->age_dev,
		    "could not create CMB DMA tag.\n");
		goto fail;
	}

	/* Create tag for statistics message block. */
	error = FUNC2(
	    sc->age_cdata.age_parent_tag, /* parent */
	    AGE_SMB_ALIGN, 0,		/* alignment, boundary */
	    BUS_SPACE_MAXADDR,		/* lowaddr */
	    BUS_SPACE_MAXADDR,		/* highaddr */
	    NULL, NULL,			/* filter, filterarg */
	    AGE_SMB_BLOCK_SZ,		/* maxsize */
	    1,				/* nsegments */
	    AGE_SMB_BLOCK_SZ,		/* maxsegsize */
	    0,				/* flags */
	    NULL, NULL,			/* lockfunc, lockarg */
	    &sc->age_cdata.age_smb_block_tag);
	if (error != 0) {
		FUNC7(sc->age_dev,
		    "could not create SMB DMA tag.\n");
		goto fail;
	}

	/* Allocate DMA'able memory and load the DMA map. */
	error = FUNC5(sc->age_cdata.age_tx_ring_tag,
	    (void **)&sc->age_rdata.age_tx_ring,
	    BUS_DMA_WAITOK | BUS_DMA_ZERO | BUS_DMA_COHERENT,
	    &sc->age_cdata.age_tx_ring_map);
	if (error != 0) {
		FUNC7(sc->age_dev,
		    "could not allocate DMA'able memory for Tx ring.\n");
		goto fail;
	}
	ctx.age_busaddr = 0;
	error = FUNC4(sc->age_cdata.age_tx_ring_tag,
	    sc->age_cdata.age_tx_ring_map, sc->age_rdata.age_tx_ring,
	    AGE_TX_RING_SZ, age_dmamap_cb, &ctx, 0);
	if (error != 0 || ctx.age_busaddr == 0) {
		FUNC7(sc->age_dev,
		    "could not load DMA'able memory for Tx ring.\n");
		goto fail;
	}
	sc->age_rdata.age_tx_ring_paddr = ctx.age_busaddr;
	/* Rx ring */
	error = FUNC5(sc->age_cdata.age_rx_ring_tag,
	    (void **)&sc->age_rdata.age_rx_ring,
	    BUS_DMA_WAITOK | BUS_DMA_ZERO | BUS_DMA_COHERENT,
	    &sc->age_cdata.age_rx_ring_map);
	if (error != 0) {
		FUNC7(sc->age_dev,
		    "could not allocate DMA'able memory for Rx ring.\n");
		goto fail;
	}
	ctx.age_busaddr = 0;
	error = FUNC4(sc->age_cdata.age_rx_ring_tag,
	    sc->age_cdata.age_rx_ring_map, sc->age_rdata.age_rx_ring,
	    AGE_RX_RING_SZ, age_dmamap_cb, &ctx, 0);
	if (error != 0 || ctx.age_busaddr == 0) {
		FUNC7(sc->age_dev,
		    "could not load DMA'able memory for Rx ring.\n");
		goto fail;
	}
	sc->age_rdata.age_rx_ring_paddr = ctx.age_busaddr;
	/* Rx return ring */
	error = FUNC5(sc->age_cdata.age_rr_ring_tag,
	    (void **)&sc->age_rdata.age_rr_ring,
	    BUS_DMA_WAITOK | BUS_DMA_ZERO | BUS_DMA_COHERENT,
	    &sc->age_cdata.age_rr_ring_map);
	if (error != 0) {
		FUNC7(sc->age_dev,
		    "could not allocate DMA'able memory for Rx return ring.\n");
		goto fail;
	}
	ctx.age_busaddr = 0;
	error = FUNC4(sc->age_cdata.age_rr_ring_tag,
	    sc->age_cdata.age_rr_ring_map, sc->age_rdata.age_rr_ring,
	    AGE_RR_RING_SZ, age_dmamap_cb,
	    &ctx, 0);
	if (error != 0 || ctx.age_busaddr == 0) {
		FUNC7(sc->age_dev,
		    "could not load DMA'able memory for Rx return ring.\n");
		goto fail;
	}
	sc->age_rdata.age_rr_ring_paddr = ctx.age_busaddr;
	/* CMB block */
	error = FUNC5(sc->age_cdata.age_cmb_block_tag,
	    (void **)&sc->age_rdata.age_cmb_block,
	    BUS_DMA_WAITOK | BUS_DMA_ZERO | BUS_DMA_COHERENT,
	    &sc->age_cdata.age_cmb_block_map);
	if (error != 0) {
		FUNC7(sc->age_dev,
		    "could not allocate DMA'able memory for CMB block.\n");
		goto fail;
	}
	ctx.age_busaddr = 0;
	error = FUNC4(sc->age_cdata.age_cmb_block_tag,
	    sc->age_cdata.age_cmb_block_map, sc->age_rdata.age_cmb_block,
	    AGE_CMB_BLOCK_SZ, age_dmamap_cb, &ctx, 0);
	if (error != 0 || ctx.age_busaddr == 0) {
		FUNC7(sc->age_dev,
		    "could not load DMA'able memory for CMB block.\n");
		goto fail;
	}
	sc->age_rdata.age_cmb_block_paddr = ctx.age_busaddr;
	/* SMB block */
	error = FUNC5(sc->age_cdata.age_smb_block_tag,
	    (void **)&sc->age_rdata.age_smb_block,
	    BUS_DMA_WAITOK | BUS_DMA_ZERO | BUS_DMA_COHERENT,
	    &sc->age_cdata.age_smb_block_map);
	if (error != 0) {
		FUNC7(sc->age_dev,
		    "could not allocate DMA'able memory for SMB block.\n");
		goto fail;
	}
	ctx.age_busaddr = 0;
	error = FUNC4(sc->age_cdata.age_smb_block_tag,
	    sc->age_cdata.age_smb_block_map, sc->age_rdata.age_smb_block,
	    AGE_SMB_BLOCK_SZ, age_dmamap_cb, &ctx, 0);
	if (error != 0 || ctx.age_busaddr == 0) {
		FUNC7(sc->age_dev,
		    "could not load DMA'able memory for SMB block.\n");
		goto fail;
	}
	sc->age_rdata.age_smb_block_paddr = ctx.age_busaddr;

	/*
	 * All ring buffer and DMA blocks should have the same
	 * high address part of 64bit DMA address space.
	 */
	if (lowaddr != BUS_SPACE_MAXADDR_32BIT &&
	    (error = FUNC0(sc)) != 0) {
		FUNC7(sc->age_dev, "4GB boundary crossed, "
		    "switching to 32bit DMA addressing mode.\n");
		FUNC1(sc);
		/* Limit DMA address space to 32bit and try again. */
		lowaddr = BUS_SPACE_MAXADDR_32BIT;
		goto again;
	}

	/*
	 * Create Tx/Rx buffer parent tag.
	 * L1 supports full 64bit DMA addressing in Tx/Rx buffers
	 * so it needs separate parent DMA tag.
	 * XXX
	 * It seems enabling 64bit DMA causes data corruption. Limit
	 * DMA address space to 32bit.
	 */
	error = FUNC2(
	    FUNC6(sc->age_dev), /* parent */
	    1, 0,			/* alignment, boundary */
	    BUS_SPACE_MAXADDR_32BIT,	/* lowaddr */
	    BUS_SPACE_MAXADDR,		/* highaddr */
	    NULL, NULL,			/* filter, filterarg */
	    BUS_SPACE_MAXSIZE_32BIT,	/* maxsize */
	    0,				/* nsegments */
	    BUS_SPACE_MAXSIZE_32BIT,	/* maxsegsize */
	    0,				/* flags */
	    NULL, NULL,			/* lockfunc, lockarg */
	    &sc->age_cdata.age_buffer_tag);
	if (error != 0) {
		FUNC7(sc->age_dev,
		    "could not create parent buffer DMA tag.\n");
		goto fail;
	}

	/* Create tag for Tx buffers. */
	error = FUNC2(
	    sc->age_cdata.age_buffer_tag, /* parent */
	    1, 0,			/* alignment, boundary */
	    BUS_SPACE_MAXADDR,		/* lowaddr */
	    BUS_SPACE_MAXADDR,		/* highaddr */
	    NULL, NULL,			/* filter, filterarg */
	    AGE_TSO_MAXSIZE,		/* maxsize */
	    AGE_MAXTXSEGS,		/* nsegments */
	    AGE_TSO_MAXSEGSIZE,		/* maxsegsize */
	    0,				/* flags */
	    NULL, NULL,			/* lockfunc, lockarg */
	    &sc->age_cdata.age_tx_tag);
	if (error != 0) {
		FUNC7(sc->age_dev, "could not create Tx DMA tag.\n");
		goto fail;
	}

	/* Create tag for Rx buffers. */
	error = FUNC2(
	    sc->age_cdata.age_buffer_tag, /* parent */
	    AGE_RX_BUF_ALIGN, 0,	/* alignment, boundary */
	    BUS_SPACE_MAXADDR,		/* lowaddr */
	    BUS_SPACE_MAXADDR,		/* highaddr */
	    NULL, NULL,			/* filter, filterarg */
	    MCLBYTES,			/* maxsize */
	    1,				/* nsegments */
	    MCLBYTES,			/* maxsegsize */
	    0,				/* flags */
	    NULL, NULL,			/* lockfunc, lockarg */
	    &sc->age_cdata.age_rx_tag);
	if (error != 0) {
		FUNC7(sc->age_dev, "could not create Rx DMA tag.\n");
		goto fail;
	}

	/* Create DMA maps for Tx buffers. */
	for (i = 0; i < AGE_TX_RING_CNT; i++) {
		txd = &sc->age_cdata.age_txdesc[i];
		txd->tx_m = NULL;
		txd->tx_dmamap = NULL;
		error = FUNC3(sc->age_cdata.age_tx_tag, 0,
		    &txd->tx_dmamap);
		if (error != 0) {
			FUNC7(sc->age_dev,
			    "could not create Tx dmamap.\n");
			goto fail;
		}
	}
	/* Create DMA maps for Rx buffers. */
	if ((error = FUNC3(sc->age_cdata.age_rx_tag, 0,
	    &sc->age_cdata.age_rx_sparemap)) != 0) {
		FUNC7(sc->age_dev,
		    "could not create spare Rx dmamap.\n");
		goto fail;
	}
	for (i = 0; i < AGE_RX_RING_CNT; i++) {
		rxd = &sc->age_cdata.age_rxdesc[i];
		rxd->rx_m = NULL;
		rxd->rx_dmamap = NULL;
		error = FUNC3(sc->age_cdata.age_rx_tag, 0,
		    &rxd->rx_dmamap);
		if (error != 0) {
			FUNC7(sc->age_dev,
			    "could not create Rx dmamap.\n");
			goto fail;
		}
	}

fail:
	return (error);
}