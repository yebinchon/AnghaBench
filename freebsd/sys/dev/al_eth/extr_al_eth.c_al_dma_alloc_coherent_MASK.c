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
typedef  int uint32_t ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  bus_dmamap_t ;
typedef  int /*<<< orphan*/  bus_dma_tag_t ;
typedef  int /*<<< orphan*/  bus_addr_t ;

/* Variables and functions */
 int BUS_DMA_COHERENT ; 
 int BUS_DMA_ZERO ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  al_dma_map_addr ; 
 int FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,void**,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,int) ; 

__attribute__((used)) static int
FUNC5(struct device *dev, bus_dma_tag_t *tag, bus_dmamap_t *map,
    bus_addr_t *baddr, void **vaddr, uint32_t size)
{
	int ret;
	uint32_t maxsize = ((size - 1)/PAGE_SIZE + 1) * PAGE_SIZE;

	ret = FUNC0(FUNC3(dev), 8, 0,
	    BUS_SPACE_MAXADDR, BUS_SPACE_MAXADDR, NULL, NULL,
	    maxsize, 1, maxsize, BUS_DMA_COHERENT, NULL, NULL, tag);
	if (ret != 0) {
		FUNC4(dev,
		    "failed to create bus tag, ret = %d\n", ret);
		return (ret);
	}

	ret = FUNC2(*tag, vaddr,
	    BUS_DMA_COHERENT | BUS_DMA_ZERO, map);
	if (ret != 0) {
		FUNC4(dev,
		    "failed to allocate dmamem, ret = %d\n", ret);
		return (ret);
	}

	ret = FUNC1(*tag, *map, *vaddr,
	    size, al_dma_map_addr, baddr, 0);
	if (ret != 0) {
		FUNC4(dev,
		    "failed to allocate bus_dmamap_load, ret = %d\n", ret);
		return (ret);
	}

	return (0);
}