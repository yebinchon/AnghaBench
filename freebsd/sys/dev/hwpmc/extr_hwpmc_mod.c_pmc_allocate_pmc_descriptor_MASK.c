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
struct pmc_pcpu_state {int dummy; } ;
struct pmc {void* pm_pcpu_state; int /*<<< orphan*/  pm_runcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALL ; 
 int /*<<< orphan*/  M_PMC ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  PMC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,struct pmc*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 void* FUNC2 (int,int /*<<< orphan*/ ,int) ; 
 int mp_ncpus ; 

__attribute__((used)) static struct pmc *
FUNC3(void)
{
	struct pmc *pmc;

	pmc = FUNC2(sizeof(struct pmc), M_PMC, M_WAITOK|M_ZERO);
	pmc->pm_runcount = FUNC1(M_WAITOK);
	pmc->pm_pcpu_state = FUNC2(sizeof(struct pmc_pcpu_state)*mp_ncpus, M_PMC, M_WAITOK|M_ZERO);
	FUNC0(PMC,ALL,1, "allocate-pmc -> pmc=%p", pmc);

	return pmc;
}