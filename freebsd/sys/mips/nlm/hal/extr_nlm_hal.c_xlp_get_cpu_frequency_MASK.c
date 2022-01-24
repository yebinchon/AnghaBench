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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  unsigned long long uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  SYS_CORE_DFS_DIV_VALUE ; 
 int /*<<< orphan*/  SYS_POWER_ON_RESET_CFG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

uint32_t
FUNC3(int node, int core)
{
	uint64_t sysbase = FUNC0(node);
	unsigned int pll_divf, pll_divr, dfs_div, ext_div;
	unsigned int rstval, dfsval;

	rstval = FUNC2(sysbase, SYS_POWER_ON_RESET_CFG);
	dfsval = FUNC2(sysbase, SYS_CORE_DFS_DIV_VALUE);
	pll_divf = ((rstval >> 10) & 0x7f) + 1;
	pll_divr = ((rstval >> 8)  & 0x3) + 1;
	if (!FUNC1())
		ext_div = ((rstval >> 30) & 0x3) + 1;
	else
		ext_div = 1;
	dfs_div  = ((dfsval >> (core << 2)) & 0xf) + 1;

	return ((800000000ULL * pll_divf)/(3 * pll_divr * ext_div * dfs_div));
}