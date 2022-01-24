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
struct isci_softc {int num_interrupts; int /*<<< orphan*/  device; int /*<<< orphan*/ * handlers; struct ISCI_INTERRUPT_INFO* interrupt_info; } ;
struct ISCI_INTERRUPT_INFO {int /*<<< orphan*/ * tag; int /*<<< orphan*/ * res; scalar_t__ rid; void* interrupt_target_handle; int /*<<< orphan*/ * handlers; } ;

/* Variables and functions */
 int INTR_MPSAFE ; 
 int INTR_TYPE_CAM ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int /*<<< orphan*/  SCIC_LEGACY_LINE_INTERRUPT_TYPE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct ISCI_INTERRUPT_INFO*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  isci_interrupt_legacy_handler ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(struct isci_softc *isci)
{
	struct ISCI_INTERRUPT_INFO *interrupt_info = &isci->interrupt_info[0];

	isci->num_interrupts = 1;

	FUNC3(SCIC_LEGACY_LINE_INTERRUPT_TYPE,
	    0, &isci->handlers[0]);

	interrupt_info->handlers = &isci->handlers[0];
	interrupt_info->rid = 0;
	interrupt_info->interrupt_target_handle = (void *)isci;

	interrupt_info->res = FUNC0(isci->device, SYS_RES_IRQ,
	    &interrupt_info->rid, RF_SHAREABLE|RF_ACTIVE);

	if (interrupt_info->res == NULL) {
		FUNC2(0, "ISCI", "bus_alloc_resource failed\n");
		return (-1);
	}

	interrupt_info->tag = NULL;
	if (FUNC1(isci->device, interrupt_info->res,
	    INTR_TYPE_CAM | INTR_MPSAFE, NULL, isci_interrupt_legacy_handler,
	    interrupt_info, &interrupt_info->tag)) {
		FUNC2(0, "ISCI", "bus_setup_intr failed\n");
		return (-1);
	}

	return (0);
}