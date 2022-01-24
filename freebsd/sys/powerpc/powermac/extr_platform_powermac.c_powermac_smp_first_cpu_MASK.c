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
struct cpuref {int dummy; } ;
typedef  int /*<<< orphan*/  platform_t ;
typedef  int phandle_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int ENOENT ; 
 int FUNC0 (int) ; 
 int FUNC1 (char*) ; 
 int FUNC2 (int,char*,char*,int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (struct cpuref*,int) ; 
 scalar_t__ FUNC5 (char*,char*) ; 

__attribute__((used)) static int
FUNC6(platform_t plat, struct cpuref *cpuref)
{
	char buf[8];
	phandle_t cpu, dev, root;
	int res;

	root = FUNC3(0);

	dev = FUNC0(root);
	while (dev != 0) {
		res = FUNC2(dev, "name", buf, sizeof(buf));
		if (res > 0 && FUNC5(buf, "cpus") == 0)
			break;
		dev = FUNC3(dev);
	}
	if (dev == 0) {
		/*
		 * psim doesn't have a name property on the /cpus node,
		 * but it can be found directly
		 */
		dev = FUNC1("/cpus");
		if (dev == -1)
			return (ENOENT);
	}

	cpu = FUNC0(dev);

	while (cpu != 0) {
		res = FUNC2(cpu, "device_type", buf, sizeof(buf));
		if (res > 0 && FUNC5(buf, "cpu") == 0)
			break;
		cpu = FUNC3(cpu);
	}
	if (cpu == 0)
		return (ENOENT);

	return (FUNC4(cpuref, cpu));
}