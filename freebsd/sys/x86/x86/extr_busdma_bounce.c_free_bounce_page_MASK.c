#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct bus_dmamap {int /*<<< orphan*/  dmat; } ;
struct bounce_zone {int /*<<< orphan*/  total_deferred; int /*<<< orphan*/  active_bpages; int /*<<< orphan*/  free_bpages; int /*<<< orphan*/  bounce_page_list; } ;
struct bounce_page {int /*<<< orphan*/  busaddr; int /*<<< orphan*/  vaddr; scalar_t__ datacount; scalar_t__ datavaddr; } ;
typedef  TYPE_2__* bus_dma_tag_t ;
struct TYPE_4__ {int flags; } ;
struct TYPE_5__ {TYPE_1__ common; struct bounce_zone* bounce_zone; } ;

/* Variables and functions */
 int BUS_DMA_KEEP_PG_OFFSET ; 
 int /*<<< orphan*/  PAGE_MASK ; 
 struct bus_dmamap* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct bounce_page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct bus_dmamap*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bounce_lock ; 
 int /*<<< orphan*/  bounce_map_callbacklist ; 
 int /*<<< orphan*/  bounce_map_waitinglist ; 
 int busdma_swi_pending ; 
 int /*<<< orphan*/  links ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,struct bus_dmamap*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vm_ih ; 

__attribute__((used)) static void
FUNC8(bus_dma_tag_t dmat, struct bounce_page *bpage)
{
	struct bus_dmamap *map;
	struct bounce_zone *bz;

	bz = dmat->bounce_zone;
	bpage->datavaddr = 0;
	bpage->datacount = 0;
	if (dmat->common.flags & BUS_DMA_KEEP_PG_OFFSET) {
		/*
		 * Reset the bounce page to start at offset 0.  Other uses
		 * of this bounce page may need to store a full page of
		 * data and/or assume it starts on a page boundary.
		 */
		bpage->vaddr &= ~PAGE_MASK;
		bpage->busaddr &= ~PAGE_MASK;
	}

	FUNC4(&bounce_lock);
	FUNC1(&bz->bounce_page_list, bpage, links);
	bz->free_bpages++;
	bz->active_bpages--;
	if ((map = FUNC0(&bounce_map_waitinglist)) != NULL) {
		if (FUNC6(map->dmat, map, 1) == 0) {
			FUNC3(&bounce_map_waitinglist, links);
			FUNC2(&bounce_map_callbacklist,
			    map, links);
			busdma_swi_pending = 1;
			bz->total_deferred++;
			FUNC7(vm_ih, 0);
		}
	}
	FUNC5(&bounce_lock);
}