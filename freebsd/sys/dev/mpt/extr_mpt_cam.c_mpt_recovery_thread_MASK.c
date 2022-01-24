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
struct mpt_softc {scalar_t__ shutdwn_recovery; int /*<<< orphan*/ * recovery_thread; int /*<<< orphan*/  request_timeout_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mpt_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct mpt_softc*) ; 
 int /*<<< orphan*/  PUSER ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mpt_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct mpt_softc*,struct mpt_softc*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **) ; 

__attribute__((used)) static void
FUNC7(void *arg)
{
	struct mpt_softc *mpt;

	mpt = (struct mpt_softc *)arg;
	FUNC0(mpt);
	for (;;) {
		if (FUNC2(&mpt->request_timeout_list) != 0) {
			if (mpt->shutdwn_recovery == 0) {
				FUNC5(mpt, mpt, PUSER, "idle", 0);
			}
		}
		if (mpt->shutdwn_recovery != 0) {
			break;
		}
		FUNC4(mpt);
	}
	mpt->recovery_thread = NULL;
	FUNC6(&mpt->recovery_thread);
	FUNC1(mpt);
	FUNC3(0);
}