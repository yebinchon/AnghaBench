#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_3__ {int chip_type; } ;
struct TYPE_4__ {TYPE_1__ cid; } ;

/* Variables and functions */
#define  BHND_CHIPTYPE_BCMA 130 
#define  BHND_CHIPTYPE_BCMA_ALT 129 
#define  BHND_CHIPTYPE_UBUS 128 
 int BUS_PROBE_SPECIFIC ; 
 int ENXIO ; 
 TYPE_2__* FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
	int error;

	switch (FUNC0()->cid.chip_type) {
	case BHND_CHIPTYPE_BCMA:
	case BHND_CHIPTYPE_BCMA_ALT:
	case BHND_CHIPTYPE_UBUS:
		break;
	default:
		return (ENXIO);
	}

	if ((error = FUNC1(dev)) > 0)
		return (error);

	/* Set device description */
	FUNC2(dev, &FUNC0()->cid);

	return (BUS_PROBE_SPECIFIC);
}