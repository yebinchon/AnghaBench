#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_3__ {scalar_t__ chip_id; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int BUS_PROBE_DEFAULT ; 
 int ENXIO ; 
 scalar_t__ PCIC_DISPLAY ; 
 scalar_t__ PCIS_DISPLAY_VGA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* machfb_info ; 
 int FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	int i;

	if (FUNC2(dev) != PCIC_DISPLAY ||
	    FUNC4(dev) != PCIS_DISPLAY_VGA)
		return (ENXIO);

	for (i = 0; i < FUNC1(machfb_info); i++) {
		if (FUNC3(dev) == machfb_info[i].chip_id) {
			FUNC0(dev, machfb_info[i].name);
			return (BUS_PROBE_DEFAULT);
		}
	}

	return (ENXIO);
}