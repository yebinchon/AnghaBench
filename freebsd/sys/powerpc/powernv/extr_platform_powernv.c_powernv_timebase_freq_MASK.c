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
typedef  int u_long ;
typedef  int /*<<< orphan*/  ticks ;
struct cpuref {int dummy; } ;
typedef  int /*<<< orphan*/  platform_t ;
typedef  scalar_t__ phandle_t ;
typedef  scalar_t__ int32_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,char*,scalar_t__*,int) ; 
 int FUNC2 (scalar_t__,char*,char*,int) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (char*,char*) ; 

__attribute__((used)) static u_long
FUNC6(platform_t plat, struct cpuref *cpuref)
{
	char buf[8];
	phandle_t cpu, dev, root;
	int res;
	int32_t ticks = -1;

	root = FUNC3(0);
	dev = FUNC0(root);
	while (dev != 0) {
		res = FUNC2(dev, "name", buf, sizeof(buf));
		if (res > 0 && FUNC5(buf, "cpus") == 0)
			break;
		dev = FUNC3(dev);
	}

	for (cpu = FUNC0(dev); cpu != 0; cpu = FUNC3(cpu)) {
		res = FUNC2(cpu, "device_type", buf, sizeof(buf));
		if (res > 0 && FUNC5(buf, "cpu") == 0)
			break;
	}
	if (cpu == 0)
		return (512000000);

	FUNC1(cpu, "timebase-frequency", &ticks, sizeof(ticks));

	if (ticks <= 0)
		FUNC4("Unable to determine timebase frequency!");

	return (ticks);

}