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
typedef  int /*<<< orphan*/  uintmax_t ;
struct pmc_process {int pp_flags; } ;
struct pmc_cpu {int dummy; } ;

/* Variables and functions */
 int CR4_PCE ; 
 int /*<<< orphan*/  MDP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,struct pmc_cpu*,struct pmc_process*,int) ; 
 int PMC_PP_ENABLE_MSR_ACCESS ; 
 int /*<<< orphan*/  SWI ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 () ; 

__attribute__((used)) static int
FUNC4(struct pmc_cpu *pc, struct pmc_process *pp)
{
	(void) pc;

	FUNC1(MDP,SWI,1, "pc=%p pp=%p enable-msr=%d", pc, pp,
	    pp->pp_flags & PMC_PP_ENABLE_MSR_ACCESS);

	/* allow the RDPMC instruction if needed */
	if (pp->pp_flags & PMC_PP_ENABLE_MSR_ACCESS)
		FUNC2(FUNC3() | CR4_PCE);

	FUNC0(MDP,SWI,1, "cr4=0x%jx", (uintmax_t) FUNC3());

	return 0;
}