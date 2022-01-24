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
struct sec_softc {int /*<<< orphan*/  sc_dev; } ;
struct sec_dma_mem {int /*<<< orphan*/ * dma_vaddr; int /*<<< orphan*/  dma_tag; int /*<<< orphan*/  dma_map; scalar_t__ dma_is_map; } ;
typedef  int /*<<< orphan*/  bus_size_t ;

/* Variables and functions */
 int BUS_DMA_NOWAIT ; 
 int BUS_DMA_ZERO ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR_32BIT ; 
 int EBUSY ; 
 int /*<<< orphan*/  SEC_DMA_ALIGNMENT ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sec_dma_mem*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  sec_alloc_dma_mem_cb ; 

__attribute__((used)) static int
FUNC6(struct sec_softc *sc, struct sec_dma_mem *dma_mem,
    bus_size_t size)
{
	int error;

	if (dma_mem->dma_vaddr != NULL)
		return (EBUSY);

	error = FUNC0(NULL,	/* parent */
		SEC_DMA_ALIGNMENT, 0,		/* alignment, boundary */
		BUS_SPACE_MAXADDR_32BIT,	/* lowaddr */
		BUS_SPACE_MAXADDR,		/* highaddr */
		NULL, NULL,			/* filtfunc, filtfuncarg */
		size, 1,			/* maxsize, nsegments */
		size, 0,			/* maxsegsz, flags */
		NULL, NULL,			/* lockfunc, lockfuncarg */
		&(dma_mem->dma_tag));		/* dmat */

	if (error) {
		FUNC5(sc->sc_dev, "failed to allocate busdma tag, error"
		    " %i!\n", error);
		goto err1;
	}

	error = FUNC3(dma_mem->dma_tag, &(dma_mem->dma_vaddr),
	    BUS_DMA_NOWAIT | BUS_DMA_ZERO, &(dma_mem->dma_map));

	if (error) {
		FUNC5(sc->sc_dev, "failed to allocate DMA safe"
		    " memory, error %i!\n", error);
		goto err2;
	}

	error = FUNC2(dma_mem->dma_tag, dma_mem->dma_map,
		    dma_mem->dma_vaddr, size, sec_alloc_dma_mem_cb, dma_mem,
		    BUS_DMA_NOWAIT);

	if (error) {
		FUNC5(sc->sc_dev, "cannot get address of the DMA"
		    " memory, error %i\n", error);
		goto err3;
	}

	dma_mem->dma_is_map = 0;
	return (0);

err3:
	FUNC4(dma_mem->dma_tag, dma_mem->dma_vaddr, dma_mem->dma_map);
err2:
	FUNC1(dma_mem->dma_tag);
err1:
	dma_mem->dma_vaddr = NULL;
	return(error);
}