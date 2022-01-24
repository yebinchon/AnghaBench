#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct msk_stat_desc {int dummy; } ;
struct msk_softc {int msk_stat_count; scalar_t__ msk_stat_ring_paddr; int /*<<< orphan*/  msk_dev; int /*<<< orphan*/  msk_stat_ring; int /*<<< orphan*/  msk_stat_map; int /*<<< orphan*/  msk_stat_tag; } ;
struct msk_dmamap_arg {scalar_t__ msk_busaddr; } ;
typedef  int bus_size_t ;

/* Variables and functions */
 int BUS_DMA_COHERENT ; 
 int /*<<< orphan*/  BUS_DMA_NOWAIT ; 
 int BUS_DMA_WAITOK ; 
 int BUS_DMA_ZERO ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int MSK_RX_RING_CNT ; 
 int /*<<< orphan*/  MSK_STAT_ALIGN ; 
 int MSK_TX_RING_CNT ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct msk_dmamap_arg*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,void**,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  msk_dmamap_cb ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 

__attribute__((used)) static int
FUNC7(struct msk_softc *sc)
{
	struct msk_dmamap_arg ctx;
	bus_size_t stat_sz;
	int count, error;

	/*
	 * It seems controller requires number of status LE entries
	 * is power of 2 and the maximum number of status LE entries
	 * is 4096.  For dual-port controllers, the number of status
	 * LE entries should be large enough to hold both port's
	 * status updates.
	 */
	count = 3 * MSK_RX_RING_CNT + MSK_TX_RING_CNT;
	count = FUNC5(4096, FUNC6(count, 1024));
	sc->msk_stat_count = count;
	stat_sz = count * sizeof(struct msk_stat_desc);
	error = FUNC0(
		    FUNC3(sc->msk_dev),	/* parent */
		    MSK_STAT_ALIGN, 0,		/* alignment, boundary */
		    BUS_SPACE_MAXADDR,		/* lowaddr */
		    BUS_SPACE_MAXADDR,		/* highaddr */
		    NULL, NULL,			/* filter, filterarg */
		    stat_sz,			/* maxsize */
		    1,				/* nsegments */
		    stat_sz,			/* maxsegsize */
		    0,				/* flags */
		    NULL, NULL,			/* lockfunc, lockarg */
		    &sc->msk_stat_tag);
	if (error != 0) {
		FUNC4(sc->msk_dev,
		    "failed to create status DMA tag\n");
		return (error);
	}

	/* Allocate DMA'able memory and load the DMA map for status ring. */
	error = FUNC2(sc->msk_stat_tag,
	    (void **)&sc->msk_stat_ring, BUS_DMA_WAITOK | BUS_DMA_COHERENT |
	    BUS_DMA_ZERO, &sc->msk_stat_map);
	if (error != 0) {
		FUNC4(sc->msk_dev,
		    "failed to allocate DMA'able memory for status ring\n");
		return (error);
	}

	ctx.msk_busaddr = 0;
	error = FUNC1(sc->msk_stat_tag, sc->msk_stat_map,
	    sc->msk_stat_ring, stat_sz, msk_dmamap_cb, &ctx, BUS_DMA_NOWAIT);
	if (error != 0) {
		FUNC4(sc->msk_dev,
		    "failed to load DMA'able memory for status ring\n");
		return (error);
	}
	sc->msk_stat_ring_paddr = ctx.msk_busaddr;

	return (0);
}