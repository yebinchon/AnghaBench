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
struct pmc_owner {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  curthread ; 
 int mp_ncpus ; 
 int /*<<< orphan*/  FUNC0 (struct pmc_owner*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct pmc_owner *po)
{
	/*
	 * Schedule the current buffer if any and not empty.
	 */
	for (int i = 0; i < mp_ncpus; i++) {
		FUNC3(curthread);
		FUNC1(curthread, i);
		FUNC4(curthread);
		FUNC0(po);
	}
	FUNC3(curthread);
	FUNC2(curthread);
	FUNC4(curthread);
}