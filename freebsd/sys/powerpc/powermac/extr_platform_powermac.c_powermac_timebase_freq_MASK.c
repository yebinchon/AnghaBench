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
struct cpuref {int /*<<< orphan*/  cr_hwref; } ;
typedef  int /*<<< orphan*/  platform_t ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  scalar_t__ int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static u_long
FUNC2(platform_t plat, struct cpuref *cpuref)
{
	phandle_t phandle;
	int32_t ticks = -1;

	phandle = cpuref->cr_hwref;

	FUNC0(phandle, "timebase-frequency", &ticks, sizeof(ticks));

	if (ticks <= 0)
		FUNC1("Unable to determine timebase frequency!");

	return (ticks);
}