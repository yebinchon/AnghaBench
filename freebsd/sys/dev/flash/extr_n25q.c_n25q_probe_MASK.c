#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_5__ {int /*<<< orphan*/  name; } ;
struct TYPE_4__ {int ocd_data; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  compat_data ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 TYPE_2__* flash_devices ; 
 int FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	int i;

	if (!FUNC4(dev))
		return (ENXIO);

	/* First try to match the compatible property to the compat_data */
	if (FUNC3(dev, compat_data)->ocd_data == 1)
		goto found;

	/*
	 * Next, try to find a compatible device using the names in the
	 * flash_devices structure
	 */
	for (i = 0; i < FUNC1(flash_devices); i++)
		if (FUNC2(dev, flash_devices[i].name))
			goto found;

	return (ENXIO);
found:
	FUNC0(dev, "Micron n25q");

	return (0);
}