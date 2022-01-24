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
struct thread {int /*<<< orphan*/  td_proc; } ;
struct pmc_process {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PMC_FLAG_ALLOCATE ; 
 int /*<<< orphan*/  PMC_FLAG_NONE ; 
 struct pmc_process* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pmc_process*,struct thread*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct thread *td)
{
	struct pmc_process *pmc;

	pmc = FUNC0(td->td_proc, PMC_FLAG_NONE);
	if (pmc != NULL)
		FUNC1(pmc, td, PMC_FLAG_ALLOCATE);
}