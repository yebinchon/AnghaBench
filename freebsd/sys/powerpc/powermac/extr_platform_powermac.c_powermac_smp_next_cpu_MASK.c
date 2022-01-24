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
struct cpuref {scalar_t__ cr_hwref; } ;
typedef  int /*<<< orphan*/  platform_t ;
typedef  scalar_t__ phandle_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int ENOENT ; 
 int FUNC0 (scalar_t__,char*,char*,int) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int FUNC2 (struct cpuref*,scalar_t__) ; 
 scalar_t__ FUNC3 (char*,char*) ; 

__attribute__((used)) static int
FUNC4(platform_t plat, struct cpuref *cpuref)
{
	char buf[8];
	phandle_t cpu;
	int res;

	cpu = FUNC1(cpuref->cr_hwref);
	while (cpu != 0) {
		res = FUNC0(cpu, "device_type", buf, sizeof(buf));
		if (res > 0 && FUNC3(buf, "cpu") == 0)
			break;
		cpu = FUNC1(cpu);
	}
	if (cpu == 0)
		return (ENOENT);

	return (FUNC2(cpuref, cpu));
}