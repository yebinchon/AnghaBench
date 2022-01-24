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
typedef  int /*<<< orphan*/  bus_space_tag_t ;
typedef  int /*<<< orphan*/  bus_space_handle_t ;

/* Variables and functions */
 int MTK_CPU_CLK_320MHZ ; 
 int MTK_CPU_CLK_384MHZ ; 
 int RT305X_CPU_CLKSEL_MSK ; 
 int RT305X_CPU_CLKSEL_OFF ; 
 int RT3350_CHIPID0_3 ; 
 int /*<<< orphan*/  SYSCTL_CHIPID0_3 ; 
 int /*<<< orphan*/  SYSCTL_SYSCFG ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint32_t
FUNC1(bus_space_tag_t bst, bus_space_handle_t bsh)
{
	uint32_t val;

	val = FUNC0(bst, bsh, SYSCTL_CHIPID0_3);
	if (val == RT3350_CHIPID0_3)
		return (MTK_CPU_CLK_320MHZ);

	val = FUNC0(bst, bsh, SYSCTL_SYSCFG);
	val >>= RT305X_CPU_CLKSEL_OFF;
	val &= RT305X_CPU_CLKSEL_MSK;

	return ((val == 0) ? MTK_CPU_CLK_320MHZ : MTK_CPU_CLK_384MHZ);
}