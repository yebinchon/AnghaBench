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
typedef  scalar_t__ u_long ;
typedef  int /*<<< orphan*/  ticks ;
struct cpuref {int dummy; } ;
typedef  int /*<<< orphan*/  platform_t ;
typedef  int phandle_t ;
typedef  scalar_t__ int32_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,scalar_t__*,int) ; 
 int FUNC3 (int,char*,char*,int) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (char*,char*) ; 

__attribute__((used)) static u_long
FUNC7(platform_t plat, struct cpuref *cpuref)
{
	phandle_t cpus, cpunode;
	int32_t ticks = -1;
	int res;
	char buf[8];

	cpus = FUNC1("/cpus");
	if (cpus == -1)
		FUNC5("CPU tree not found on Open Firmware\n");

	for (cpunode = FUNC0(cpus); cpunode != 0; cpunode = FUNC4(cpunode)) {
		res = FUNC3(cpunode, "device_type", buf, sizeof(buf));
		if (res > 0 && FUNC6(buf, "cpu") == 0)
			break;
	}
	if (cpunode <= 0)
		FUNC5("CPU node not found on Open Firmware\n");

	FUNC2(cpunode, "timebase-frequency", &ticks, sizeof(ticks));

	if (ticks <= 0)
		FUNC5("Unable to determine timebase frequency!");

	return (ticks);
}