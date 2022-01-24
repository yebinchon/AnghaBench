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
typedef  int u_int ;
struct ahd_tmode_tstate {int dummy; } ;
struct ahd_softc {int dummy; } ;
struct TYPE_6__ {int width; } ;
struct TYPE_5__ {int width; } ;
struct TYPE_4__ {int width; } ;
struct ahd_initiator_tinfo {TYPE_3__ curr; TYPE_2__ goal; TYPE_1__ user; } ;
struct ahd_devinfo {int target; int /*<<< orphan*/  channel; int /*<<< orphan*/  our_scsiid; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC_TRANSFER_NEG ; 
 int /*<<< orphan*/  AHD_NEG_TO_GOAL ; 
 int AHD_TRANS_ACTIVE ; 
 int AHD_TRANS_CUR ; 
 int AHD_TRANS_GOAL ; 
 int AHD_TRANS_USER ; 
 int /*<<< orphan*/  CAM_LUN_WILDCARD ; 
 struct ahd_initiator_tinfo* FUNC0 (struct ahd_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct ahd_tmode_tstate**) ; 
 char* FUNC1 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct ahd_softc*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ahd_softc*) ; 
 scalar_t__ FUNC5 (struct ahd_softc*,struct ahd_devinfo*,struct ahd_tmode_tstate*,struct ahd_initiator_tinfo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ahd_softc*,struct ahd_devinfo*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (struct ahd_softc*) ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int,int) ; 

void
FUNC9(struct ahd_softc *ahd, struct ahd_devinfo *devinfo,
	      u_int width, u_int type, int paused)
{
	struct	ahd_initiator_tinfo *tinfo;
	struct	ahd_tmode_tstate *tstate;
	u_int	oldwidth;
	int	active;
	int	update_needed;

	active = (type & AHD_TRANS_ACTIVE) == AHD_TRANS_ACTIVE;
	update_needed = 0;
	tinfo = FUNC0(ahd, devinfo->channel, devinfo->our_scsiid,
				    devinfo->target, &tstate);

	if ((type & AHD_TRANS_USER) != 0)
		tinfo->user.width = width;

	if ((type & AHD_TRANS_GOAL) != 0)
		tinfo->goal.width = width;

	oldwidth = tinfo->curr.width;
	if ((type & AHD_TRANS_CUR) != 0 && oldwidth != width) {

		update_needed++;

		tinfo->curr.width = width;
		FUNC3(ahd, devinfo->channel, devinfo->target,
			       CAM_LUN_WILDCARD, AC_TRANSFER_NEG, NULL);
		if (bootverbose) {
			FUNC8("%s: target %d using %dbit transfers\n",
			       FUNC1(ahd), devinfo->target,
			       8 * (0x01 << width));
		}
	}

	if ((type & AHD_TRANS_CUR) != 0) {
		if (!paused)
			FUNC2(ahd);
		FUNC6(ahd, devinfo, &tinfo->curr);
		if (!paused)
			FUNC4(ahd);
	}

	update_needed += FUNC5(ahd, devinfo, tstate,
						tinfo, AHD_NEG_TO_GOAL);
	if (update_needed && active)
		FUNC7(ahd);

}