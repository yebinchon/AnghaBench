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
struct aic_softc {int dma_size; int /*<<< orphan*/  buf_base; int /*<<< orphan*/  buf_base_phys; int /*<<< orphan*/  dma_map; int /*<<< orphan*/  dma_tag; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int BUS_DMA_COHERENT ; 
 int BUS_DMA_WAITOK ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR_32BIT ; 
 int /*<<< orphan*/  aic_dmamap_cb ; 
 int FUNC0 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,void**,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC6(struct aic_softc *sc)
{
	device_t dev;
	int err;

	dev = sc->dev;

	/* DMA buffer size. */
	sc->dma_size = 131072;

	/*
	 * Must use dma_size boundary as modulo feature required.
	 * Modulo feature allows setup circular buffer.
	 */
	err = FUNC0(
	    FUNC3(sc->dev),
	    4, sc->dma_size,		/* alignment, boundary */
	    BUS_SPACE_MAXADDR_32BIT,	/* lowaddr */
	    BUS_SPACE_MAXADDR,		/* highaddr */
	    NULL, NULL,			/* filter, filterarg */
	    sc->dma_size, 1,		/* maxsize, nsegments */
	    sc->dma_size, 0,		/* maxsegsize, flags */
	    NULL, NULL,			/* lockfunc, lockarg */
	    &sc->dma_tag);
	if (err) {
		FUNC5(dev, "cannot create bus dma tag\n");
		return (-1);
	}

	err = FUNC2(sc->dma_tag, (void **)&sc->buf_base,
	    BUS_DMA_WAITOK | BUS_DMA_COHERENT, &sc->dma_map);
	if (err) {
		FUNC5(dev, "cannot allocate memory\n");
		return (-1);
	}

	err = FUNC1(sc->dma_tag, sc->dma_map, sc->buf_base,
	    sc->dma_size, aic_dmamap_cb, &sc->buf_base_phys, BUS_DMA_WAITOK);
	if (err) {
		FUNC5(dev, "cannot load DMA map\n");
		return (-1);
	}

	FUNC4(sc->buf_base, sc->dma_size);

	return (0);
}