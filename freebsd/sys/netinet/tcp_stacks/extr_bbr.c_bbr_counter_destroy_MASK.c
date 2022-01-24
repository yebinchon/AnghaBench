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
 int /*<<< orphan*/  BBR_MAX_STAT ; 
 int /*<<< orphan*/  BBR_OPTS_SIZE ; 
 int /*<<< orphan*/  BBR_STAT_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TCP_MSS_ACCT_SIZE ; 
 int /*<<< orphan*/  bbr_flows_nohdwr_pacing ; 
 int /*<<< orphan*/  bbr_flows_whdwr_pacing ; 
 int /*<<< orphan*/  bbr_opts_arry ; 
 int /*<<< orphan*/  bbr_out_size ; 
 int /*<<< orphan*/  bbr_stat_arry ; 
 int /*<<< orphan*/  bbr_state_lost ; 
 int /*<<< orphan*/  bbr_state_resend ; 
 int /*<<< orphan*/  bbr_state_time ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(void)
{
	FUNC0(bbr_stat_arry, BBR_STAT_SIZE);
	FUNC0(bbr_opts_arry, BBR_OPTS_SIZE);
	FUNC0(bbr_out_size, TCP_MSS_ACCT_SIZE);
	FUNC0(bbr_state_lost, BBR_MAX_STAT);
	FUNC0(bbr_state_time, BBR_MAX_STAT);
	FUNC0(bbr_state_resend, BBR_MAX_STAT);
	FUNC1(bbr_flows_whdwr_pacing);
	FUNC1(bbr_flows_nohdwr_pacing);

}