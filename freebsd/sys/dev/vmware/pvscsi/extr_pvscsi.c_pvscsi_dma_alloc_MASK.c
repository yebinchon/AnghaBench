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
struct pvscsi_softc {int /*<<< orphan*/  dev; int /*<<< orphan*/  parent_dmat; } ;
struct pvscsi_dma {int /*<<< orphan*/  size; int /*<<< orphan*/  paddr; int /*<<< orphan*/  vaddr; int /*<<< orphan*/  map; int /*<<< orphan*/  tag; } ;
typedef  int /*<<< orphan*/  bus_size_t ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMA_ALLOCNOW ; 
 int BUS_DMA_NOWAIT ; 
 int BUS_DMA_ZERO ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct pvscsi_dma*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  pvscsi_dma_cb ; 
 int /*<<< orphan*/  FUNC5 (struct pvscsi_softc*,struct pvscsi_dma*) ; 

__attribute__((used)) static int
FUNC6(struct pvscsi_softc *sc, struct pvscsi_dma *dma,
    bus_size_t size, bus_size_t alignment)
{
	int error;

	FUNC3(dma, sizeof(*dma));

	error = FUNC0(sc->parent_dmat, alignment, 0,
	    BUS_SPACE_MAXADDR, BUS_SPACE_MAXADDR, NULL, NULL, size, 1, size,
	    BUS_DMA_ALLOCNOW, NULL, NULL, &dma->tag);
	if (error) {
		FUNC4(sc->dev, "error creating dma tag, error %d\n",
		    error);
		goto fail;
	}

	error = FUNC2(dma->tag, &dma->vaddr,
	    BUS_DMA_NOWAIT | BUS_DMA_ZERO, &dma->map);
	if (error) {
		FUNC4(sc->dev, "error allocating dma mem, error %d\n",
		    error);
		goto fail;
	}

	error = FUNC1(dma->tag, dma->map, dma->vaddr, size,
	    pvscsi_dma_cb, &dma->paddr, BUS_DMA_NOWAIT);
	if (error) {
		FUNC4(sc->dev, "error mapping dma mam, error %d\n",
		    error);
		goto fail;
	}

	dma->size = size;

fail:
	if (error) {
		FUNC5(sc, dma);
	}
	return (error);
}