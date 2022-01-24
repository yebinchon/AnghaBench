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
struct gpiobus_ivar {scalar_t__ npins; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int BUS_PROBE_DEFAULT ; 
 int ENXIO ; 
 struct gpiobus_ivar* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ GPIOIIC_MIN_PINS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	struct gpiobus_ivar *devi;

#ifdef FDT
	if (!ofw_bus_status_okay(dev))
		return (ENXIO);
	if (!ofw_bus_is_compatible(dev, "gpioiic"))
		return (ENXIO);
#endif
	devi = FUNC0(dev);
	if (devi->npins < GPIOIIC_MIN_PINS) {
		FUNC1(dev,
		    "gpioiic needs at least %d GPIO pins (only %d given).\n",
		    GPIOIIC_MIN_PINS, devi->npins);
		return (ENXIO);
	}
	FUNC2(dev, "GPIO I2C bit-banging driver");

	return (BUS_PROBE_DEFAULT);
}