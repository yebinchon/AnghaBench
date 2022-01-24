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
struct dma_mem {scalar_t__ dma_tag; int /*<<< orphan*/  dma_map; scalar_t__ virt_addr; int /*<<< orphan*/  size; int /*<<< orphan*/  dma_addr; int /*<<< orphan*/  align; } ;
struct TYPE_4__ {int /*<<< orphan*/  pqi_parent_dmat; } ;
struct TYPE_5__ {TYPE_1__ os_specific; } ;
typedef  TYPE_2__ pqisrc_softstate_t ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMA_NOWAIT ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int FUNC4 (scalar_t__,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (scalar_t__,void**,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  os_dma_map ; 

int FUNC8(pqisrc_softstate_t *softs, struct dma_mem *dma_mem)
{
	int ret = 0;

	/* DBG_FUNC("IN\n"); */

	/* DMA memory needed - allocate it */
	if ((ret = FUNC2(
		softs->os_specific.pqi_parent_dmat, /* parent */
		dma_mem->align, 0,	/* algnmnt, boundary */
		BUS_SPACE_MAXADDR,      /* lowaddr */
		BUS_SPACE_MAXADDR, 	/* highaddr */
		NULL, NULL, 		/* filter, filterarg */
		dma_mem->size, 		/* maxsize */
		1,			/* nsegments */
		dma_mem->size,		/* maxsegsize */
		0,			/* flags */
		NULL, NULL,		/* No locking needed */
		&dma_mem->dma_tag)) != 0 ) {
	        FUNC0("can't allocate DMA tag with error = 0x%x\n", ret);
		goto err_out;
	}
	if ((ret = FUNC5(dma_mem->dma_tag, (void **)&dma_mem->virt_addr,
		BUS_DMA_NOWAIT, &dma_mem->dma_map)) != 0) {
		FUNC0("can't allocate DMA memory for required object \
				with error = 0x%x\n", ret);
		goto err_mem;
	}

	if((ret = FUNC4(dma_mem->dma_tag, dma_mem->dma_map, 
		dma_mem->virt_addr, dma_mem->size,
		os_dma_map, &dma_mem->dma_addr, 0)) != 0) {
		FUNC0("can't load DMA memory for required \
			object with error = 0x%x\n", ret);
		goto err_load;
	}

	FUNC7(dma_mem->virt_addr, 0, dma_mem->size);

	/* DBG_FUNC("OUT\n"); */
	return ret;

err_load:
	if(dma_mem->virt_addr)
		FUNC6(dma_mem->dma_tag, dma_mem->virt_addr, 
				dma_mem->dma_map);
err_mem:
	if(dma_mem->dma_tag)
		FUNC3(dma_mem->dma_tag);
err_out:
	FUNC1("failed OUT\n");
	return ret;
}