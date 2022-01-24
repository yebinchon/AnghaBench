#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vm_paddr_t ;
struct vm_page {int dummy; } ;
typedef  int bus_size_t ;
typedef  TYPE_1__* bus_dmamap_t ;
typedef  TYPE_2__* bus_dma_tag_t ;
struct TYPE_11__ {int alignment; int maxsegsz; int /*<<< orphan*/  boundary; int /*<<< orphan*/  lowaddr; } ;
struct TYPE_10__ {TYPE_4__ common; } ;
struct TYPE_9__ {scalar_t__ pagesneeded; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,TYPE_1__*,TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  KTR_BUSDMA ; 
 int FUNC4 (int,int) ; 
 scalar_t__ Maxmem ; 
 int PAGE_MASK ; 
 int PAGE_SIZE ; 
 scalar_t__ FUNC5 (struct vm_page*) ; 
 scalar_t__ FUNC6 (TYPE_4__*,scalar_t__) ; 
 TYPE_1__ nobounce_dmamap ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int FUNC8 (int,int) ; 

__attribute__((used)) static void
FUNC9(bus_dma_tag_t dmat, bus_dmamap_t map, struct vm_page **ma,
    int ma_offs, bus_size_t buflen, int flags)
{
	bus_size_t sg_len, max_sgsize;
	int page_index;
	vm_paddr_t paddr;

	if (map != &nobounce_dmamap && map->pagesneeded == 0) {
		FUNC2(KTR_BUSDMA, "lowaddr= %d Maxmem= %d, boundary= %d, "
		    "alignment= %d", dmat->common.lowaddr,
		    FUNC7((vm_paddr_t)Maxmem),
		    dmat->common.boundary, dmat->common.alignment);
		FUNC1(KTR_BUSDMA, "map= %p, nobouncemap= %p, pagesneeded= %d",
		    map, &nobounce_dmamap, map->pagesneeded);

		/*
		 * Count the number of bounce pages
		 * needed in order to complete this transfer
		 */
		page_index = 0;
		while (buflen > 0) {
			paddr = FUNC5(ma[page_index]) + ma_offs;
			sg_len = PAGE_SIZE - ma_offs;
			max_sgsize = FUNC4(buflen, dmat->common.maxsegsz);
			sg_len = FUNC4(sg_len, max_sgsize);
			if (FUNC6(&dmat->common, paddr) != 0) {
				sg_len = FUNC8(sg_len,
				    dmat->common.alignment);
				sg_len = FUNC4(sg_len, max_sgsize);
				FUNC3((sg_len & (dmat->common.alignment - 1))
				    == 0, ("Segment size is not aligned"));
				map->pagesneeded++;
			}
			if (((ma_offs + sg_len) & ~PAGE_MASK) != 0)
				page_index++;
			ma_offs = (ma_offs + sg_len) & PAGE_MASK;
			FUNC3(buflen >= sg_len,
			    ("Segment length overruns original buffer"));
			buflen -= sg_len;
		}
		FUNC0(KTR_BUSDMA, "pagesneeded= %d\n", map->pagesneeded);
	}
}