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
struct pmc_thread {int dummy; } ;
struct pmc_process {int /*<<< orphan*/  pp_tds; } ;

/* Variables and functions */
 struct pmc_thread* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct pmc_thread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_PMC ; 
 int /*<<< orphan*/  FUNC2 (struct pmc_process*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pmc_thread*) ; 
 int /*<<< orphan*/  pt_next ; 

__attribute__((used)) static void
FUNC4(struct pmc_process *pp)
{
	struct pmc_thread *pmc_td;

	while ((pmc_td = FUNC0(&pp->pp_tds)) != NULL) {
		FUNC1(pmc_td, pt_next);
		FUNC3(pmc_td);
	}
	FUNC2(pp, M_PMC);
}