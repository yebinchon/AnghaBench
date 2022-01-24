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
struct TYPE_2__ {int /*<<< orphan*/  event_handler; } ;
struct ib_device {TYPE_1__ cache; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ib_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ib_wq ; 

void FUNC3(struct ib_device *device)
{
	/* The cleanup function unregisters the event handler,
	 * waits for all in-progress workqueue elements and cleans
	 * up the GID cache. This function should be called after
	 * the device was removed from the devices list and all
	 * clients were removed, so the cache exists but is
	 * non-functional and shouldn't be updated anymore.
	 */
	FUNC2(&device->cache.event_handler);
	FUNC0(ib_wq);
	FUNC1(device);
}