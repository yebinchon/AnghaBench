#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct mbuf {int dummy; } ;
struct dwc_softc {int /*<<< orphan*/  dev; TYPE_2__* rxbuf_map; int /*<<< orphan*/  rxbuf_tag; scalar_t__ rxdesc_ring_paddr; TYPE_3__* rxdesc_ring; int /*<<< orphan*/  rxdesc_map; int /*<<< orphan*/  rxdesc_tag; TYPE_1__* txbuf_map; int /*<<< orphan*/  txbuf_tag; scalar_t__ txdesc_ring_paddr; TYPE_3__* txdesc_ring; int /*<<< orphan*/  txdesc_map; int /*<<< orphan*/  txdesc_tag; } ;
struct dwc_hwdesc {int dummy; } ;
struct TYPE_6__ {scalar_t__ addr_next; } ;
struct TYPE_5__ {int /*<<< orphan*/  map; } ;
struct TYPE_4__ {int /*<<< orphan*/  map; } ;

/* Variables and functions */
 int BUS_DMA_COHERENT ; 
 int BUS_DMA_WAITOK ; 
 int BUS_DMA_ZERO ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR_32BIT ; 
 int DWC_DESC_RING_ALIGN ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  MCLBYTES ; 
 int RX_DESC_COUNT ; 
 int /*<<< orphan*/  RX_DESC_SIZE ; 
 int TX_DESC_COUNT ; 
 int /*<<< orphan*/  TX_DESC_SIZE ; 
 int FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,void**,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 struct mbuf* FUNC6 (struct dwc_softc*) ; 
 int /*<<< orphan*/  dwc_get1paddr ; 
 int FUNC7 (struct dwc_softc*,int,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC8 (struct dwc_softc*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct dwc_softc*,int) ; 

__attribute__((used)) static int
FUNC10(struct dwc_softc *sc)
{
	struct mbuf *m;
	int error;
	int nidx;
	int idx;

	/*
	 * Set up TX descriptor ring, descriptors, and dma maps.
	 */
	error = FUNC0(
	    FUNC4(sc->dev),	/* Parent tag. */
	    DWC_DESC_RING_ALIGN, 0,	/* alignment, boundary */
	    BUS_SPACE_MAXADDR_32BIT,	/* lowaddr */
	    BUS_SPACE_MAXADDR,		/* highaddr */
	    NULL, NULL,			/* filter, filterarg */
	    TX_DESC_SIZE, 1, 		/* maxsize, nsegments */
	    TX_DESC_SIZE,		/* maxsegsize */
	    0,				/* flags */
	    NULL, NULL,			/* lockfunc, lockarg */
	    &sc->txdesc_tag);
	if (error != 0) {
		FUNC5(sc->dev,
		    "could not create TX ring DMA tag.\n");
		goto out;
	}

	error = FUNC3(sc->txdesc_tag, (void**)&sc->txdesc_ring,
	    BUS_DMA_COHERENT | BUS_DMA_WAITOK | BUS_DMA_ZERO,
	    &sc->txdesc_map);
	if (error != 0) {
		FUNC5(sc->dev,
		    "could not allocate TX descriptor ring.\n");
		goto out;
	}

	error = FUNC2(sc->txdesc_tag, sc->txdesc_map,
	    sc->txdesc_ring, TX_DESC_SIZE, dwc_get1paddr,
	    &sc->txdesc_ring_paddr, 0);
	if (error != 0) {
		FUNC5(sc->dev,
		    "could not load TX descriptor ring map.\n");
		goto out;
	}

	for (idx = 0; idx < TX_DESC_COUNT; idx++) {
		nidx = FUNC9(sc, idx);
		sc->txdesc_ring[idx].addr_next = sc->txdesc_ring_paddr +
		    (nidx * sizeof(struct dwc_hwdesc));
	}

	error = FUNC0(
	    FUNC4(sc->dev),	/* Parent tag. */
	    1, 0,			/* alignment, boundary */
	    BUS_SPACE_MAXADDR_32BIT,	/* lowaddr */
	    BUS_SPACE_MAXADDR,		/* highaddr */
	    NULL, NULL,			/* filter, filterarg */
	    MCLBYTES, 1, 		/* maxsize, nsegments */
	    MCLBYTES,			/* maxsegsize */
	    0,				/* flags */
	    NULL, NULL,			/* lockfunc, lockarg */
	    &sc->txbuf_tag);
	if (error != 0) {
		FUNC5(sc->dev,
		    "could not create TX ring DMA tag.\n");
		goto out;
	}

	for (idx = 0; idx < TX_DESC_COUNT; idx++) {
		error = FUNC1(sc->txbuf_tag, BUS_DMA_COHERENT,
		    &sc->txbuf_map[idx].map);
		if (error != 0) {
			FUNC5(sc->dev,
			    "could not create TX buffer DMA map.\n");
			goto out;
		}
		FUNC8(sc, idx, 0, 0);
	}

	/*
	 * Set up RX descriptor ring, descriptors, dma maps, and mbufs.
	 */
	error = FUNC0(
	    FUNC4(sc->dev),	/* Parent tag. */
	    DWC_DESC_RING_ALIGN, 0,	/* alignment, boundary */
	    BUS_SPACE_MAXADDR_32BIT,	/* lowaddr */
	    BUS_SPACE_MAXADDR,		/* highaddr */
	    NULL, NULL,			/* filter, filterarg */
	    RX_DESC_SIZE, 1, 		/* maxsize, nsegments */
	    RX_DESC_SIZE,		/* maxsegsize */
	    0,				/* flags */
	    NULL, NULL,			/* lockfunc, lockarg */
	    &sc->rxdesc_tag);
	if (error != 0) {
		FUNC5(sc->dev,
		    "could not create RX ring DMA tag.\n");
		goto out;
	}

	error = FUNC3(sc->rxdesc_tag, (void **)&sc->rxdesc_ring,
	    BUS_DMA_COHERENT | BUS_DMA_WAITOK | BUS_DMA_ZERO,
	    &sc->rxdesc_map);
	if (error != 0) {
		FUNC5(sc->dev,
		    "could not allocate RX descriptor ring.\n");
		goto out;
	}

	error = FUNC2(sc->rxdesc_tag, sc->rxdesc_map,
	    sc->rxdesc_ring, RX_DESC_SIZE, dwc_get1paddr,
	    &sc->rxdesc_ring_paddr, 0);
	if (error != 0) {
		FUNC5(sc->dev,
		    "could not load RX descriptor ring map.\n");
		goto out;
	}

	error = FUNC0(
	    FUNC4(sc->dev),	/* Parent tag. */
	    1, 0,			/* alignment, boundary */
	    BUS_SPACE_MAXADDR_32BIT,	/* lowaddr */
	    BUS_SPACE_MAXADDR,		/* highaddr */
	    NULL, NULL,			/* filter, filterarg */
	    MCLBYTES, 1, 		/* maxsize, nsegments */
	    MCLBYTES,			/* maxsegsize */
	    0,				/* flags */
	    NULL, NULL,			/* lockfunc, lockarg */
	    &sc->rxbuf_tag);
	if (error != 0) {
		FUNC5(sc->dev,
		    "could not create RX buf DMA tag.\n");
		goto out;
	}

	for (idx = 0; idx < RX_DESC_COUNT; idx++) {
		error = FUNC1(sc->rxbuf_tag, BUS_DMA_COHERENT,
		    &sc->rxbuf_map[idx].map);
		if (error != 0) {
			FUNC5(sc->dev,
			    "could not create RX buffer DMA map.\n");
			goto out;
		}
		if ((m = FUNC6(sc)) == NULL) {
			FUNC5(sc->dev, "Could not alloc mbuf\n");
			error = ENOMEM;
			goto out;
		}
		if ((error = FUNC7(sc, idx, m)) != 0) {
			FUNC5(sc->dev,
			    "could not create new RX buffer.\n");
			goto out;
		}
	}

out:
	if (error != 0)
		return (ENXIO);

	return (0);
}