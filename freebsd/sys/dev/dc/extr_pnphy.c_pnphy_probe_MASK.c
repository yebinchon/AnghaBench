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
struct mii_attach_args {scalar_t__ mii_id1; scalar_t__ mii_id2; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int BUS_PROBE_DEFAULT ; 
 scalar_t__ DC_DEVICEID_82C168 ; 
 scalar_t__ DC_VENDORID_LO ; 
 int ENXIO ; 
 struct mii_attach_args* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC2(device_t dev)
{
	struct mii_attach_args *ma;

	ma = FUNC0(dev);

	/*
	 * The dc driver will report the 82c168 vendor and device
	 * ID to let us know that it wants us to attach.
	 */
	if (ma->mii_id1 != DC_VENDORID_LO ||
	    ma->mii_id2 != DC_DEVICEID_82C168)
		return (ENXIO);

	FUNC1(dev, "PNIC 82c168 media interface");

	return (BUS_PROBE_DEFAULT);
}