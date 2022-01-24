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
 int BUS_PROBE_SPECIFIC ; 
 int ENXIO ; 
 scalar_t__ PS3_BUSTYPE_STORAGE ; 
 scalar_t__ PS3_DEVTYPE_CDROM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
	if (FUNC1(dev) != PS3_BUSTYPE_STORAGE ||
	    FUNC2(dev) != PS3_DEVTYPE_CDROM)
		return (ENXIO);

	FUNC0(dev, "Playstation 3 CDROM");

	return (BUS_PROBE_SPECIFIC);
}