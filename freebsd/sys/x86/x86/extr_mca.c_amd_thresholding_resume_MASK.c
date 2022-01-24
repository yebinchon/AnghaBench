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
struct amd_et_state {int cur_threshold; scalar_t__ last_intr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 struct amd_et_state** amd_et_state ; 
 int /*<<< orphan*/  FUNC2 (struct amd_et_state*,int) ; 
 int /*<<< orphan*/  cmci_mask ; 
 int /*<<< orphan*/  cpuid ; 
 int mca_banks ; 

__attribute__((used)) static void
FUNC3(int i)
{
	struct amd_et_state *cc;

	FUNC0(i < mca_banks, ("CPU %d has more MC banks", FUNC1(cpuid)));

	/* Ignore banks not monitored by this CPU. */
	if (!(FUNC1(cmci_mask) & 1 << i))
		return;

	cc = &amd_et_state[FUNC1(cpuid)][i];
	cc->last_intr = 0;
	cc->cur_threshold = 1;
	FUNC2(cc, i);
}