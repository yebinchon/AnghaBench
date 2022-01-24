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
typedef  scalar_t__ bus_size_t ;
typedef  TYPE_1__* bus_dmamap_t ;
typedef  TYPE_2__* bus_dma_tag_t ;
typedef  int /*<<< orphan*/  bus_dma_segment_t ;
struct TYPE_17__ {scalar_t__ maxsegsz; } ;
struct TYPE_16__ {int bounce_flags; TYPE_4__ common; int /*<<< orphan*/ * segments; } ;
struct TYPE_15__ {scalar_t__ pagesneeded; } ;

/* Variables and functions */
 int BUS_DMA_COULD_BOUNCE ; 
 int EFBIG ; 
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 
 int PAGE_MASK ; 
 scalar_t__ PAGE_SIZE ; 
 scalar_t__ FUNC1 (TYPE_2__*,TYPE_1__*,int,scalar_t__,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_1__*,int,scalar_t__,int) ; 
 int FUNC3 (TYPE_2__*,TYPE_1__*,int) ; 
 int FUNC4 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC5 (TYPE_4__*,int) ; 
 TYPE_1__ nobounce_dmamap ; 

__attribute__((used)) static int
FUNC6(bus_dma_tag_t dmat, bus_dmamap_t map,
    vm_paddr_t buf, bus_size_t buflen, int flags, bus_dma_segment_t *segs,
    int *segp)
{
	bus_size_t sgsize;
	vm_paddr_t curaddr;
	int error;

	if (map == NULL)
		map = &nobounce_dmamap;

	if (segs == NULL)
		segs = dmat->segments;

	if ((dmat->bounce_flags & BUS_DMA_COULD_BOUNCE) != 0) {
		FUNC2(dmat, map, buf, buflen, flags);
		if (map->pagesneeded != 0) {
			error = FUNC3(dmat, map, flags);
			if (error)
				return (error);
		}
	}

	while (buflen > 0) {
		curaddr = buf;
		sgsize = FUNC0(buflen, dmat->common.maxsegsz);
		if ((dmat->bounce_flags & BUS_DMA_COULD_BOUNCE) != 0 &&
		    map->pagesneeded != 0 &&
		    FUNC5(&dmat->common, curaddr)) {
			sgsize = FUNC0(sgsize, PAGE_SIZE - (curaddr & PAGE_MASK));
			curaddr = FUNC4(dmat, map, 0, curaddr, 0,
			    sgsize);
		}
		sgsize = FUNC1(dmat, map, curaddr, sgsize, segs,
		    segp);
		if (sgsize == 0)
			break;
		buf += sgsize;
		buflen -= sgsize;
	}

	/*
	 * Did we fit?
	 */
	return (buflen != 0 ? EFBIG : 0); /* XXX better return value here? */
}