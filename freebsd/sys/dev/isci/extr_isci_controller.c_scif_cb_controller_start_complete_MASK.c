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
typedef  int uint32_t ;
struct ISCI_CONTROLLER {int initial_discovery_mask; TYPE_1__* domain; int /*<<< orphan*/  is_started; } ;
struct TYPE_2__ {int /*<<< orphan*/  sci_object; } ;
typedef  scalar_t__ SCI_STATUS ;
typedef  int /*<<< orphan*/  SCI_DOMAIN_HANDLE_T ;
typedef  int /*<<< orphan*/  SCI_CONTROLLER_HANDLE_T ;

/* Variables and functions */
 int /*<<< orphan*/  DEVICE_TIMEOUT ; 
 int SCI_MAX_DOMAINS ; 
 scalar_t__ SCI_SUCCESS ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (struct ISCI_CONTROLLER*,TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(SCI_CONTROLLER_HANDLE_T controller,
    SCI_STATUS completion_status)
{
	uint32_t index;
	struct ISCI_CONTROLLER *isci_controller = (struct ISCI_CONTROLLER *)
	    FUNC1(controller);

	isci_controller->is_started = TRUE;

	/* Set bits for all domains.  We will clear them one-by-one once
	 *  the domains complete discovery, or return error when calling
	 *  scif_domain_discover.  Once all bits are clear, we will register
	 *  the controller with CAM.
	 */
	isci_controller->initial_discovery_mask = (1 << SCI_MAX_DOMAINS) - 1;

	for(index = 0; index < SCI_MAX_DOMAINS; index++) {
		SCI_STATUS status;
		SCI_DOMAIN_HANDLE_T domain =
		    isci_controller->domain[index].sci_object;

		status = FUNC2(
			domain,
			FUNC3(domain),
			DEVICE_TIMEOUT
		);

		if (status != SCI_SUCCESS)
		{
			FUNC0(
			    isci_controller, &isci_controller->domain[index]);
		}
	}
}