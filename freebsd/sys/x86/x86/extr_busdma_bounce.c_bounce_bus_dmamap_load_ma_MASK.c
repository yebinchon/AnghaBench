#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vm_paddr_t ;
struct vm_page {int dummy; } ;
typedef  int bus_size_t ;
typedef  TYPE_1__* bus_dmamap_t ;
typedef  TYPE_2__* bus_dma_tag_t ;
typedef  int /*<<< orphan*/  bus_dma_segment_t ;
struct TYPE_19__ {int flags; int maxsegsz; int alignment; } ;
struct TYPE_18__ {int bounce_flags; TYPE_6__ common; int /*<<< orphan*/ * segments; } ;
struct TYPE_17__ {scalar_t__ pagesneeded; } ;

/* Variables and functions */
 int BUS_DMA_COULD_BOUNCE ; 
 int BUS_DMA_KEEP_PG_OFFSET ; 
 int EFBIG ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 (int,int) ; 
 int PAGE_MASK ; 
 int PAGE_SIZE ; 
 scalar_t__ FUNC2 (struct vm_page*) ; 
 int FUNC3 (TYPE_2__*,TYPE_1__*,scalar_t__,int,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_1__*,struct vm_page**,int,int,int) ; 
 int FUNC5 (TYPE_2__*,TYPE_1__*,int) ; 
 scalar_t__ FUNC6 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int) ; 
 scalar_t__ FUNC7 (TYPE_6__*,scalar_t__) ; 
 int FUNC8 (TYPE_2__*,TYPE_1__*,struct vm_page**,int,int,int,int /*<<< orphan*/ *,int*) ; 
 TYPE_1__ nobounce_dmamap ; 
 int FUNC9 (int,int) ; 

__attribute__((used)) static int
FUNC10(bus_dma_tag_t dmat, bus_dmamap_t map,
    struct vm_page **ma, bus_size_t buflen, int ma_offs, int flags,
    bus_dma_segment_t *segs, int *segp)
{
	vm_paddr_t paddr, next_paddr;
	int error, page_index;
	bus_size_t sgsize, max_sgsize;

	if (dmat->common.flags & BUS_DMA_KEEP_PG_OFFSET) {
		/*
		 * If we have to keep the offset of each page this function
		 * is not suitable, switch back to bus_dmamap_load_ma_triv
		 * which is going to do the right thing in this case.
		 */
		error = FUNC8(dmat, map, ma, buflen, ma_offs,
		    flags, segs, segp);
		return (error);
	}

	if (map == NULL)
		map = &nobounce_dmamap;

	if (segs == NULL)
		segs = dmat->segments;

	if ((dmat->bounce_flags & BUS_DMA_COULD_BOUNCE) != 0) {
		FUNC4(dmat, map, ma, ma_offs, buflen, flags);
		if (map->pagesneeded != 0) {
			error = FUNC5(dmat, map, flags);
			if (error)
				return (error);
		}
	}

	page_index = 0;
	while (buflen > 0) {
		/*
		 * Compute the segment size, and adjust counts.
		 */
		paddr = FUNC2(ma[page_index]) + ma_offs;
		max_sgsize = FUNC1(buflen, dmat->common.maxsegsz);
		sgsize = PAGE_SIZE - ma_offs;
		if ((dmat->bounce_flags & BUS_DMA_COULD_BOUNCE) != 0 &&
		    map->pagesneeded != 0 &&
		    FUNC7(&dmat->common, paddr)) {
			sgsize = FUNC9(sgsize, dmat->common.alignment);
			sgsize = FUNC1(sgsize, max_sgsize);
			FUNC0((sgsize & (dmat->common.alignment - 1)) == 0,
			    ("Segment size is not aligned"));
			/*
			 * Check if two pages of the user provided buffer
			 * are used.
			 */
			if ((ma_offs + sgsize) > PAGE_SIZE)
				next_paddr =
				    FUNC2(ma[page_index + 1]);
			else
				next_paddr = 0;
			paddr = FUNC6(dmat, map, 0, paddr,
			    next_paddr, sgsize);
		} else {
			sgsize = FUNC1(sgsize, max_sgsize);
		}
		sgsize = FUNC3(dmat, map, paddr, sgsize, segs,
		    segp);
		if (sgsize == 0)
			break;
		FUNC0(buflen >= sgsize,
		    ("Segment length overruns original buffer"));
		buflen -= sgsize;
		if (((ma_offs + sgsize) & ~PAGE_MASK) != 0)
			page_index++;
		ma_offs = (ma_offs + sgsize) & PAGE_MASK;
	}

	/*
	 * Did we fit?
	 */
	return (buflen != 0 ? EFBIG : 0); /* XXX better return value here? */
}