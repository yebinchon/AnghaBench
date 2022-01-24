#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int vm_paddr_t ;
typedef  int /*<<< orphan*/  vm_offset_t ;
struct bounce_zone {int /*<<< orphan*/  active_bpages; int /*<<< orphan*/  reserved_bpages; int /*<<< orphan*/  bounce_page_list; } ;
struct bounce_page {int vaddr; int busaddr; int dataoffs; int /*<<< orphan*/  datacount; void** datapage; int /*<<< orphan*/  datavaddr; } ;
typedef  int /*<<< orphan*/  bus_size_t ;
typedef  TYPE_2__* bus_dmamap_t ;
typedef  TYPE_3__* bus_dma_tag_t ;
typedef  int bus_addr_t ;
struct TYPE_7__ {int flags; } ;
struct TYPE_9__ {TYPE_1__ common; struct bounce_zone* bounce_zone; } ;
struct TYPE_8__ {scalar_t__ pagesneeded; scalar_t__ pagesreserved; int /*<<< orphan*/  bpages; } ;

/* Variables and functions */
 int BUS_DMA_KEEP_PG_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int PAGE_MASK ; 
 void* FUNC1 (int) ; 
 struct bounce_page* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct bounce_page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bounce_lock ; 
 int /*<<< orphan*/  links ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_2__ nobounce_dmamap ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static bus_addr_t
FUNC8(bus_dma_tag_t dmat, bus_dmamap_t map, vm_offset_t vaddr,
    vm_paddr_t addr1, vm_paddr_t addr2, bus_size_t size)
{
	struct bounce_zone *bz;
	struct bounce_page *bpage;

	FUNC0(dmat->bounce_zone != NULL, ("no bounce zone in dma tag"));
	FUNC0(map != NULL && map != &nobounce_dmamap,
	    ("add_bounce_page: bad map %p", map));

	bz = dmat->bounce_zone;
	if (map->pagesneeded == 0)
		FUNC7("add_bounce_page: map doesn't need any pages");
	map->pagesneeded--;

	if (map->pagesreserved == 0)
		FUNC7("add_bounce_page: map doesn't need any pages");
	map->pagesreserved--;

	FUNC5(&bounce_lock);
	bpage = FUNC2(&bz->bounce_page_list);
	if (bpage == NULL)
		FUNC7("add_bounce_page: free page list is empty");

	FUNC4(&bz->bounce_page_list, links);
	bz->reserved_bpages--;
	bz->active_bpages++;
	FUNC6(&bounce_lock);

	if (dmat->common.flags & BUS_DMA_KEEP_PG_OFFSET) {
		/* Page offset needs to be preserved. */
		bpage->vaddr |= addr1 & PAGE_MASK;
		bpage->busaddr |= addr1 & PAGE_MASK;
		FUNC0(addr2 == 0,
	("Trying to bounce multiple pages with BUS_DMA_KEEP_PG_OFFSET"));
	}
	bpage->datavaddr = vaddr;
	bpage->datapage[0] = FUNC1(addr1);
	FUNC0((addr2 & PAGE_MASK) == 0, ("Second page is not aligned"));
	bpage->datapage[1] = FUNC1(addr2);
	bpage->dataoffs = addr1 & PAGE_MASK;
	bpage->datacount = size;
	FUNC3(&(map->bpages), bpage, links);
	return (bpage->busaddr);
}