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

/* Variables and functions */
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SWI_TQ ; 
 scalar_t__ mca_banks ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  mca_tq ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  taskqueue_thread_enqueue ; 

__attribute__((used)) static void
FUNC4(void *dummy)
{
	if (mca_banks <= 0)
		return;

	mca_tq = FUNC2("mca", M_WAITOK,
	    taskqueue_thread_enqueue, &mca_tq);
	FUNC3(&mca_tq, 1, FUNC0(SWI_TQ), "mca taskq");

	/* CMCIs during boot may have claimed items from the freelist. */
	FUNC1();
}