#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uintmax_t ;
typedef  scalar_t__ uint64_t ;
typedef  int uint32_t ;
struct ena_adapter {int /*<<< orphan*/  dma_width; } ;
struct TYPE_3__ {scalar_t__ paddr; int /*<<< orphan*/ * vaddr; int /*<<< orphan*/ * tag; int /*<<< orphan*/  map; } ;
typedef  TYPE_1__ ena_mem_handle_t ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int bus_size_t ;

/* Variables and functions */
 int BUS_DMASYNC_PREREAD ; 
 int BUS_DMASYNC_PREWRITE ; 
 int /*<<< orphan*/  BUS_DMA_ALLOCNOW ; 
 int BUS_DMA_COHERENT ; 
 int BUS_DMA_ZERO ; 
 scalar_t__ BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  ENA_ALERT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int PAGE_SIZE ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,void**,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct ena_adapter* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ena_dmamap_callback ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int,...) ; 
 scalar_t__ FUNC10 (int) ; 

int
FUNC11(device_t dmadev, bus_size_t size,
    ena_mem_handle_t *dma , int mapflags)
{
	struct ena_adapter* adapter = FUNC8(dmadev);
	uint32_t maxsize;
	uint64_t dma_space_addr;
	int error;

	maxsize = ((size - 1) / PAGE_SIZE + 1) * PAGE_SIZE;

	dma_space_addr = FUNC0(adapter->dma_width);
	if (FUNC10(dma_space_addr == 0))
		dma_space_addr = BUS_SPACE_MAXADDR;

	error = FUNC1(FUNC7(dmadev), /* parent */
	    8, 0,	      /* alignment, bounds 		*/
	    dma_space_addr,   /* lowaddr of exclusion window	*/
	    BUS_SPACE_MAXADDR,/* highaddr of exclusion window	*/
	    NULL, NULL,	      /* filter, filterarg 		*/
	    maxsize,	      /* maxsize 			*/
	    1,		      /* nsegments 			*/
	    maxsize,	      /* maxsegsize 			*/
	    BUS_DMA_ALLOCNOW, /* flags 				*/
	    NULL,	      /* lockfunc 			*/
	    NULL,	      /* lockarg 			*/
	    &dma->tag);
	if (FUNC10(error != 0)) {
		FUNC9(ENA_ALERT, "bus_dma_tag_create failed: %d\n", error);
		goto fail_tag;
	}

	error = FUNC5(dma->tag, (void**) &dma->vaddr,
	    BUS_DMA_COHERENT | BUS_DMA_ZERO, &dma->map);
	if (FUNC10(error != 0)) {
		FUNC9(ENA_ALERT, "bus_dmamem_alloc(%ju) failed: %d\n",
		    (uintmax_t)size, error);
		goto fail_map_create;
	}

	dma->paddr = 0;
	error = FUNC3(dma->tag, dma->map, dma->vaddr,
	    size, ena_dmamap_callback, &dma->paddr, mapflags);
	if (FUNC10((error != 0) || (dma->paddr == 0))) {
		FUNC9(ENA_ALERT, ": bus_dmamap_load failed: %d\n", error);
		goto fail_map_load;
	}

	FUNC4(dma->tag, dma->map,
	    BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);

	return (0);

fail_map_load:
	FUNC6(dma->tag, dma->vaddr, dma->map);
fail_map_create:
	FUNC2(dma->tag);
fail_tag:
	dma->tag = NULL;
	dma->vaddr = NULL;
	dma->paddr = 0;

	return (error);
}