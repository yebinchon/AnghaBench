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
typedef  int u_int32_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int PCIM_CMD_PORTEN ; 
 int /*<<< orphan*/  PCIR_COMMAND ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
	u_int32_t d;

	if (FUNC1(FUNC0("acpi"), 0) != NULL)
		return (ENXIO);
	switch (FUNC4(dev)) {
	case 0x71138086:
		FUNC3(dev, "PIIX Timecounter");
		break;
	default:
		return (ENXIO);
	}

	d = FUNC5(dev, PCIR_COMMAND, 2);
	if (!(d & PCIM_CMD_PORTEN)) {
		FUNC2(dev, "PIIX I/O space not mapped\n");
		return (ENXIO);
	}
	return (0);
}