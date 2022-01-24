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
struct sec_dma_mem {int /*<<< orphan*/  dma_map; int /*<<< orphan*/  dma_tag; int /*<<< orphan*/ * dma_vaddr; } ;
typedef  int /*<<< orphan*/  bus_dmasync_op_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void
FUNC1(struct sec_dma_mem *dma_mem, bus_dmasync_op_t op)
{

	/* Sync only if dma memory is valid */
	if (dma_mem->dma_vaddr != NULL)
		FUNC0(dma_mem->dma_tag, dma_mem->dma_map, op);
}