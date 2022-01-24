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
typedef  enum hv_storage_type { ____Placeholder_hv_storage_type } hv_storage_type ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int DRIVER_BLKVSC ; 
 int DRIVER_STORVSC ; 
 int DRIVER_UNKNOWN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gBlkVscDeviceType ; 
 int /*<<< orphan*/  gStorVscDeviceType ; 

__attribute__((used)) static enum hv_storage_type
FUNC2(device_t dev)
{
	device_t parent = FUNC1(dev);

	if (FUNC0(parent, dev, &gBlkVscDeviceType) == 0)
		return DRIVER_BLKVSC;
	if (FUNC0(parent, dev, &gStorVscDeviceType) == 0)
		return DRIVER_STORVSC;
	return DRIVER_UNKNOWN;
}