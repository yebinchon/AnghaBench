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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RACK_OPTS_SIZE ; 
 int /*<<< orphan*/  TCP_MSS_ACCT_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rack_alloc_limited_conns ; 
 int /*<<< orphan*/  rack_badfr ; 
 int /*<<< orphan*/  rack_badfr_bytes ; 
 int /*<<< orphan*/  rack_collapsed_win ; 
 int /*<<< orphan*/  rack_enter_tlp_calc ; 
 int /*<<< orphan*/  rack_find_high ; 
 int /*<<< orphan*/  rack_input_idle_reduces ; 
 int /*<<< orphan*/  rack_opts_arry ; 
 int /*<<< orphan*/  rack_out_size ; 
 int /*<<< orphan*/  rack_paced_segments ; 
 int /*<<< orphan*/  rack_progress_drops ; 
 int /*<<< orphan*/  rack_reorder_seen ; 
 int /*<<< orphan*/  rack_rtm_prr_newdata ; 
 int /*<<< orphan*/  rack_rtm_prr_retran ; 
 int /*<<< orphan*/  rack_sack_proc_all ; 
 int /*<<< orphan*/  rack_sack_proc_restart ; 
 int /*<<< orphan*/  rack_sack_proc_short ; 
 int /*<<< orphan*/  rack_saw_enetunreach ; 
 int /*<<< orphan*/  rack_saw_enobuf ; 
 int /*<<< orphan*/  rack_split_limited ; 
 int /*<<< orphan*/  rack_timestamp_mismatch ; 
 int /*<<< orphan*/  rack_tlp_does_nada ; 
 int /*<<< orphan*/  rack_tlp_newdata ; 
 int /*<<< orphan*/  rack_tlp_retran ; 
 int /*<<< orphan*/  rack_tlp_retran_bytes ; 
 int /*<<< orphan*/  rack_tlp_retran_fail ; 
 int /*<<< orphan*/  rack_tlp_tot ; 
 int /*<<< orphan*/  rack_to_alloc ; 
 int /*<<< orphan*/  rack_to_alloc_emerg ; 
 int /*<<< orphan*/  rack_to_alloc_hard ; 
 int /*<<< orphan*/  rack_to_alloc_limited ; 
 int /*<<< orphan*/  rack_to_arm_rack ; 
 int /*<<< orphan*/  rack_to_arm_tlp ; 
 int /*<<< orphan*/  rack_to_tot ; 
 int /*<<< orphan*/  rack_unpaced_segments ; 
 int /*<<< orphan*/  rack_used_tlpmethod ; 
 int /*<<< orphan*/  rack_used_tlpmethod2 ; 

__attribute__((used)) static void
FUNC2(void)
{
	FUNC1(rack_badfr);
	FUNC1(rack_badfr_bytes);
	FUNC1(rack_rtm_prr_retran);
	FUNC1(rack_rtm_prr_newdata);
	FUNC1(rack_timestamp_mismatch);
	FUNC1(rack_reorder_seen);
	FUNC1(rack_tlp_tot);
	FUNC1(rack_tlp_newdata);
	FUNC1(rack_tlp_retran);
	FUNC1(rack_tlp_retran_bytes);
	FUNC1(rack_tlp_retran_fail);
	FUNC1(rack_to_tot);
	FUNC1(rack_to_arm_rack);
	FUNC1(rack_to_arm_tlp);
	FUNC1(rack_paced_segments);
	FUNC1(rack_unpaced_segments);
	FUNC1(rack_saw_enobuf);
	FUNC1(rack_saw_enetunreach);
	FUNC1(rack_to_alloc_hard);
	FUNC1(rack_to_alloc_emerg);
	FUNC1(rack_sack_proc_all);
	FUNC1(rack_sack_proc_short);
	FUNC1(rack_sack_proc_restart);
	FUNC1(rack_to_alloc);
	FUNC1(rack_to_alloc_limited);
	FUNC1(rack_alloc_limited_conns);
	FUNC1(rack_split_limited);
	FUNC1(rack_find_high);
	FUNC1(rack_enter_tlp_calc);
	FUNC1(rack_used_tlpmethod);
	FUNC1(rack_used_tlpmethod2);
	FUNC1(rack_progress_drops);
	FUNC1(rack_input_idle_reduces);
	FUNC1(rack_collapsed_win);
	FUNC1(rack_tlp_does_nada);
	FUNC0(rack_out_size, TCP_MSS_ACCT_SIZE);
	FUNC0(rack_opts_arry, RACK_OPTS_SIZE);
}