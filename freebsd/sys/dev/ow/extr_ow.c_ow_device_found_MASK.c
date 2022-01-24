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
typedef  int /*<<< orphan*/  romid_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(device_t dev, romid_t romid)
{

	/* XXX Move this up into enumerate? */
	/*
	 * All valid ROM IDs have a valid CRC. Check that first.
	 */
	if (!FUNC2(romid)) {
		FUNC0(dev, "Device romid %8D failed CRC.\n",
		    &romid, ":");
		return EINVAL;
	}

	/*
	 * If we've seen this child before, don't add a new one for it.
	 */
	if (FUNC3(dev, romid) != NULL)
		return 0;

	return FUNC1(dev, romid);
}