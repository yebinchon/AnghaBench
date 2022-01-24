#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct isci_softc {int controller_count; int num_interrupts; struct ISCI_INTERRUPT_INFO* interrupt_info; struct ISCI_PCI_BAR* pci_bar; int /*<<< orphan*/ * sci_library_memory; struct ISCI_CONTROLLER* controllers; } ;
struct ISCI_PCI_BAR {int /*<<< orphan*/ * resource; int /*<<< orphan*/  resource_id; } ;
struct ISCI_INTERRUPT_INFO {int /*<<< orphan*/ * res; int /*<<< orphan*/ * tag; } ;
struct ISCI_CONTROLLER {scalar_t__ is_started; int /*<<< orphan*/  unmap_buffer_pool; TYPE_1__* phys; int /*<<< orphan*/ * remote_device_memory; int /*<<< orphan*/ * timer_memory; int /*<<< orphan*/  lock; int /*<<< orphan*/ * sim; int /*<<< orphan*/  path; int /*<<< orphan*/ * scif_controller_handle; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {scalar_t__ cdev_locate; scalar_t__ cdev_fault; } ;
typedef  int /*<<< orphan*/  SCI_STATUS ;

/* Variables and functions */
 struct isci_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int ISCI_NUM_PCI_BARS ; 
 int /*<<< orphan*/  M_ISCI ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int SCI_MAX_PHYS ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ISCI_CONTROLLER*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC21(device_t device)
{
	struct isci_softc *isci = FUNC0(device);
	int i, phy;

	for (i = 0; i < isci->controller_count; i++) {
		struct ISCI_CONTROLLER *controller = &isci->controllers[i];
		SCI_STATUS status;
		void *unmap_buffer;

		if (controller->scif_controller_handle != NULL) {
			FUNC16(
			    FUNC17(controller->scif_controller_handle));

			FUNC9(&controller->lock);
			status = FUNC18(controller->scif_controller_handle, 0);
			FUNC10(&controller->lock);

			while (controller->is_started == TRUE) {
				/* Now poll for interrupts until the controller stop complete
				 *  callback is received.
				 */
				FUNC9(&controller->lock);
				FUNC7(controller);
				FUNC10(&controller->lock);
				FUNC11("isci", 1);
			}

			if(controller->sim != NULL) {
				FUNC9(&controller->lock);
				FUNC20(controller->path);
				FUNC19(FUNC4(controller->sim));
				FUNC3(controller->sim, TRUE);
				FUNC10(&controller->lock);
			}
		}

		if (controller->timer_memory != NULL)
			FUNC6(controller->timer_memory, M_ISCI);

		if (controller->remote_device_memory != NULL)
			FUNC6(controller->remote_device_memory, M_ISCI);

		for (phy = 0; phy < SCI_MAX_PHYS; phy++) {
			if (controller->phys[phy].cdev_fault)
				FUNC8(controller->phys[phy].cdev_fault);

			if (controller->phys[phy].cdev_locate)
				FUNC8(controller->phys[phy].cdev_locate);
		}

		while (1) {
			FUNC15(controller->unmap_buffer_pool, unmap_buffer);
			if (unmap_buffer == NULL)
				break;
			FUNC5(unmap_buffer, PAGE_SIZE, M_ISCI);
		}
	}

	/* The SCIF controllers have been stopped, so we can now
	 *  free the SCI library memory.
	 */
	if (isci->sci_library_memory != NULL)
		FUNC6(isci->sci_library_memory, M_ISCI);

	for (i = 0; i < ISCI_NUM_PCI_BARS; i++)
	{
		struct ISCI_PCI_BAR *pci_bar = &isci->pci_bar[i];

		if (pci_bar->resource != NULL)
			FUNC1(device, SYS_RES_MEMORY,
			    pci_bar->resource_id, pci_bar->resource);
	}

	for (i = 0; i < isci->num_interrupts; i++)
	{
		struct ISCI_INTERRUPT_INFO *interrupt_info;

		interrupt_info = &isci->interrupt_info[i];

		if(interrupt_info->tag != NULL)
			FUNC2(device, interrupt_info->res,
			    interrupt_info->tag);

		if(interrupt_info->res != NULL)
			FUNC1(device, SYS_RES_IRQ,
			    FUNC14(interrupt_info->res),
			    interrupt_info->res);

		FUNC13(device);
	}
	FUNC12(device);

	return (0);
}