#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ISCI_REMOTE_DEVICE {TYPE_2__* domain; } ;
struct TYPE_3__ {int /*<<< orphan*/  remote_device_handle; } ;
struct ISCI_IO_REQUEST {TYPE_1__ parent; } ;
struct ISCI_CONTROLLER {int /*<<< orphan*/  lock; } ;
struct TYPE_4__ {struct ISCI_CONTROLLER* controller; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ISCI_REMOTE_DEVICE*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

void
FUNC4(void *arg)
{
	struct ISCI_IO_REQUEST *request = (struct ISCI_IO_REQUEST *)arg;
	struct ISCI_REMOTE_DEVICE *remote_device = (struct ISCI_REMOTE_DEVICE *)
		FUNC3(request->parent.remote_device_handle);
	struct ISCI_CONTROLLER *controller = remote_device->domain->controller;

	FUNC1(&controller->lock);
	FUNC0(remote_device, NULL);
	FUNC2(&controller->lock);
}