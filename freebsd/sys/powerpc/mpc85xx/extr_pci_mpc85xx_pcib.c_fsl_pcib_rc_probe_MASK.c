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
 scalar_t__ PCIC_PROCESSOR ; 
 scalar_t__ PCIS_PROCESSOR_POWERPC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{

	if (FUNC4(dev) != 0x1957)
		return (ENXIO);
	if (FUNC2(dev) != 0)
		return (ENXIO);
	if (FUNC1(dev) != PCIC_PROCESSOR)
		return (ENXIO);
	if (FUNC3(dev) != PCIS_PROCESSOR_POWERPC)
		return (ENXIO);

	FUNC0(dev, "MPC85xx Root Complex bridge");

	return (BUS_PROBE_DEFAULT);
}