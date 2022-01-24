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
struct adb_devinfo {size_t default_address; int /*<<< orphan*/  address; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/ * adb_device_string ; 
 scalar_t__ bootverbose ; 
 struct adb_devinfo* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(device_t dev, device_t child)
{
	struct adb_devinfo *dinfo;

	if (bootverbose) {
		dinfo = FUNC0(child);

		FUNC1(dev,"ADB %s at device %d (no driver attached)\n",
		    adb_device_string[dinfo->default_address],dinfo->address);
	}
}