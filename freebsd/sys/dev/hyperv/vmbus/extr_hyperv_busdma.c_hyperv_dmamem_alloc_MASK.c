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
struct hyperv_dma {int /*<<< orphan*/  hv_dtag; int /*<<< orphan*/  hv_dmap; int /*<<< orphan*/  hv_paddr; } ;
typedef  int /*<<< orphan*/  bus_size_t ;
typedef  int /*<<< orphan*/  bus_dma_tag_t ;
typedef  int /*<<< orphan*/  bus_addr_t ;

/* Variables and functions */
 int BUS_DMA_COHERENT ; 
 int /*<<< orphan*/  BUS_DMA_NOWAIT ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int HYPERV_DMA_MASK ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,void**,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hyperv_dma_map_paddr ; 

void *
FUNC5(bus_dma_tag_t parent_dtag, bus_size_t alignment,
    bus_addr_t boundary, bus_size_t size, struct hyperv_dma *dma, int flags)
{
	void *ret;
	int error;

	error = FUNC0(parent_dtag, /* parent */
	    alignment,		/* alignment */
	    boundary,		/* boundary */
	    BUS_SPACE_MAXADDR,	/* lowaddr */
	    BUS_SPACE_MAXADDR,	/* highaddr */
	    NULL, NULL,		/* filter, filterarg */
	    size,		/* maxsize */
	    1,			/* nsegments */
	    size,		/* maxsegsize */
	    0,			/* flags */
	    NULL,		/* lockfunc */
	    NULL,		/* lockfuncarg */
	    &dma->hv_dtag);
	if (error)
		return NULL;

	error = FUNC3(dma->hv_dtag, &ret,
	    (flags & HYPERV_DMA_MASK) | BUS_DMA_COHERENT, &dma->hv_dmap);
	if (error) {
		FUNC1(dma->hv_dtag);
		return NULL;
	}

	error = FUNC2(dma->hv_dtag, dma->hv_dmap, ret, size,
	    hyperv_dma_map_paddr, &dma->hv_paddr, BUS_DMA_NOWAIT);
	if (error) {
		FUNC4(dma->hv_dtag, ret, dma->hv_dmap);
		FUNC1(dma->hv_dtag);
		return NULL;
	}
	return ret;
}