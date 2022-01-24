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

/* Variables and functions */
 int /*<<< orphan*/  CPL_COOKIE_ETHOFLD ; 
 int /*<<< orphan*/  CPL_FW4_ACK ; 
 int /*<<< orphan*/  CPL_FW4_MSG ; 
 int /*<<< orphan*/  CPL_FW6_MSG ; 
 int /*<<< orphan*/  CPL_RX_PKT ; 
 int /*<<< orphan*/  CPL_SGE_EGR_UPDATE ; 
 int /*<<< orphan*/  FW6_TYPE_CMD_RPL ; 
 int /*<<< orphan*/  FW6_TYPE_WRERR_RPL ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int cong_drop ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int cpu_clflush_line_size ; 
 int /*<<< orphan*/  ethofld_fw4_ack ; 
 int /*<<< orphan*/  extfree_refs ; 
 int /*<<< orphan*/  extfree_rels ; 
 int fl_pktshift ; 
 int /*<<< orphan*/  handle_fw_msg ; 
 int /*<<< orphan*/  handle_sge_egr_update ; 
 int /*<<< orphan*/  FUNC2 (char*,int,...) ; 
 int spg_len ; 
 int /*<<< orphan*/  t4_eth_rx ; 
 int /*<<< orphan*/  t4_handle_fw_rpl ; 
 int /*<<< orphan*/  t4_handle_wrerr_rpl ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int tscale ; 

void
FUNC7(void)
{

	if (fl_pktshift < 0 || fl_pktshift > 7) {
		FUNC2("Invalid hw.cxgbe.fl_pktshift value (%d),"
		    " using 0 instead.\n", fl_pktshift);
		fl_pktshift = 0;
	}

	if (spg_len != 64 && spg_len != 128) {
		int len;

#if defined(__i386__) || defined(__amd64__)
		len = cpu_clflush_line_size > 64 ? 128 : 64;
#else
		len = 64;
#endif
		if (spg_len != -1) {
			FUNC2("Invalid hw.cxgbe.spg_len value (%d),"
			    " using %d instead.\n", spg_len, len);
		}
		spg_len = len;
	}

	if (cong_drop < -1 || cong_drop > 1) {
		FUNC2("Invalid hw.cxgbe.cong_drop value (%d),"
		    " using 0 instead.\n", cong_drop);
		cong_drop = 0;
	}

	if (tscale != 1 && (tscale < 3 || tscale > 17)) {
		FUNC2("Invalid hw.cxgbe.tscale value (%d),"
		    " using 1 instead.\n", tscale);
		tscale = 1;
	}

	extfree_refs = FUNC0(M_WAITOK);
	extfree_rels = FUNC0(M_WAITOK);
	FUNC1(extfree_refs);
	FUNC1(extfree_rels);

	FUNC3();
	FUNC4(CPL_FW4_MSG, handle_fw_msg);
	FUNC4(CPL_FW6_MSG, handle_fw_msg);
	FUNC4(CPL_SGE_EGR_UPDATE, handle_sge_egr_update);
	FUNC4(CPL_RX_PKT, t4_eth_rx);
#ifdef RATELIMIT
	t4_register_shared_cpl_handler(CPL_FW4_ACK, ethofld_fw4_ack,
	    CPL_COOKIE_ETHOFLD);
#endif
	FUNC5(FW6_TYPE_CMD_RPL, t4_handle_fw_rpl);
	FUNC5(FW6_TYPE_WRERR_RPL, t4_handle_wrerr_rpl);
}