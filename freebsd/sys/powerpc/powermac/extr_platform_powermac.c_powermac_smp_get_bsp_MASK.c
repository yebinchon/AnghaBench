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
typedef  int /*<<< orphan*/  inst ;
typedef  int /*<<< orphan*/  ihandle_t ;

/* Variables and functions */
 int ENXIO ; 
 int FUNC0 (char*) ; 
 int FUNC1 (int,char*,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct cpuref*,int) ; 

__attribute__((used)) static int
FUNC4(platform_t plat, struct cpuref *cpuref)
{
	ihandle_t inst;
	phandle_t bsp, chosen;
	int res;

	chosen = FUNC0("/chosen");
	if (chosen == -1)
		return (ENXIO);

	res = FUNC1(chosen, "cpu", &inst, sizeof(inst));
	if (res < 0)
		return (ENXIO);

	bsp = FUNC2(inst);
	return (FUNC3(cpuref, bsp));
}