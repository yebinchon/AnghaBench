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
struct ISCI_CONTROLLER {scalar_t__ is_started; } ;
typedef  int /*<<< orphan*/  SCI_DOMAIN_HANDLE_T ;
typedef  int /*<<< orphan*/  SCI_CONTROLLER_HANDLE_T ;

/* Variables and functions */
 int /*<<< orphan*/  DEVICE_TIMEOUT ; 
 scalar_t__ TRUE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void
FUNC3(SCI_CONTROLLER_HANDLE_T controller,
    SCI_DOMAIN_HANDLE_T domain)
{
	struct ISCI_CONTROLLER *isci_controller =
	    (struct ISCI_CONTROLLER *)FUNC0(controller);

	/* When the controller start is complete, we will explicitly discover
	 *  all of the domains then.  This is because SCIF will not allow
	 *  any I/O to start until the controller is ready, meaning internal SMP
	 *  requests triggered by domain discovery won't work until the controller
	 *  is ready.
	 */
	if (isci_controller->is_started == TRUE)
	    FUNC1(domain,
	        FUNC2(domain),
	        DEVICE_TIMEOUT);
}