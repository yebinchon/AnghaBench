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
struct cyapa_cap {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int BUS_PROBE_VENDOR ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct cyapa_cap*,int) ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
	struct cyapa_cap cap;
	int addr;
	int error;

	addr = FUNC1(dev);

	/*
	 * 0x67 - cypress trackpad on the acer c720
	 * (other devices might use other ids).
	 */
	if (addr != 0xce)
		return (ENXIO);

	error = FUNC2(dev, &cap, 1);
	if (error != 0)
		return (ENXIO);

	FUNC0(dev, "Cypress APA I2C Trackpad");

	return (BUS_PROBE_VENDOR);
}