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
struct mca_internal {int /*<<< orphan*/  rec; } ;
typedef  enum scan_mode { ____Placeholder_scan_mode } scan_mode ;

/* Variables and functions */
 int POLLED ; 
 struct mca_internal* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cold ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  mca_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mca_pending ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  mca_resize_task ; 
 int /*<<< orphan*/  FUNC4 (struct mca_internal*) ; 
 int /*<<< orphan*/  mca_tq ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC8(enum scan_mode mode)
{
	struct mca_internal *mca;

	FUNC5(&mca_lock);
	while ((mca = FUNC0(&mca_pending)) != NULL) {
		FUNC1(&mca_pending, link);
		FUNC2(&mca->rec);
		FUNC4(mca);
	}
	FUNC6(&mca_lock);
	if (mode == POLLED)
		FUNC3();
	else if (!cold)
		FUNC7(mca_tq, &mca_resize_task);
}