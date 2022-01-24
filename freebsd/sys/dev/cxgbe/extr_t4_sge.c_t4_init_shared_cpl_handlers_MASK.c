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
 int /*<<< orphan*/  CPL_ABORT_RPL_RSS ; 
 int /*<<< orphan*/  CPL_ACT_OPEN_RPL ; 
 int /*<<< orphan*/  CPL_FW4_ACK ; 
 int /*<<< orphan*/  CPL_L2T_WRITE_RPL ; 
 int /*<<< orphan*/  CPL_SET_TCB_RPL ; 
 int /*<<< orphan*/  abort_rpl_rss_handler ; 
 int /*<<< orphan*/  act_open_rpl_handler ; 
 int /*<<< orphan*/  fw4_ack_handler ; 
 int /*<<< orphan*/  l2t_write_rpl_handler ; 
 int /*<<< orphan*/  set_tcb_rpl_handler ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(void)
{

	FUNC0(CPL_SET_TCB_RPL, set_tcb_rpl_handler);
	FUNC0(CPL_L2T_WRITE_RPL, l2t_write_rpl_handler);
	FUNC0(CPL_ACT_OPEN_RPL, act_open_rpl_handler);
	FUNC0(CPL_ABORT_RPL_RSS, abort_rpl_rss_handler);
	FUNC0(CPL_FW4_ACK, fw4_ack_handler);
}