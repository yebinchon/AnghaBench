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
struct snapdata {int /*<<< orphan*/  sn_lock; int /*<<< orphan*/  sn_head; } ;

/* Variables and functions */
 struct snapdata* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct snapdata*,int /*<<< orphan*/ ) ; 
 int LK_CANRECURSE ; 
 int LK_NOSHARE ; 
 int /*<<< orphan*/  M_UFSMNT ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  PVFS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  VLKTIMEOUT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 struct snapdata* FUNC4 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sn_link ; 
 int /*<<< orphan*/  snapfree ; 
 int /*<<< orphan*/  snapfree_lock ; 

__attribute__((used)) static struct snapdata *
FUNC7(void)
{
	struct snapdata *sn;

	/*
	 * Fetch a snapdata from the free list if there is one available.
	 */
	FUNC5(&snapfree_lock);
	sn = FUNC0(&snapfree);
	if (sn != NULL)
		FUNC1(sn, sn_link);
	FUNC6(&snapfree_lock);
	if (sn != NULL)
		return (sn);
	/*
 	 * If there were no free snapdatas allocate one.
	 */
	sn = FUNC4(sizeof *sn, M_UFSMNT, M_WAITOK | M_ZERO);
	FUNC2(&sn->sn_head);
	FUNC3(&sn->sn_lock, PVFS, "snaplk", VLKTIMEOUT,
	    LK_CANRECURSE | LK_NOSHARE);
	return (sn);
}