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
struct ISCI_INTERRUPT_INFO {TYPE_1__* handlers; scalar_t__ interrupt_target_handle; } ;
struct ISCI_CONTROLLER {scalar_t__ release_queued_ccbs; int /*<<< orphan*/  lock; int /*<<< orphan*/  scif_controller_handle; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* completion_handler ) (int /*<<< orphan*/ ) ;scalar_t__ (* interrupt_handler ) (int /*<<< orphan*/ ) ;} ;
typedef  int /*<<< orphan*/  SCI_CONTROLLER_HANDLE_T ;
typedef  scalar_t__ (* SCIC_CONTROLLER_INTERRUPT_HANDLER ) (int /*<<< orphan*/ ) ;
typedef  int /*<<< orphan*/  (* SCIC_CONTROLLER_COMPLETION_HANDLER ) (int /*<<< orphan*/ ) ;

/* Variables and functions */
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC0 (struct ISCI_CONTROLLER*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void
FUNC4(void *arg)
{
	struct ISCI_INTERRUPT_INFO *interrupt_info =
	    (struct ISCI_INTERRUPT_INFO *)arg;
	struct ISCI_CONTROLLER *controller =
	    (struct ISCI_CONTROLLER *)interrupt_info->interrupt_target_handle;
	SCIC_CONTROLLER_INTERRUPT_HANDLER  interrupt_handler;
	SCIC_CONTROLLER_COMPLETION_HANDLER completion_handler;

	interrupt_handler =  interrupt_info->handlers->interrupt_handler;
	completion_handler = interrupt_info->handlers->completion_handler;

	SCI_CONTROLLER_HANDLE_T scic_controller_handle;

	scic_controller_handle = FUNC3(
	    controller->scif_controller_handle);

	if (interrupt_handler(scic_controller_handle)) {
		FUNC1(&controller->lock);
		completion_handler(scic_controller_handle);
		/*
		 * isci_controller_release_queued_ccb() is a relatively
		 *  expensive routine, so we don't call it until the controller
		 *  level flag is set to TRUE.
		 */
		if (controller->release_queued_ccbs == TRUE)
			FUNC0(controller);
		FUNC2(&controller->lock);
	}
}