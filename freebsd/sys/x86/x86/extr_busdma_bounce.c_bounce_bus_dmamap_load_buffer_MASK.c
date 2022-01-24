#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int vm_paddr_t ;
typedef  scalar_t__ vm_offset_t ;
typedef  scalar_t__ pmap_t ;
typedef  scalar_t__ bus_size_t ;
typedef  TYPE_1__* bus_dmamap_t ;
typedef  TYPE_2__* bus_dma_tag_t ;
typedef  int /*<<< orphan*/  bus_dma_segment_t ;
struct TYPE_17__ {scalar_t__ maxsegsz; int /*<<< orphan*/  alignment; } ;
struct TYPE_16__ {int bounce_flags; TYPE_4__ common; int /*<<< orphan*/ * segments; } ;
struct TYPE_15__ {scalar_t__ pagesneeded; } ;

/* Variables and functions */
 int BUS_DMA_COULD_BOUNCE ; 
 int EFBIG ; 
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 
 int PAGE_MASK ; 
 scalar_t__ PAGE_SIZE ; 
 scalar_t__ FUNC1 (TYPE_2__*,TYPE_1__*,int,scalar_t__,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_1__*,scalar_t__,void*,scalar_t__,int) ; 
 int FUNC3 (TYPE_2__*,TYPE_1__*,int) ; 
 int FUNC4 (TYPE_2__*,TYPE_1__*,scalar_t__,int,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC5 (TYPE_4__*,int) ; 
 scalar_t__ kernel_pmap ; 
 TYPE_1__ nobounce_dmamap ; 
 int FUNC6 (scalar_t__,scalar_t__) ; 
 int FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(bus_dma_tag_t dmat, bus_dmamap_t map, void *buf,
    bus_size_t buflen, pmap_t pmap, int flags, bus_dma_segment_t *segs,
    int *segp)
{
	bus_size_t sgsize, max_sgsize;
	vm_paddr_t curaddr;
	vm_offset_t kvaddr, vaddr;
	int error;

	if (map == NULL)
		map = &nobounce_dmamap;

	if (segs == NULL)
		segs = dmat->segments;

	if ((dmat->bounce_flags & BUS_DMA_COULD_BOUNCE) != 0) {
		FUNC2(dmat, map, pmap, buf, buflen, flags);
		if (map->pagesneeded != 0) {
			error = FUNC3(dmat, map, flags);
			if (error)
				return (error);
		}
	}

	vaddr = (vm_offset_t)buf;
	while (buflen > 0) {
		/*
		 * Get the physical address for this segment.
		 */
		if (pmap == kernel_pmap) {
			curaddr = FUNC7(vaddr);
			kvaddr = vaddr;
		} else {
			curaddr = FUNC6(pmap, vaddr);
			kvaddr = 0;
		}

		/*
		 * Compute the segment size, and adjust counts.
		 */
		max_sgsize = FUNC0(buflen, dmat->common.maxsegsz);
		sgsize = PAGE_SIZE - (curaddr & PAGE_MASK);
		if ((dmat->bounce_flags & BUS_DMA_COULD_BOUNCE) != 0 &&
		    map->pagesneeded != 0 &&
		    FUNC5(&dmat->common, curaddr)) {
			sgsize = FUNC8(sgsize, dmat->common.alignment);
			sgsize = FUNC0(sgsize, max_sgsize);
			curaddr = FUNC4(dmat, map, kvaddr, curaddr, 0,
			    sgsize);
		} else {
			sgsize = FUNC0(sgsize, max_sgsize);
		}
		sgsize = FUNC1(dmat, map, curaddr, sgsize, segs,
		    segp);
		if (sgsize == 0)
			break;
		vaddr += sgsize;
		buflen -= sgsize;
	}

	/*
	 * Did we fit?
	 */
	return (buflen != 0 ? EFBIG : 0); /* XXX better return value here? */
}