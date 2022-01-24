#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int /*<<< orphan*/  drv_desc; } ;

/* Variables and functions */
 int BUS_PROBE_DEFAULT ; 
#define  DRIVER_BLKVSC 129 
#define  DRIVER_STORVSC 128 
 int ENXIO ; 
 int /*<<< orphan*/  bootverbose ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* g_drv_props_table ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
	int ret	= ENXIO;
	
	switch (FUNC2(dev)) {
	case DRIVER_BLKVSC:
		if(bootverbose)
			FUNC0(dev,
			    "Enlightened ATA/IDE detected\n");
		FUNC1(dev, g_drv_props_table[DRIVER_BLKVSC].drv_desc);
		ret = BUS_PROBE_DEFAULT;
		break;
	case DRIVER_STORVSC:
		if(bootverbose)
			FUNC0(dev, "Enlightened SCSI device detected\n");
		FUNC1(dev, g_drv_props_table[DRIVER_STORVSC].drv_desc);
		ret = BUS_PROBE_DEFAULT;
		break;
	default:
		ret = ENXIO;
	}
	return (ret);
}