#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* device_t ;
struct TYPE_8__ {scalar_t__ state; int flags; int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 scalar_t__ BUS_PASS_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int DF_DONENOMATCH ; 
 int DF_ENABLED ; 
 int DF_REBID ; 
 scalar_t__ DS_ALIVE ; 
 int /*<<< orphan*/  GIANT_REQUIRED ; 
 scalar_t__ bootverbose ; 
 scalar_t__ bus_current_pass ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

int
FUNC6(device_t dev)
{
	int error;

	GIANT_REQUIRED;

	if (dev->state >= DS_ALIVE && (dev->flags & DF_REBID) == 0)
		return (-1);

	if (!(dev->flags & DF_ENABLED)) {
		if (bootverbose && FUNC1(dev) != NULL) {
			FUNC2(dev);
			FUNC5("not probed (disabled)\n");
		}
		return (-1);
	}
	if ((error = FUNC3(dev->parent, dev)) != 0) {
		if (bus_current_pass == BUS_PASS_DEFAULT &&
		    !(dev->flags & DF_DONENOMATCH)) {
			FUNC0(dev->parent, dev);
			FUNC4(dev);
			dev->flags |= DF_DONENOMATCH;
		}
		return (error);
	}
	return (0);
}