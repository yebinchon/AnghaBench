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
struct cmc_state {scalar_t__ last_intr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int MC_CTL2_CMCI_EN ; 
 int MC_CTL2_THRESHOLD ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 struct cmc_state** cmc_state ; 
 int /*<<< orphan*/  cmci_mask ; 
 int /*<<< orphan*/  cpuid ; 
 int mca_banks ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC5(int i)
{
	struct cmc_state *cc;
	uint64_t ctl;

	FUNC0(i < mca_banks, ("CPU %d has more MC banks", FUNC2(cpuid)));

	/* Ignore banks not monitored by this CPU. */
	if (!(FUNC2(cmci_mask) & 1 << i))
		return;

	cc = &cmc_state[FUNC2(cpuid)][i];
	cc->last_intr = 0;
	ctl = FUNC3(FUNC1(i));
	ctl &= ~MC_CTL2_THRESHOLD;
	ctl |= MC_CTL2_CMCI_EN | 1;
	FUNC4(FUNC1(i), ctl);
}