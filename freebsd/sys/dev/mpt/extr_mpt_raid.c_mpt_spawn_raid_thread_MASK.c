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
struct mpt_softc {int /*<<< orphan*/  phydisk_sim; int /*<<< orphan*/  unit; int /*<<< orphan*/  raid_thread; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (struct mpt_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct mpt_softc*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct mpt_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mpt_raid_thread ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct mpt_softc *mpt)
{
	int error;

	/*
	 * Freeze out any CAM transactions until our thread
	 * is able to run at least once.  We need to update
	 * our RAID pages before acception I/O or we may
	 * reject I/O to an ID we later determine is for a
	 * hidden physdisk.
	 */
	FUNC0(mpt);
	FUNC3(mpt->phydisk_sim, 1);
	FUNC1(mpt);
	error = FUNC2(mpt_raid_thread, mpt,
	    &mpt->raid_thread, /*flags*/0, /*altstack*/0,
	    "mpt_raid%d", mpt->unit);
	if (error != 0) {
		FUNC0(mpt);
		FUNC4(mpt->phydisk_sim, /*run_queue*/FALSE);
		FUNC1(mpt);
	}
	return (error);
}