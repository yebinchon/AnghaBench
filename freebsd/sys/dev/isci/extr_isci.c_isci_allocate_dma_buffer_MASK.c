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
typedef  scalar_t__ uint32_t ;
struct ISCI_MEMORY {int /*<<< orphan*/  size; scalar_t__ virtual_address; int /*<<< orphan*/  dma_map; int /*<<< orphan*/  dma_tag; } ;
struct ISCI_CONTROLLER {int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMA_ZERO ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 scalar_t__ EINVAL ; 
 scalar_t__ ENOMEM ; 
 int /*<<< orphan*/  ISCI_DMA_BOUNDARY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ISCI_MEMORY*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,void**,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  busdma_lock_mutex ; 
 int /*<<< orphan*/  isci_allocate_dma_buffer_callback ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*) ; 

int
FUNC5(device_t device, struct ISCI_CONTROLLER *controller,
    struct ISCI_MEMORY *memory)
{
	uint32_t status;

	status = FUNC0(FUNC3(device),
	    0x40 /* cacheline alignment */,
	    ISCI_DMA_BOUNDARY, BUS_SPACE_MAXADDR,
	    BUS_SPACE_MAXADDR, NULL, NULL, memory->size,
	    0x1 /* we want physically contiguous */,
	    memory->size, 0, busdma_lock_mutex, &controller->lock,
	    &memory->dma_tag);

	if(status == ENOMEM) {
		FUNC4(0, "ISCI", "bus_dma_tag_create failed\n");
		return (status);
	}

	status = FUNC2(memory->dma_tag,
	    (void **)&memory->virtual_address, BUS_DMA_ZERO, &memory->dma_map);

	if(status == ENOMEM)
	{
		FUNC4(0, "ISCI", "bus_dmamem_alloc failed\n");
		return (status);
	}

	status = FUNC1(memory->dma_tag, memory->dma_map,
	    (void *)memory->virtual_address, memory->size,
	    isci_allocate_dma_buffer_callback, memory, 0);

	if(status == EINVAL)
	{
		FUNC4(0, "ISCI", "bus_dmamap_load failed\n");
		return (status);
	}

	return (0);
}