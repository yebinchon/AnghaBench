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
struct resource {int dummy; } ;
typedef  int /*<<< orphan*/  driver_intr_t ;
typedef  int /*<<< orphan*/  driver_filter_t ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct resource*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*,void**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(device_t dev, device_t child, struct resource *irq,
    int flags, driver_filter_t *filter, driver_intr_t *intr, void *arg,
    void **cookiep)
{
	device_t	core, bus;
	int		error;

	/* Find the actual bus-attached child core */
	core = child;
	while ((bus = FUNC4(core)) != NULL) {
		if (bus == dev)
			break;

		core = bus;
	}

	FUNC1(core != NULL, ("%s is not a child of %s",
	    FUNC3(child), FUNC3(dev)));

	/* Ask our bridge to enable interrupt routing for the child core */
	error = FUNC0(FUNC4(dev), core);
	if (error)
		return (error);

	/* Delegate actual interrupt setup to the default bhnd bus
	 * implementation */
	return (FUNC2(dev, child, irq, flags, filter, intr,
	    arg, cookiep));
}