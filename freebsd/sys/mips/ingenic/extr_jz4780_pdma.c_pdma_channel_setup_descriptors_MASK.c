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
struct pdma_softc {int /*<<< orphan*/  dev; } ;
struct pdma_channel {int /*<<< orphan*/  desc_ring_paddr; int /*<<< orphan*/  desc_ring; int /*<<< orphan*/  desc_map; int /*<<< orphan*/  desc_tag; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int BUS_DMA_COHERENT ; 
 int BUS_DMA_WAITOK ; 
 int BUS_DMA_ZERO ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR_32BIT ; 
 int /*<<< orphan*/  CHAN_DESC_SIZE ; 
 int /*<<< orphan*/  PDMA_DESC_RING_ALIGN ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,void**,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct pdma_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  dwc_get1paddr ; 

__attribute__((used)) static int
FUNC6(device_t dev, struct pdma_channel *chan)
{
	struct pdma_softc *sc;
	int error;

	sc = FUNC4(dev);

	/*
	 * Set up TX descriptor ring, descriptors, and dma maps.
	 */
	error = FUNC0(
	    FUNC3(sc->dev),	/* Parent tag. */
	    PDMA_DESC_RING_ALIGN, 0,	/* alignment, boundary */
	    BUS_SPACE_MAXADDR_32BIT,	/* lowaddr */
	    BUS_SPACE_MAXADDR,		/* highaddr */
	    NULL, NULL,			/* filter, filterarg */
	    CHAN_DESC_SIZE, 1, 		/* maxsize, nsegments */
	    CHAN_DESC_SIZE,		/* maxsegsize */
	    0,				/* flags */
	    NULL, NULL,			/* lockfunc, lockarg */
	    &chan->desc_tag);
	if (error != 0) {
		FUNC5(sc->dev,
		    "could not create TX ring DMA tag.\n");
		return (-1);
	}

	error = FUNC2(chan->desc_tag, (void**)&chan->desc_ring,
	    BUS_DMA_COHERENT | BUS_DMA_WAITOK | BUS_DMA_ZERO,
	    &chan->desc_map);
	if (error != 0) {
		FUNC5(sc->dev,
		    "could not allocate TX descriptor ring.\n");
		return (-1);
	}

	error = FUNC1(chan->desc_tag, chan->desc_map,
	    chan->desc_ring, CHAN_DESC_SIZE, dwc_get1paddr,
	    &chan->desc_ring_paddr, 0);
	if (error != 0) {
		FUNC5(sc->dev,
		    "could not load TX descriptor ring map.\n");
		return (-1);
	}

	return (0);
}