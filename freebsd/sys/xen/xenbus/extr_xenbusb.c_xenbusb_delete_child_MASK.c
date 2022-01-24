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
struct TYPE_2__ {int /*<<< orphan*/ * node; } ;
struct xenbus_device_ivars {TYPE_1__ xd_local_watch; TYPE_1__ xd_otherend_watch; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct xenbus_device_ivars* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct xenbus_device_ivars*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC4(device_t dev, device_t child)
{
	struct xenbus_device_ivars *ivars;

	ivars = FUNC1(child);

	/*
	 * We no longer care about the otherend of the
	 * connection.  Cancel the watches now so that we
	 * don't try to handle an event for a partially
	 * detached child.
	 */
	if (ivars->xd_otherend_watch.node != NULL)
		FUNC3(&ivars->xd_otherend_watch);
	if (ivars->xd_local_watch.node != NULL)
		FUNC3(&ivars->xd_local_watch);
	
	FUNC0(dev, child);
	FUNC2(ivars);
}