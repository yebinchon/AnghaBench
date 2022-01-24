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
typedef  int /*<<< orphan*/  platform_t ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_PROBE_SPECIFIC ; 
 int /*<<< orphan*/  SPR_PIR ; 
 int /*<<< orphan*/  cpu_idle_hook ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ps3_boot_pir ; 
 int /*<<< orphan*/  ps3_cpu_idle ; 

__attribute__((used)) static int
FUNC2(platform_t plat)
{

	FUNC1("mmu_ps3", BUS_PROBE_SPECIFIC);
	cpu_idle_hook = ps3_cpu_idle;

	/* Record our PIR at boot for later */
	ps3_boot_pir = FUNC0(SPR_PIR);

	return (0);
}