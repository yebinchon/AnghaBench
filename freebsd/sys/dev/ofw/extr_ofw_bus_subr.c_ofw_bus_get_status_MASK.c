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
struct ofw_bus_devinfo {char const* obd_status; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct ofw_bus_devinfo* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

const char *
FUNC2(device_t dev)
{
	const struct ofw_bus_devinfo *obd;

	obd = FUNC0(FUNC1(dev), dev);
	if (obd == NULL)
		return (NULL);

	return (obd->obd_status);
}