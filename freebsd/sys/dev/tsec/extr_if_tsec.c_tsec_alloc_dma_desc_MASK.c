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
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  bus_size_t ;
typedef  int /*<<< orphan*/  bus_dmamap_t ;
typedef  int /*<<< orphan*/  bus_dma_tag_t ;

/* Variables and functions */
 int BUS_DMA_NOWAIT ; 
 int BUS_DMA_ZERO ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR_32BIT ; 
 int ENXIO ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,void**,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  tsec_map_dma_addr ; 

__attribute__((used)) static int
FUNC6(device_t dev, bus_dma_tag_t *dtag, bus_dmamap_t *dmap,
    bus_size_t dsize, void **vaddr, void *raddr, const char *dname)
{
	int error;

	/* Allocate a busdma tag and DMA safe memory for TX/RX descriptors. */
	error = FUNC0(NULL,	/* parent */
	    PAGE_SIZE, 0,			/* alignment, boundary */
	    BUS_SPACE_MAXADDR_32BIT,		/* lowaddr */
	    BUS_SPACE_MAXADDR,			/* highaddr */
	    NULL, NULL,				/* filtfunc, filtfuncarg */
	    dsize, 1,				/* maxsize, nsegments */
	    dsize, 0,				/* maxsegsz, flags */
	    NULL, NULL,				/* lockfunc, lockfuncarg */
	    dtag);				/* dmat */

	if (error) {
		FUNC5(dev, "failed to allocate busdma %s tag\n",
		    dname);
		(*vaddr) = NULL;
		return (ENXIO);
	}

	error = FUNC3(*dtag, vaddr, BUS_DMA_NOWAIT | BUS_DMA_ZERO,
	    dmap);
	if (error) {
		FUNC5(dev, "failed to allocate %s DMA safe memory\n",
		    dname);
		FUNC1(*dtag);
		(*vaddr) = NULL;
		return (ENXIO);
	}

	error = FUNC2(*dtag, *dmap, *vaddr, dsize,
	    tsec_map_dma_addr, raddr, BUS_DMA_NOWAIT);
	if (error) {
		FUNC5(dev, "cannot get address of the %s "
		    "descriptors\n", dname);
		FUNC4(*dtag, *vaddr, *dmap);
		FUNC1(*dtag);
		(*vaddr) = NULL;
		return (ENXIO);
	}

	return (0);
}