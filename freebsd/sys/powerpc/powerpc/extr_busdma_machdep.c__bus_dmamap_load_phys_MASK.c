#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int vm_paddr_t ;
typedef  scalar_t__ bus_size_t ;
typedef  TYPE_1__* bus_dmamap_t ;
typedef  TYPE_2__* bus_dma_tag_t ;
typedef  int /*<<< orphan*/  bus_dma_segment_t ;
typedef  int bus_addr_t ;
struct TYPE_15__ {int flags; scalar_t__ maxsegsz; } ;
struct TYPE_14__ {scalar_t__ pagesneeded; int /*<<< orphan*/ * segments; } ;

/* Variables and functions */
 int BUS_DMA_COULD_BOUNCE ; 
 int EFBIG ; 
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 
 int PAGE_MASK ; 
 scalar_t__ PAGE_SIZE ; 
 scalar_t__ FUNC1 (TYPE_2__*,TYPE_1__*,int,scalar_t__,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_1__*,int,scalar_t__,int) ; 
 int FUNC3 (TYPE_2__*,TYPE_1__*,int) ; 
 int FUNC4 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ ,int,scalar_t__) ; 
 scalar_t__ FUNC5 (TYPE_2__*,int) ; 

int
FUNC6(bus_dma_tag_t dmat,
		      bus_dmamap_t map,
		      vm_paddr_t buf, bus_size_t buflen,
		      int flags,
		      bus_dma_segment_t *segs,
		      int *segp)
{
	bus_addr_t curaddr;
	bus_size_t sgsize;
	int error;

	if (segs == NULL)
		segs = map->segments;

	if ((dmat->flags & BUS_DMA_COULD_BOUNCE) != 0) {
		FUNC2(dmat, map, buf, buflen, flags);
		if (map->pagesneeded != 0) {
			error = FUNC3(dmat, map, flags);
			if (error)
				return (error);
		}
	}

	while (buflen > 0) {
		curaddr = buf;
		sgsize = FUNC0(buflen, dmat->maxsegsz);
		if (map->pagesneeded != 0 && FUNC5(dmat, curaddr)) {
			sgsize = FUNC0(sgsize, PAGE_SIZE - (curaddr & PAGE_MASK));
			curaddr = FUNC4(dmat, map, 0, curaddr,
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