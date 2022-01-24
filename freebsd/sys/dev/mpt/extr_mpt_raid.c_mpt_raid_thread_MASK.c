#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  path; } ;
union ccb {TYPE_1__ ccb_h; } ;
struct mpt_softc {scalar_t__ shutdwn_raid; scalar_t__ raid_wakeup; scalar_t__ raid_rescan; int /*<<< orphan*/ * raid_thread; int /*<<< orphan*/  phydisk_sim; int /*<<< orphan*/  raid_volumes; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAM_LUN_WILDCARD ; 
 int CAM_REQ_CMP ; 
 int /*<<< orphan*/  CAM_TARGET_WILDCARD ; 
 int /*<<< orphan*/  FUNC0 (struct mpt_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct mpt_softc*) ; 
 int /*<<< orphan*/  PUSER ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mpt_softc*,char*) ; 
 scalar_t__ FUNC5 (struct mpt_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct mpt_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct mpt_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **) ; 
 union ccb* FUNC9 () ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (union ccb*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (union ccb*) ; 

__attribute__((used)) static void
FUNC14(void *arg)
{
	struct mpt_softc *mpt;
	int firstrun;

	mpt = (struct mpt_softc *)arg;
	firstrun = 1;
	FUNC0(mpt);
	while (mpt->shutdwn_raid == 0) {

		if (mpt->raid_wakeup == 0) {
			FUNC7(mpt, &mpt->raid_volumes, PUSER, "idle", 0);
			continue;
		}

		mpt->raid_wakeup = 0;

		if (FUNC5(mpt)) {
			FUNC6(mpt);	/* XX NOT QUITE RIGHT */
			continue;
		}

		/*
		 * Now that we have our first snapshot of RAID data,
		 * allow CAM to access our physical disk bus.
		 */
		if (firstrun) {
			firstrun = 0;
			FUNC12(mpt->phydisk_sim, TRUE);
		}

		if (mpt->raid_rescan != 0) {
			union ccb *ccb;
			int error;

			mpt->raid_rescan = 0;
			FUNC1(mpt);

			ccb = FUNC9();

			FUNC0(mpt);
			error = FUNC10(&ccb->ccb_h.path, NULL,
			    FUNC2(mpt->phydisk_sim),
			    CAM_TARGET_WILDCARD, CAM_LUN_WILDCARD);
			if (error != CAM_REQ_CMP) {
				FUNC11(ccb);
				FUNC4(mpt, "Unable to rescan RAID Bus!\n");
			} else {
				FUNC13(ccb);
			}
		}
	}
	mpt->raid_thread = NULL;
	FUNC8(&mpt->raid_thread);
	FUNC1(mpt);
	FUNC3(0);
}