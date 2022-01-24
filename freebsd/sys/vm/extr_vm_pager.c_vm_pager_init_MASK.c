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
struct pagerops {int /*<<< orphan*/  (* pgo_init ) () ;} ;

/* Variables and functions */
 size_t FUNC0 (struct pagerops**) ; 
 struct pagerops** pagertab ; 
 int /*<<< orphan*/  FUNC1 () ; 

void
FUNC2(void)
{
	struct pagerops **pgops;

	/*
	 * Initialize known pagers
	 */
	for (pgops = pagertab; pgops < &pagertab[FUNC0(pagertab)]; pgops++)
		if ((*pgops)->pgo_init != NULL)
			(*(*pgops)->pgo_init)();
}