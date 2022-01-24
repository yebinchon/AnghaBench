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
 struct pmc_thread* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct pmc_thread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pmc_threadfreelist ; 
 int /*<<< orphan*/  pmc_threadfreelist_entries ; 
 int /*<<< orphan*/  pmc_threadfreelist_mtx ; 
 int /*<<< orphan*/  pt_next ; 

__attribute__((used)) static struct pmc_thread *
FUNC4(void)
{
	struct pmc_thread *pt;

	FUNC2(&pmc_threadfreelist_mtx);
	if ((pt = FUNC0(&pmc_threadfreelist)) != NULL) {
		FUNC1(pt, pt_next);
		pmc_threadfreelist_entries--;
	}
	FUNC3(&pmc_threadfreelist_mtx);

	return (pt);
}