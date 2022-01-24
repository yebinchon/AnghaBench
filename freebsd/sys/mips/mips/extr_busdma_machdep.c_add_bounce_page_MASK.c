#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vm_offset_t ;
struct bounce_zone {int /*<<< orphan*/  active_bpages; int /*<<< orphan*/  reserved_bpages; int /*<<< orphan*/  bounce_page_list; } ;
struct bounce_page {int vaddr; int busaddr; int dataaddr; int /*<<< orphan*/  datacount; int /*<<< orphan*/  datavaddr; } ;
typedef  int /*<<< orphan*/  bus_size_t ;
typedef  TYPE_1__* bus_dmamap_t ;
typedef  TYPE_2__* bus_dma_tag_t ;
typedef  int bus_addr_t ;
struct TYPE_6__ {int flags; struct bounce_zone* bounce_zone; } ;
struct TYPE_5__ {scalar_t__ pagesneeded; scalar_t__ pagesreserved; int /*<<< orphan*/  bpages; } ;

/* Variables and functions */
 int BUS_DMA_KEEP_PG_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int PAGE_MASK ; 
 struct bounce_page* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct bounce_page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bounce_lock ; 
 int /*<<< orphan*/  links ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static bus_addr_t
FUNC7(bus_dma_tag_t dmat, bus_dmamap_t map, vm_offset_t vaddr,
		bus_addr_t addr, bus_size_t size)
{
	struct bounce_zone *bz;
	struct bounce_page *bpage;

	FUNC0(dmat->bounce_zone != NULL, ("no bounce zone in dma tag"));
	FUNC0(map != NULL, ("add_bounce_page: bad map %p", map));

	bz = dmat->bounce_zone;
	if (map->pagesneeded == 0)
		FUNC6("add_bounce_page: map doesn't need any pages");
	map->pagesneeded--;

	if (map->pagesreserved == 0)
		FUNC6("add_bounce_page: map doesn't need any pages");
	map->pagesreserved--;

	FUNC4(&bounce_lock);
	bpage = FUNC1(&bz->bounce_page_list);
	if (bpage == NULL)
		FUNC6("add_bounce_page: free page list is empty");

	FUNC3(&bz->bounce_page_list, links);
	bz->reserved_bpages--;
	bz->active_bpages++;
	FUNC5(&bounce_lock);

	if (dmat->flags & BUS_DMA_KEEP_PG_OFFSET) {
		/* Page offset needs to be preserved. */
		bpage->vaddr |= addr & PAGE_MASK;
		bpage->busaddr |= addr & PAGE_MASK;
	}
	bpage->datavaddr = vaddr;
	bpage->dataaddr = addr;
	bpage->datacount = size;
	FUNC2(&(map->bpages), bpage, links);
	return (bpage->busaddr);
}