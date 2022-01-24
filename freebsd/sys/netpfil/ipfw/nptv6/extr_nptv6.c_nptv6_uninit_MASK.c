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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IPFW_TLV_NPTV6_NAME ; 
 int /*<<< orphan*/  FUNC4 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC5 (struct ip_fw_chain*) ; 
 scalar_t__ V_nptv6_eid ; 
 int /*<<< orphan*/  destroy_config_cb ; 
 int /*<<< orphan*/  ifaddr_event_ext ; 
 int /*<<< orphan*/  FUNC6 (struct ip_fw_chain*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ip_fw_chain*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * nptv6_ifaddr_event ; 
 int /*<<< orphan*/  opcodes ; 
 int /*<<< orphan*/  scodes ; 

void
FUNC8(struct ip_fw_chain *ch, int last)
{

	if (last && nptv6_ifaddr_event != NULL)
		FUNC1(ifaddr_event_ext, nptv6_ifaddr_event);
	FUNC2(last, opcodes);
	FUNC3(last, scodes);
	FUNC6(ch, V_nptv6_eid);
	/*
	 * Since we already have deregistered external action,
	 * our named objects become unaccessible via rules, because
	 * all rules were truncated by ipfw_del_eaction().
	 * So, we can unlink and destroy our named objects without holding
	 * IPFW_WLOCK().
	 */
	FUNC4(ch);
	FUNC7(FUNC0(ch), destroy_config_cb, ch,
	    IPFW_TLV_NPTV6_NAME);
	V_nptv6_eid = 0;
	FUNC5(ch);
}