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
typedef  size_t uint32_t ;
struct ISCI_REMOTE_DEVICE {struct ISCI_DOMAIN* domain; } ;
struct ISCI_DOMAIN {int dummy; } ;
struct ISCI_CONTROLLER {struct ISCI_REMOTE_DEVICE** remote_device; } ;
typedef  int /*<<< orphan*/  SCI_DOMAIN_HANDLE_T ;
typedef  int /*<<< orphan*/  SCI_CONTROLLER_HANDLE_T ;

/* Variables and functions */
 size_t SCI_MAX_REMOTE_DEVICES ; 
 int /*<<< orphan*/  FUNC0 (struct ISCI_REMOTE_DEVICE*) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 

void
FUNC2(SCI_CONTROLLER_HANDLE_T controller,
    SCI_DOMAIN_HANDLE_T domain)
{
	uint32_t i;
	struct ISCI_DOMAIN *isci_domain = FUNC1(domain);
	struct ISCI_CONTROLLER *isci_controller =
	    FUNC1(controller);

	for (i = 0; i < SCI_MAX_REMOTE_DEVICES; i++) {
		struct ISCI_REMOTE_DEVICE *remote_device =
		    isci_controller->remote_device[i];

		if (remote_device != NULL &&
		    remote_device->domain == isci_domain)
			FUNC0(remote_device);
	}
}