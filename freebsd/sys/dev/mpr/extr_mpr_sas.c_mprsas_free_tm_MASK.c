#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct mpr_softc {int dummy; } ;
struct mpr_command {TYPE_3__* cm_ccb; TYPE_2__* cm_targ; } ;
struct TYPE_4__ {int /*<<< orphan*/  path; } ;
struct TYPE_6__ {TYPE_1__ ccb_h; } ;
struct TYPE_5__ {int tid; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  MPRSAS_TARGET_INRESET ; 
 int /*<<< orphan*/  FUNC0 (struct mpr_softc*) ; 
 int /*<<< orphan*/  MPR_INFO ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (struct mpr_softc*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mpr_softc*,struct mpr_command*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

void
FUNC6(struct mpr_softc *sc, struct mpr_command *tm)
{
	int target_id = 0xFFFFFFFF;

	FUNC0(sc);
	if (tm == NULL)
		return;

	/*
	 * For TM's the devq is frozen for the device.  Unfreeze it here and
	 * free the resources used for freezing the devq.  Must clear the
	 * INRESET flag as well or scsi I/O will not work.
	 */
	if (tm->cm_targ != NULL) {
		tm->cm_targ->flags &= ~MPRSAS_TARGET_INRESET;
		target_id = tm->cm_targ->tid;
	}
	if (tm->cm_ccb) {
		FUNC1(sc, MPR_INFO, "Unfreezing devq for target ID %d\n",
		    target_id);
		FUNC5(tm->cm_ccb->ccb_h.path, 1, TRUE);
		FUNC4(tm->cm_ccb->ccb_h.path);
		FUNC3(tm->cm_ccb);
	}

	FUNC2(sc, tm);
}