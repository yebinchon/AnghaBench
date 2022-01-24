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
typedef  int /*<<< orphan*/  u_int ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ofw_devices_only ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
	u_int busno, domain;
	int error;

	error = FUNC3(dev);
	if (error)
		return (error);
	domain = FUNC5(dev);
	busno = FUNC4(dev);

	/*
	 * Attach those children represented in the device tree.
	 */

	FUNC2(dev, domain, busno);

	/*
	 * We now attach any laggard devices. FDT, for instance, allows
	 * the device tree to enumerate only some PCI devices. Apple's
	 * OF device tree on some Grackle-based hardware can also miss
	 * functions on multi-function cards.
	 */

	if (!ofw_devices_only)
		FUNC1(dev, domain, busno);

	return (FUNC0(dev));
}