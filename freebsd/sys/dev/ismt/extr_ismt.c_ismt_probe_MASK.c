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
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int BUS_PROBE_DEFAULT ; 
 int ENXIO ; 
#define  ID_INTEL_C2000_SMT 130 
#define  ID_INTEL_S1200_SMT0 129 
#define  ID_INTEL_S1200_SMT1 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(device_t dev)
{
	const char *desc;

	switch (FUNC1(dev)) {
	case ID_INTEL_S1200_SMT0:
		desc = "Atom Processor S1200 SMBus 2.0 Controller 0";
		break;
	case ID_INTEL_S1200_SMT1:
		desc = "Atom Processor S1200 SMBus 2.0 Controller 1";
		break;
	case ID_INTEL_C2000_SMT:
		desc = "Atom Processor C2000 SMBus 2.0";
		break;
	default:
		return (ENXIO);
	}

	FUNC0(dev, desc);
	return (BUS_PROBE_DEFAULT);
}