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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int BUS_PROBE_GENERIC ; 
 int CPUID_STEPPING ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int cpu_id ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC5 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
	uint32_t family, model;

	if (FUNC5("amdtemp", 0))
		return (ENXIO);
	if (!FUNC2(FUNC3(dev), NULL))
		return (ENXIO);

	family = FUNC0(cpu_id);
	model = FUNC1(cpu_id);

	switch (family) {
	case 0x0f:
		if ((model == 0x04 && (cpu_id & CPUID_STEPPING) == 0) ||
		    (model == 0x05 && (cpu_id & CPUID_STEPPING) <= 1))
			return (ENXIO);
		break;
	case 0x10:
	case 0x11:
	case 0x12:
	case 0x14:
	case 0x15:
	case 0x16:
	case 0x17:
		break;
	default:
		return (ENXIO);
	}
	FUNC4(dev, "AMD CPU On-Die Thermal Sensors");

	return (BUS_PROBE_GENERIC);
}