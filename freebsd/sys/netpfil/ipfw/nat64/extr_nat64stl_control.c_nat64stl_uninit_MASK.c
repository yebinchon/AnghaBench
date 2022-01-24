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
struct ip_fw_chain {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IPFW_TLV_NAT64STL_NAME ; 
 int /*<<< orphan*/  FUNC3 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC4 (struct ip_fw_chain*) ; 
 scalar_t__ V_nat64stl_eid ; 
 int /*<<< orphan*/  destroy_config_cb ; 
 int /*<<< orphan*/  FUNC5 (struct ip_fw_chain*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ip_fw_chain*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  opcodes ; 
 int /*<<< orphan*/  scodes ; 

void
FUNC7(struct ip_fw_chain *ch, int last)
{

	FUNC1(last, opcodes);
	FUNC2(last, scodes);
	FUNC5(ch, V_nat64stl_eid);
	/*
	 * Since we already have deregistered external action,
	 * our named objects become unaccessible via rules, because
	 * all rules were truncated by ipfw_del_eaction().
	 * So, we can unlink and destroy our named objects without holding
	 * IPFW_WLOCK().
	 */
	FUNC3(ch);
	FUNC6(FUNC0(ch), destroy_config_cb, ch,
	    IPFW_TLV_NAT64STL_NAME);
	V_nat64stl_eid = 0;
	FUNC4(ch);
}