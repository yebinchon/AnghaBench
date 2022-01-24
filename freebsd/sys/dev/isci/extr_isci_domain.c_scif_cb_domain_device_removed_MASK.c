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
struct TYPE_2__ {int /*<<< orphan*/  path; } ;
union ccb {TYPE_1__ ccb_h; } ;
typedef  int /*<<< orphan*/  uint32_t ;
struct ISCI_REMOTE_DEVICE {size_t index; } ;
struct ISCI_DOMAIN {struct ISCI_REMOTE_DEVICE* da_remote_device; } ;
struct ISCI_CONTROLLER {int /*<<< orphan*/  remote_device_pool; int /*<<< orphan*/ ** remote_device; int /*<<< orphan*/  sim; } ;
typedef  int /*<<< orphan*/  SCI_REMOTE_DEVICE_HANDLE_T ;
typedef  int /*<<< orphan*/  SCI_DOMAIN_HANDLE_T ;
typedef  int /*<<< orphan*/  SCI_CONTROLLER_HANDLE_T ;

/* Variables and functions */
 int /*<<< orphan*/  CAM_LUN_WILDCARD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct ISCI_REMOTE_DEVICE*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 union ccb* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (union ccb*) ; 

void
FUNC7(SCI_CONTROLLER_HANDLE_T controller,
    SCI_DOMAIN_HANDLE_T domain, SCI_REMOTE_DEVICE_HANDLE_T remote_device)
{
	struct ISCI_REMOTE_DEVICE *isci_remote_device =
	    (struct ISCI_REMOTE_DEVICE *)FUNC1(remote_device);
	struct ISCI_DOMAIN *isci_domain =
	    (struct ISCI_DOMAIN *)FUNC1(domain);
	struct ISCI_CONTROLLER *isci_controller =
	    (struct ISCI_CONTROLLER *)FUNC1(controller);
	uint32_t path = FUNC0(isci_controller->sim);
	union ccb *ccb = FUNC4();

	isci_controller->remote_device[isci_remote_device->index] = NULL;

	FUNC5(&ccb->ccb_h.path, NULL, path,
	    isci_remote_device->index, CAM_LUN_WILDCARD);

	FUNC6(ccb);

	FUNC3(remote_device);

	/*
	 * Only put the remote device back into the pool if it was an
	 *  expander-attached device.
	 */
	if (isci_remote_device != isci_domain->da_remote_device)
		FUNC2(isci_controller->remote_device_pool,
		    isci_remote_device);
}