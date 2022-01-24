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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct pmc_thread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THREADENTRY_SIZE ; 
 int /*<<< orphan*/  free_gtask ; 
 int /*<<< orphan*/  FUNC2 (struct pmc_thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pmc_threadfreelist ; 
 scalar_t__ pmc_threadfreelist_entries ; 
 scalar_t__ pmc_threadfreelist_max ; 
 int /*<<< orphan*/  pmc_threadfreelist_mtx ; 
 int /*<<< orphan*/  pt_next ; 

__attribute__((used)) static void
FUNC5(struct pmc_thread *pt)
{

	if (pt == NULL)
		return;

	FUNC2(pt, 0, THREADENTRY_SIZE);
	FUNC3(&pmc_threadfreelist_mtx);
	FUNC1(&pmc_threadfreelist, pt, pt_next);
	pmc_threadfreelist_entries++;
	if (pmc_threadfreelist_entries > pmc_threadfreelist_max)
		FUNC0(&free_gtask);
	FUNC4(&pmc_threadfreelist_mtx);
}