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
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	device_t bus;
	static char *fdc_ids[] = { "PNP0700", "PNP0701", NULL };
	int rv;

	bus = FUNC3(dev);
	rv = FUNC1(bus, dev, fdc_ids, NULL);
	if (rv > 0)
		return (rv);

	if (FUNC2(FUNC0(bus, dev, "_FDE", NULL, NULL)))
		FUNC4(dev, "floppy drive controller (FDE)");
	else
		FUNC4(dev, "floppy drive controller");
	return (rv);
}