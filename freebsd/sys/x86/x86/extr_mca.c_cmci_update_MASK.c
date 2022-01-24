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
typedef  int uint64_t ;
struct mca_record {int mr_status; } ;
struct cmc_state {int /*<<< orphan*/  last_intr; int /*<<< orphan*/  max_threshold; } ;
typedef  enum scan_mode { ____Placeholder_scan_mode } scan_mode ;

/* Variables and functions */
 int CMCI ; 
 int MC_CTL2_THRESHOLD ; 
 int MC_STATUS_COR_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 struct cmc_state** cmc_state ; 
 int /*<<< orphan*/  cpuid ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  time_uptime ; 
 int FUNC3 (int,int,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC5(enum scan_mode mode, int bank, int valid, struct mca_record *rec)
{
	struct cmc_state *cc;
	uint64_t ctl;
	int cur_threshold, new_threshold;
	int count;

	/* Fetch the current limit for this bank. */
	cc = &cmc_state[FUNC1(cpuid)][bank];
	ctl = FUNC2(FUNC0(bank));
	count = (rec->mr_status & MC_STATUS_COR_COUNT) >> 38;
	cur_threshold = ctl & MC_CTL2_THRESHOLD;

	new_threshold = FUNC3(mode, valid, cc->last_intr, count,
	    cur_threshold, cc->max_threshold);

	if (mode == CMCI && valid)
		cc->last_intr = time_uptime;
	if (new_threshold != cur_threshold) {
		ctl &= ~MC_CTL2_THRESHOLD;
		ctl |= new_threshold;
		FUNC4(FUNC0(bank), ctl);
	}
}