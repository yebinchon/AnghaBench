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
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  int u_int32_t ;
struct agp_gatt {int ag_entries; void* ag_virtual; int /*<<< orphan*/  ag_physical; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AGP_PAGE_SHIFT ; 
 int /*<<< orphan*/  M_AGP ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  VM_MEMATTR_WRITE_COMBINING ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct agp_gatt*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct agp_gatt* FUNC4 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

struct agp_gatt *
FUNC6(device_t dev)
{
	u_int32_t apsize = FUNC0(dev);
	u_int32_t entries = apsize >> AGP_PAGE_SHIFT;
	struct agp_gatt *gatt;

	if (bootverbose)
		FUNC1(dev,
			      "allocating GATT for aperture of size %dM\n",
			      apsize / (1024*1024));

	if (entries == 0) {
		FUNC1(dev, "bad aperture size\n");
		return NULL;
	}

	gatt = FUNC4(sizeof(struct agp_gatt), M_AGP, M_NOWAIT);
	if (!gatt)
		return 0;

	gatt->ag_entries = entries;
	gatt->ag_virtual = (void *)FUNC3(entries *
	    sizeof(u_int32_t), M_NOWAIT | M_ZERO, 0, ~0, PAGE_SIZE, 0,
	    VM_MEMATTR_WRITE_COMBINING);
	if (!gatt->ag_virtual) {
		if (bootverbose)
			FUNC1(dev, "contiguous allocation failed\n");
		FUNC2(gatt, M_AGP);
		return 0;
	}
	gatt->ag_physical = FUNC5((vm_offset_t) gatt->ag_virtual);

	return gatt;
}