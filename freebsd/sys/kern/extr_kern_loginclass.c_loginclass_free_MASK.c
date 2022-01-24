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
struct loginclass {int /*<<< orphan*/  lc_racct; int /*<<< orphan*/  lc_refcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct loginclass*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_LOGINCLASS ; 
 int /*<<< orphan*/  FUNC1 (struct loginclass*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lc_next ; 
 int /*<<< orphan*/  loginclasses_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void
FUNC7(struct loginclass *lc)
{

	if (FUNC4(&lc->lc_refcount))
		return;

	FUNC5(&loginclasses_lock);
	if (!FUNC3(&lc->lc_refcount)) {
		FUNC6(&loginclasses_lock);
		return;
	}

	FUNC2(&lc->lc_racct);
	FUNC0(lc, lc_next);
	FUNC6(&loginclasses_lock);

	FUNC1(lc, M_LOGINCLASS);
}