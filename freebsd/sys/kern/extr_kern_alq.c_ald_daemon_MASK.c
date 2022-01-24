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
 int /*<<< orphan*/  FUNC2 (struct alq*) ; 
 int /*<<< orphan*/  FUNC3 (struct alq*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct alq* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PWAIT ; 
 int /*<<< orphan*/  SHUTDOWN_PRI_FIRST ; 
 int /*<<< orphan*/  ald_active ; 
 int /*<<< orphan*/  FUNC7 (struct alq*) ; 
 int /*<<< orphan*/  ald_mtx ; 
 int /*<<< orphan*/  ald_proc ; 
 int /*<<< orphan*/  ald_shutdown ; 
 scalar_t__ ald_shutingdown ; 
 int /*<<< orphan*/  ald_thread ; 
 int FUNC8 (struct alq*) ; 
 int /*<<< orphan*/  alq_eventhandler_tag ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  shutdown_pre_sync ; 
 int /*<<< orphan*/  FUNC11 (struct alq*) ; 

__attribute__((used)) static void
FUNC12(void)
{
	int needwakeup;
	struct alq *alq;

	ald_thread = FUNC5(ald_proc);

	alq_eventhandler_tag = FUNC4(shutdown_pre_sync,
	    ald_shutdown, NULL, SHUTDOWN_PRI_FIRST);

	FUNC0();

	for (;;) {
		while ((alq = FUNC6(&ald_active)) == NULL &&
		    !ald_shutingdown)
			FUNC10(&ald_active, &ald_mtx, PWAIT, "aldslp", 0);

		/* Don't shutdown until all active ALQs are flushed. */
		if (ald_shutingdown && alq == NULL) {
			FUNC1();
			break;
		}

		FUNC2(alq);
		FUNC7(alq);
		FUNC1();
		needwakeup = FUNC8(alq);
		FUNC3(alq);
		if (needwakeup)
			FUNC11(alq);
		FUNC0();
	}

	FUNC9(0);
}