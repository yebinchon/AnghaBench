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
typedef  int /*<<< orphan*/  bus_size_t ;
typedef  int /*<<< orphan*/  bus_dmamap_t ;
typedef  int /*<<< orphan*/  bus_dma_tag_t ;
typedef  int /*<<< orphan*/  bus_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,void**,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fwdma_map_cb ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

void *
FUNC3(bus_dma_tag_t dmat, bus_dmamap_t *dmamap,
	bus_size_t size, bus_addr_t *bus_addr, int flag)
{
	void *v_addr;

	if (FUNC1(dmat, &v_addr, flag, dmamap)) {
		FUNC2("fwdma_malloc_size: failed(1)\n");
		return (NULL);
	}
	FUNC0(dmat, *dmamap, v_addr, size,
			fwdma_map_cb, bus_addr, /*flags*/0);
	return (v_addr);
}