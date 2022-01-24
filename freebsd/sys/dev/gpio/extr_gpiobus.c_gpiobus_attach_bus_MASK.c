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
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

device_t
FUNC4(device_t dev)
{
	device_t busdev;

	busdev = FUNC1(dev, "gpiobus", -1);
	if (busdev == NULL)
		return (NULL);
	if (FUNC1(dev, "gpioc", -1) == NULL) {
		FUNC2(dev, busdev);
		return (NULL);
	}
#ifdef FDT
	ofw_gpiobus_register_provider(dev);
#endif
	FUNC0(dev);

	return (busdev);
}