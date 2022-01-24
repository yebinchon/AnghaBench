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
struct alq {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct alq* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct alq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PWAIT ; 
 int /*<<< orphan*/  ald_active ; 
 int /*<<< orphan*/  ald_mtx ; 
 int /*<<< orphan*/  ald_proc ; 
 int /*<<< orphan*/  ald_queues ; 
 int ald_shutingdown ; 
 int /*<<< orphan*/  FUNC4 (struct alq*) ; 
 int /*<<< orphan*/  aq_link ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(void *arg, int howto)
{
	struct alq *alq;

	FUNC0();

	/* Ensure no new queues can be created. */
	ald_shutingdown = 1;

	/* Shutdown all ALQs prior to terminating the ald_daemon. */
	while ((alq = FUNC2(&ald_queues)) != NULL) {
		FUNC3(alq, aq_link);
		FUNC1();
		FUNC4(alq);
		FUNC0();
	}

	/* At this point, all ALQs are flushed and shutdown. */

	/*
	 * Wake ald_daemon so that it exits. It won't be able to do
	 * anything until we mtx_sleep because we hold the ald_mtx.
	 */
	FUNC6(&ald_active);

	/* Wait for ald_daemon to exit. */
	FUNC5(ald_proc, &ald_mtx, PWAIT, "aldslp", 0);

	FUNC1();
}