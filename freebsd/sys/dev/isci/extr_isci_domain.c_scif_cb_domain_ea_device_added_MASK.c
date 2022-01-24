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
typedef  int /*<<< orphan*/  uint8_t ;
struct ISCI_REMOTE_DEVICE {struct ISCI_DOMAIN* domain; int /*<<< orphan*/  sci_object; } ;
struct ISCI_DOMAIN {int dummy; } ;
struct ISCI_CONTROLLER {int /*<<< orphan*/  remote_device_pool; } ;
typedef  int /*<<< orphan*/  SMP_RESPONSE_DISCOVER_T ;
typedef  int /*<<< orphan*/  SCI_REMOTE_DEVICE_HANDLE_T ;
typedef  int /*<<< orphan*/  SCI_DOMAIN_HANDLE_T ;
typedef  int /*<<< orphan*/  SCI_CONTROLLER_HANDLE_T ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ISCI_REMOTE_DEVICE*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct ISCI_REMOTE_DEVICE*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC5(SCI_CONTROLLER_HANDLE_T controller,
    SCI_DOMAIN_HANDLE_T domain, SCI_REMOTE_DEVICE_HANDLE_T containing_device,
    SMP_RESPONSE_DISCOVER_T *smp_response)
{
	struct ISCI_REMOTE_DEVICE *remote_device;
	struct ISCI_DOMAIN *isci_domain =
		(struct ISCI_DOMAIN *)FUNC0(domain);
	struct ISCI_CONTROLLER *isci_controller =
		(struct ISCI_CONTROLLER *)FUNC0(controller);

	FUNC2(isci_controller->remote_device_pool, remote_device);

	FUNC3( domain,
	    (uint8_t*)remote_device + sizeof(struct ISCI_REMOTE_DEVICE),
	    &(remote_device->sci_object));

	FUNC1(remote_device->sci_object, remote_device);

	FUNC4(remote_device->sci_object,
	    containing_device, smp_response);

	/* We do not put the device in the ISCI_CONTROLLER's device array yet.
	 *  That will happen once the device becomes ready (see
	 *  scif_cb_remote_device_ready).
	 */
	remote_device->domain = isci_domain;
}