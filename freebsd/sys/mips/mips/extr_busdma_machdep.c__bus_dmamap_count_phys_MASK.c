#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vm_paddr_t ;
typedef  scalar_t__ bus_size_t ;
typedef  TYPE_1__* bus_dmamap_t ;
typedef  TYPE_2__* bus_dma_tag_t ;
typedef  int /*<<< orphan*/  bus_addr_t ;
struct TYPE_8__ {int /*<<< orphan*/  maxsegsz; int /*<<< orphan*/  alignment; int /*<<< orphan*/  boundary; int /*<<< orphan*/  lowaddr; } ;
struct TYPE_7__ {scalar_t__ pagesneeded; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KTR_BUSDMA ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 scalar_t__ FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(bus_dma_tag_t dmat, bus_dmamap_t map, vm_paddr_t buf,
    bus_size_t buflen, int flags)
{
	bus_addr_t curaddr;
	bus_size_t sgsize;

	if (map->pagesneeded == 0) {
		FUNC2(KTR_BUSDMA, "lowaddr= %d, boundary= %d, alignment= %d",
		    dmat->lowaddr, dmat->boundary, dmat->alignment);
		FUNC1(KTR_BUSDMA, "map= %p, pagesneeded= %d",
		    map, map->pagesneeded);
		/*
		 * Count the number of bounce pages
		 * needed in order to complete this transfer
		 */
		curaddr = buf;
		while (buflen != 0) {
			sgsize = FUNC3(buflen, dmat->maxsegsz);
			if (FUNC4(dmat, curaddr) != 0) {
				sgsize = FUNC3(sgsize, PAGE_SIZE);
				map->pagesneeded++;
			}
			curaddr += sgsize;
			buflen -= sgsize;
		}
		FUNC0(KTR_BUSDMA, "pagesneeded= %d\n", map->pagesneeded);
	}
}