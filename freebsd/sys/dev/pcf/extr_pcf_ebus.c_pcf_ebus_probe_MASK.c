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
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 char const* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char*,char const*) ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{
	const char *compat;

	/*
	 * We must not attach to this i2c device if this is a system with
	 * a boot-bus controller. Additionally testing the compatibility
	 * property will hopefully take care of this.
	 */
	if (FUNC3("i2c", FUNC2(dev)) == 0) {
		compat = FUNC1(dev);
		if (compat != NULL && FUNC3("i2cpcf,8584", compat) == 0) {
			FUNC0(dev, "PCF8584 I2C bus controller");
			return (0);
		}
	}
	return (ENXIO);
}