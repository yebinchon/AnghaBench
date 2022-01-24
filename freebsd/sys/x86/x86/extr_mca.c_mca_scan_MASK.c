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
typedef  enum scan_mode { ____Placeholder_scan_mode } scan_mode ;

/* Variables and functions */
 int CMCI ; 
 int MCE ; 
 int MCG_CAP_COUNT ; 
 int MC_STATUS_OVER ; 
 int MC_STATUS_PCC ; 
 int MC_STATUS_UC ; 
 int /*<<< orphan*/  MSR_MCG_CAP ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int) ; 
 int /*<<< orphan*/ * cmc_state ; 
 int /*<<< orphan*/  cmci_mask ; 
 int /*<<< orphan*/  FUNC2 (int,int,int,struct mca_record*) ; 
 int FUNC3 (int,struct mca_record*) ; 
 int /*<<< orphan*/  mca_lock ; 
 int /*<<< orphan*/  FUNC4 (struct mca_record*) ; 
 int /*<<< orphan*/  FUNC5 (int,struct mca_record*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(enum scan_mode mode, int *recoverablep)
{
	struct mca_record rec;
	uint64_t mcg_cap, ucmask;
	int count, i, recoverable, valid;

	count = 0;
	recoverable = 1;
	ucmask = MC_STATUS_UC | MC_STATUS_PCC;

	/* When handling a MCE#, treat the OVER flag as non-restartable. */
	if (mode == MCE)
		ucmask |= MC_STATUS_OVER;
	mcg_cap = FUNC8(MSR_MCG_CAP);
	for (i = 0; i < (mcg_cap & MCG_CAP_COUNT); i++) {
#ifdef DEV_APIC
		/*
		 * For a CMCI, only check banks this CPU is
		 * responsible for.
		 */
		if (mode == CMCI && !(PCPU_GET(cmci_mask) & 1 << i))
			continue;
#endif

		valid = FUNC3(i, &rec);
		if (valid) {
			count++;
			if (rec.mr_status & ucmask) {
				recoverable = 0;
				FUNC6(&mca_lock);
				FUNC4(&rec);
				FUNC7(&mca_lock);
			}
			FUNC5(mode, &rec);
		}
	
#ifdef DEV_APIC
		/*
		 * If this is a bank this CPU monitors via CMCI,
		 * update the threshold.
		 */
		if (PCPU_GET(cmci_mask) & 1 << i) {
			if (cmc_state != NULL)
				cmci_update(mode, i, valid, &rec);
			else
				amd_thresholding_update(mode, i, valid);
		}
#endif
	}
	if (recoverablep != NULL)
		*recoverablep = recoverable;
	return (count);
}