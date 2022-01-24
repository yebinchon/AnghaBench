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
 int BUS_PROBE_DEFAULT ; 
 int ENXIO ; 
 int RCC_GPIO_BASE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char*,char*) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	char *prod;
	int port;

	/*
	 * We don't know of any PnP ID's for this GPIO controller.
	 */
	if (FUNC1(dev) != 0)
		return (ENXIO);

	/*
	 * We have to have an IO port hint that is valid.
	 */
	port = FUNC2(dev);
	if (port != RCC_GPIO_BASE)
		return (ENXIO);

	prod = FUNC3("smbios.system.product");
	if (prod == NULL ||
	    (FUNC4(prod, "RCC-VE") != 0 && FUNC4(prod, "RCC-DFF") != 0))
		return (ENXIO);

	FUNC0(dev, "RCC-VE/DFF GPIO controller");

	return (BUS_PROBE_DEFAULT);
}