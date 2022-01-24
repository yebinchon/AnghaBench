#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vm_offset_t ;
typedef  int u_long ;
struct sync_list {scalar_t__ vaddr; scalar_t__ datacount; scalar_t__ busaddr; } ;
struct pmap {int dummy; } ;
typedef  scalar_t__ bus_size_t ;
typedef  TYPE_1__* bus_dmamap_t ;
typedef  TYPE_2__* bus_dma_tag_t ;
typedef  int /*<<< orphan*/  bus_dma_segment_t ;
typedef  scalar_t__ bus_addr_t ;
struct TYPE_17__ {int flags; scalar_t__ maxsegsz; int nsegments; int /*<<< orphan*/  alignment; int /*<<< orphan*/  boundary; int /*<<< orphan*/  lowaddr; int /*<<< orphan*/ * segments; } ;
struct TYPE_16__ {scalar_t__ pagesneeded; int sync_count; struct sync_list* slist; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int BUS_DMA_COULD_BOUNCE ; 
 int BUS_DMA_LOAD_MBUF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DMAMAP_CACHE_ALIGNED ; 
 int EFBIG ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  KTR_BUSDMA ; 
 int PAGE_MASK ; 
 scalar_t__ PAGE_SIZE ; 
 scalar_t__ FUNC2 (TYPE_2__*,TYPE_1__*,scalar_t__,scalar_t__,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_1__*,struct pmap*,void*,scalar_t__,int) ; 
 int FUNC4 (TYPE_2__*,TYPE_1__*,int) ; 
 scalar_t__ FUNC5 (TYPE_2__*,TYPE_1__*,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,TYPE_1__*) ; 
 struct pmap* kernel_pmap ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (TYPE_2__*,scalar_t__) ; 

int
FUNC9(bus_dma_tag_t dmat, bus_dmamap_t map, void *buf,
    bus_size_t buflen, struct pmap *pmap, int flags, bus_dma_segment_t *segs,
    int *segp)
{
	bus_size_t sgsize;
	bus_addr_t curaddr;
	struct sync_list *sl;
	vm_offset_t vaddr = (vm_offset_t)buf;
	int error = 0;


	if (segs == NULL)
		segs = dmat->segments;
	if ((flags & BUS_DMA_LOAD_MBUF) != 0)
		map->flags |= DMAMAP_CACHE_ALIGNED;

	if ((dmat->flags & BUS_DMA_COULD_BOUNCE) != 0) {
		FUNC3(dmat, map, pmap, buf, buflen, flags);
		if (map->pagesneeded != 0) {
			error = FUNC4(dmat, map, flags);
			if (error)
				return (error);
		}
	}
	FUNC0(KTR_BUSDMA, "lowaddr= %d boundary= %d, "
	    "alignment= %d", dmat->lowaddr, dmat->boundary, dmat->alignment);

	while (buflen > 0) {
		/*
		 * Get the physical address for this segment.
		 *
		 * XXX Don't support checking for coherent mappings
		 * XXX in user address space.
		 */
		FUNC1(kernel_pmap == pmap, ("pmap is not kernel pmap"));
		curaddr = FUNC7(vaddr);

		/*
		 * Compute the segment size, and adjust counts.
		 */
		sgsize = PAGE_SIZE - ((u_long)curaddr & PAGE_MASK);
		if (sgsize > dmat->maxsegsz)
			sgsize = dmat->maxsegsz;
		if (buflen < sgsize)
			sgsize = buflen;

		if (((dmat->flags & BUS_DMA_COULD_BOUNCE) != 0) &&
		    map->pagesneeded != 0 && FUNC8(dmat, curaddr)) {
			curaddr = FUNC5(dmat, map, vaddr, curaddr,
			    sgsize);
		} else {
			sl = &map->slist[map->sync_count - 1];
			if (map->sync_count == 0 ||
			    vaddr != sl->vaddr + sl->datacount) {
				if (++map->sync_count > dmat->nsegments)
					goto cleanup;
				sl++;
				sl->vaddr = vaddr;
				sl->datacount = sgsize;
				sl->busaddr = curaddr;
			} else
				sl->datacount += sgsize;
		}
		sgsize = FUNC2(dmat, map, curaddr, sgsize, segs,
		    segp);
		if (sgsize == 0)
			break;
		vaddr += sgsize;
		buflen -= sgsize;
	}

cleanup:
	/*
	 * Did we fit?
	 */
	if (buflen != 0) {
		FUNC6(dmat, map);
		error = EFBIG; /* XXX better return value here? */
	}
	return (error);
}