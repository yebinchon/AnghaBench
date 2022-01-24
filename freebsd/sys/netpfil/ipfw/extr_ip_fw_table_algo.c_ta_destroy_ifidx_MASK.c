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
struct table_info {int dummy; } ;
struct ip_fw_chain {int dummy; } ;
struct iftable_cfg {int /*<<< orphan*/  ii; struct iftable_cfg* main_ptr; struct ip_fw_chain* ch; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC1 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  M_IPFW ; 
 int /*<<< orphan*/  destroy_ifidx_locked ; 
 int /*<<< orphan*/  FUNC2 (struct iftable_cfg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ip_fw_chain*) ; 

__attribute__((used)) static void
FUNC5(void *ta_state, struct table_info *ti)
{
	struct iftable_cfg *icfg;
	struct ip_fw_chain *ch;

	icfg = (struct iftable_cfg *)ta_state;
	ch = icfg->ch;

	if (icfg->main_ptr != NULL)
		FUNC2(icfg->main_ptr, M_IPFW);

	FUNC0(ch);
	FUNC4(icfg->ii, destroy_ifidx_locked, ch);
	FUNC1(ch);

	FUNC3(icfg->ii);

	FUNC2(icfg, M_IPFW);
}