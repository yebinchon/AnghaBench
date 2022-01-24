#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  union ccb {int dummy; } ccb ;
struct mpt_softc {int /*<<< orphan*/  path; int /*<<< orphan*/  raid_timer; } ;
struct TYPE_5__ {scalar_t__ status; int /*<<< orphan*/  func_code; } ;
struct ccb_setasync {TYPE_2__ ccb_h; struct mpt_softc* callback_arg; int /*<<< orphan*/  callback; int /*<<< orphan*/  event_enable; } ;
struct TYPE_4__ {int /*<<< orphan*/  reply_handler; } ;
typedef  TYPE_1__ mpt_handler_t ;

/* Variables and functions */
 int /*<<< orphan*/  AC_FOUND_DEVICE ; 
 scalar_t__ CAM_REQ_CMP ; 
 int /*<<< orphan*/  MPT_HANDLER_REPLY ; 
 int /*<<< orphan*/  FUNC0 (struct mpt_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct mpt_softc*) ; 
 int /*<<< orphan*/  XPT_SASYNC_CB ; 
 int /*<<< orphan*/  FUNC2 (struct mpt_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mpt_softc*,char*) ; 
 int /*<<< orphan*/  mpt_raid_async ; 
 int /*<<< orphan*/  FUNC4 (struct mpt_softc*) ; 
 int /*<<< orphan*/  mpt_raid_reply_handler ; 
 int /*<<< orphan*/  FUNC5 (struct mpt_softc*) ; 
 int FUNC6 (struct mpt_softc*,int /*<<< orphan*/ ,TYPE_1__,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct mpt_softc*) ; 
 int /*<<< orphan*/  raid_handler_id ; 
 int /*<<< orphan*/  FUNC8 (union ccb*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC10(struct mpt_softc *mpt)
{
	struct ccb_setasync csa;
	mpt_handler_t	 handler;
	int		 error;

	FUNC2(mpt, &mpt->raid_timer);

	error = FUNC7(mpt);
	if (error != 0) {
		FUNC3(mpt, "Unable to spawn RAID thread!\n");
		goto cleanup;
	}
 
	FUNC0(mpt);
	handler.reply_handler = mpt_raid_reply_handler;
	error = FUNC6(mpt, MPT_HANDLER_REPLY, handler,
				     &raid_handler_id);
	if (error != 0) {
		FUNC3(mpt, "Unable to register RAID haandler!\n");
		goto cleanup;
	}

	FUNC9(&csa.ccb_h, mpt->path, 5);
	csa.ccb_h.func_code = XPT_SASYNC_CB;
	csa.event_enable = AC_FOUND_DEVICE;
	csa.callback = mpt_raid_async;
	csa.callback_arg = mpt;
	FUNC8((union ccb *)&csa);
	if (csa.ccb_h.status != CAM_REQ_CMP) {
		FUNC3(mpt, "mpt_raid_attach: Unable to register "
			"CAM async handler.\n");
	}
	FUNC1(mpt);

	FUNC5(mpt);
	return (0);
cleanup:
	FUNC1(mpt);
	FUNC4(mpt);
	return (error);
}