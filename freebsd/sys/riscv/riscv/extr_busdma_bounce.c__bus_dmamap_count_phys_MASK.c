#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int vm_paddr_t ;
typedef  scalar_t__ bus_size_t ;
typedef  TYPE_1__* bus_dmamap_t ;
typedef  TYPE_2__* bus_dma_tag_t ;
typedef  int bus_addr_t ;
struct TYPE_8__ {scalar_t__ maxsegsz; } ;
struct TYPE_7__ {TYPE_3__ common; } ;
struct TYPE_6__ {int flags; scalar_t__ pagesneeded; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int DMAMAP_COULD_BOUNCE ; 
 int /*<<< orphan*/  KTR_BUSDMA ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__) ; 
 int PAGE_MASK ; 
 scalar_t__ PAGE_SIZE ; 
 scalar_t__ FUNC2 (TYPE_3__*,int) ; 

__attribute__((used)) static void
FUNC3(bus_dma_tag_t dmat, bus_dmamap_t map, vm_paddr_t buf,
    bus_size_t buflen, int flags)
{
	bus_addr_t curaddr;
	bus_size_t sgsize;

	if ((map->flags & DMAMAP_COULD_BOUNCE) != 0 && map->pagesneeded == 0) {
		/*
		 * Count the number of bounce pages
		 * needed in order to complete this transfer
		 */
		curaddr = buf;
		while (buflen != 0) {
			sgsize = FUNC1(buflen, dmat->common.maxsegsz);
			if (FUNC2(&dmat->common, curaddr)) {
				sgsize = FUNC1(sgsize,
				    PAGE_SIZE - (curaddr & PAGE_MASK));
				map->pagesneeded++;
			}
			curaddr += sgsize;
			buflen -= sgsize;
		}
		FUNC0(KTR_BUSDMA, "pagesneeded= %d\n", map->pagesneeded);
	}
}