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
struct cmc_state {int max_threshold; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int MC_CTL2_CMCI_EN ; 
 int MC_CTL2_THRESHOLD ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 struct cmc_state** cmc_state ; 
 int /*<<< orphan*/  cmci_mask ; 
 int /*<<< orphan*/  cpuid ; 
 int mca_banks ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC6(int i)
{
	struct cmc_state *cc;
	uint64_t ctl;

	FUNC0(i < mca_banks, ("CPU %d has more MC banks", FUNC2(cpuid)));

	ctl = FUNC4(FUNC1(i));
	if (ctl & MC_CTL2_CMCI_EN)
		/* Already monitored by another CPU. */
		return;

	/* Set the threshold to one event for now. */
	ctl &= ~MC_CTL2_THRESHOLD;
	ctl |= MC_CTL2_CMCI_EN | 1;
	FUNC5(FUNC1(i), ctl);
	ctl = FUNC4(FUNC1(i));
	if (!(ctl & MC_CTL2_CMCI_EN))
		/* This bank does not support CMCI. */
		return;

	cc = &cmc_state[FUNC2(cpuid)][i];

	/* Determine maximum threshold. */
	ctl &= ~MC_CTL2_THRESHOLD;
	ctl |= 0x7fff;
	FUNC5(FUNC1(i), ctl);
	ctl = FUNC4(FUNC1(i));
	cc->max_threshold = ctl & MC_CTL2_THRESHOLD;

	/* Start off with a threshold of 1. */
	ctl &= ~MC_CTL2_THRESHOLD;
	ctl |= 1;
	FUNC5(FUNC1(i), ctl);

	/* Mark this bank as monitored. */
	FUNC3(cmci_mask, FUNC2(cmci_mask) | 1 << i);
}