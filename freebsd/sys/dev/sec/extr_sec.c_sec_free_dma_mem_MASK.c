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
struct sec_dma_mem {int /*<<< orphan*/ * dma_vaddr; int /*<<< orphan*/  dma_tag; int /*<<< orphan*/  dma_map; scalar_t__ dma_is_map; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct sec_dma_mem *dma_mem)
{

	/* Check for double free */
	if (dma_mem->dma_vaddr == NULL)
		return;

	FUNC2(dma_mem->dma_tag, dma_mem->dma_map);

	if (dma_mem->dma_is_map)
		FUNC1(dma_mem->dma_tag, dma_mem->dma_map);
	else
		FUNC3(dma_mem->dma_tag, dma_mem->dma_vaddr,
		    dma_mem->dma_map);

	FUNC0(dma_mem->dma_tag);
	dma_mem->dma_vaddr = NULL;
}