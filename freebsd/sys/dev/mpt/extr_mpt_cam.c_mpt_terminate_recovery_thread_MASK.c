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
struct mpt_softc {int shutdwn_recovery; int /*<<< orphan*/ * recovery_thread; } ;

/* Variables and functions */
 int /*<<< orphan*/  PUSER ; 
 int /*<<< orphan*/  FUNC0 (struct mpt_softc*,int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mpt_softc*) ; 

__attribute__((used)) static void
FUNC2(struct mpt_softc *mpt)
{

	if (mpt->recovery_thread == NULL) {
		return;
	}
	mpt->shutdwn_recovery = 1;
	FUNC1(mpt);
	/*
	 * Sleep on a slightly different location
	 * for this interlock just for added safety.
	 */
	FUNC0(mpt, &mpt->recovery_thread, PUSER, "thtrm", 0);
}