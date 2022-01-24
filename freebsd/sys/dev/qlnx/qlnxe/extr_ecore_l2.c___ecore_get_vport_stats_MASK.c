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
typedef  int /*<<< orphan*/  u16 ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {scalar_t__ mcp_info; int /*<<< orphan*/  p_dev; } ;
struct ecore_eth_stats {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ecore_hwfn*,struct ecore_ptt*,struct ecore_eth_stats*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ecore_hwfn*,struct ecore_ptt*,struct ecore_eth_stats*) ; 
 int /*<<< orphan*/  FUNC3 (struct ecore_hwfn*,struct ecore_ptt*,struct ecore_eth_stats*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ecore_hwfn*,struct ecore_ptt*,struct ecore_eth_stats*) ; 
 int /*<<< orphan*/  FUNC5 (struct ecore_hwfn*,struct ecore_ptt*,struct ecore_eth_stats*,int /*<<< orphan*/ ) ; 

void FUNC6(struct ecore_hwfn *p_hwfn,
			     struct ecore_ptt *p_ptt,
			     struct ecore_eth_stats *stats,
			     u16 statistics_bin, bool b_get_port_stats)
{
	FUNC1(p_hwfn, p_ptt, stats, statistics_bin);
	FUNC5(p_hwfn, p_ptt, stats, statistics_bin);
	FUNC4(p_hwfn, p_ptt, stats);
	FUNC3(p_hwfn, p_ptt, stats, statistics_bin);

#ifndef ASIC_ONLY
	/* Avoid getting PORT stats for emulation.*/
	if (FUNC0(p_hwfn->p_dev))
		return;
#endif

	if (b_get_port_stats && p_hwfn->mcp_info)
		FUNC2(p_hwfn, p_ptt, stats);
}