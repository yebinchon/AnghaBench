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
struct ofw_bus_devinfo {int dummy; } ;
struct unin_chip_devinfo {struct ofw_bus_devinfo const udi_obdinfo; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct unin_chip_devinfo* FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static const struct ofw_bus_devinfo *
FUNC1(device_t dev, device_t child)
{
	struct unin_chip_devinfo *dinfo;

	dinfo = FUNC0(child);
	return (&dinfo->udi_obdinfo);
}