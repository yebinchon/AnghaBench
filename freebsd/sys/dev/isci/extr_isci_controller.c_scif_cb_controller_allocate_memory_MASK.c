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
struct ISCI_CONTROLLER {int /*<<< orphan*/  buffer_dma_tag; int /*<<< orphan*/  unmap_buffer_pool; } ;
struct TYPE_3__ {int /*<<< orphan*/  physical_address; int /*<<< orphan*/ * virtual_address; int /*<<< orphan*/  constant_memory_alignment; } ;
typedef  TYPE_1__ SCI_PHYSICAL_MEMORY_DESCRIPTOR_T ;
typedef  int /*<<< orphan*/  SCI_CONTROLLER_HANDLE_T ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMA_NOWAIT ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  M_ISCI ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  isci_single_map ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC5(SCI_CONTROLLER_HANDLE_T controller,
    SCI_PHYSICAL_MEMORY_DESCRIPTOR_T *mde)
{
	struct ISCI_CONTROLLER *isci_controller = (struct ISCI_CONTROLLER *)
	    FUNC2(controller);

	/*
	 * Note this routine is only used for buffers needed to translate
	 * SCSI UNMAP commands to ATA DSM commands for SATA disks.
	 *
	 * We first try to pull a buffer from the controller's pool, and only
	 * call contigmalloc if one isn't there.
	 */
	if (!FUNC3(isci_controller->unmap_buffer_pool)) {
		FUNC4(isci_controller->unmap_buffer_pool,
		    mde->virtual_address);
	} else
		mde->virtual_address = FUNC1(PAGE_SIZE,
		    M_ISCI, M_NOWAIT, 0, BUS_SPACE_MAXADDR,
		    mde->constant_memory_alignment, 0);

	if (mde->virtual_address != NULL)
		FUNC0(isci_controller->buffer_dma_tag,
		    NULL, mde->virtual_address, PAGE_SIZE,
		    isci_single_map, &mde->physical_address,
		    BUS_DMA_NOWAIT);
}