#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct dma_mem {int /*<<< orphan*/ * dma_tag; int /*<<< orphan*/ * virt_addr; int /*<<< orphan*/  dma_map; scalar_t__ dma_addr; } ;
typedef  int /*<<< orphan*/  pqisrc_softstate_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC3(pqisrc_softstate_t *softs, struct dma_mem *dma_mem)
{
	/* DBG_FUNC("IN\n"); */

	if(dma_mem->dma_addr) {
		FUNC1(dma_mem->dma_tag, dma_mem->dma_map);
		dma_mem->dma_addr = 0;
	}

	if(dma_mem->virt_addr) {
		FUNC2(dma_mem->dma_tag, dma_mem->virt_addr,
					dma_mem->dma_map);
		dma_mem->virt_addr = NULL;
	}

	if(dma_mem->dma_tag) {
		FUNC0(dma_mem->dma_tag);
		dma_mem->dma_tag = NULL;
	}

	/* DBG_FUNC("OUT\n");  */
}