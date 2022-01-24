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
struct mpt_softc {int role; int ready; scalar_t__ is_fc; } ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (struct mpt_softc*) ; 
 int MPT_ROLE_TARGET ; 
 int /*<<< orphan*/  FUNC1 (struct mpt_softc*) ; 
 scalar_t__ FUNC2 (struct mpt_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct mpt_softc*,char*) ; 

__attribute__((used)) static void
FUNC4(struct mpt_softc *mpt)
{

	/*
	 * If we're in target mode, hang out resources now
	 * so we don't cause the world to hang talking to us.
	 */
	if (mpt->is_fc && (mpt->role & MPT_ROLE_TARGET)) {
		/*
		 * Try to add some target command resources
		 */
		FUNC0(mpt);
		if (FUNC2(mpt) == FALSE) {
			FUNC3(mpt, "failed to add target commands\n");
		}
		FUNC1(mpt);
	}
	mpt->ready = 1;
}