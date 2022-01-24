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
struct TYPE_5__ {int /*<<< orphan*/  func_code; } ;
struct ccb_setasync {struct mpt_softc* callback_arg; int /*<<< orphan*/  callback; scalar_t__ event_enable; TYPE_2__ ccb_h; } ;
struct TYPE_4__ {int /*<<< orphan*/  reply_handler; } ;
typedef  TYPE_1__ mpt_handler_t ;

/* Variables and functions */
 int /*<<< orphan*/  MPT_HANDLER_REPLY ; 
 int /*<<< orphan*/  FUNC0 (struct mpt_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct mpt_softc*) ; 
 int /*<<< orphan*/  XPT_SASYNC_CB ; 
 int /*<<< orphan*/  FUNC2 (struct mpt_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mpt_softc*,int /*<<< orphan*/ ,TYPE_1__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mpt_raid_async ; 
 int /*<<< orphan*/  mpt_raid_reply_handler ; 
 int /*<<< orphan*/  FUNC4 (struct mpt_softc*) ; 
 int /*<<< orphan*/  raid_handler_id ; 
 int /*<<< orphan*/  FUNC5 (union ccb*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC7(struct mpt_softc *mpt)
{
	struct ccb_setasync csa;
	mpt_handler_t handler;

	FUNC2(mpt, &mpt->raid_timer);

	FUNC0(mpt);
	FUNC4(mpt); 
	handler.reply_handler = mpt_raid_reply_handler;
	FUNC3(mpt, MPT_HANDLER_REPLY, handler,
			       raid_handler_id);
	FUNC6(&csa.ccb_h, mpt->path, /*priority*/5);
	csa.ccb_h.func_code = XPT_SASYNC_CB;
	csa.event_enable = 0;
	csa.callback = mpt_raid_async;
	csa.callback_arg = mpt;
	FUNC5((union ccb *)&csa);
	FUNC1(mpt);
}