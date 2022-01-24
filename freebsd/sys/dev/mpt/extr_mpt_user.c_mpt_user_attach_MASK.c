#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct mpt_softc {TYPE_4__* cdev; int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  reply_handler; } ;
typedef  TYPE_1__ mpt_handler_t ;
struct TYPE_6__ {struct mpt_softc* si_drv1; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GID_OPERATOR ; 
 int /*<<< orphan*/  MPT_HANDLER_REPLY ; 
 int /*<<< orphan*/  FUNC0 (struct mpt_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct mpt_softc*) ; 
 int /*<<< orphan*/  UID_ROOT ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,int) ; 
 int /*<<< orphan*/  mpt_cdevsw ; 
 int /*<<< orphan*/  FUNC4 (struct mpt_softc*,int /*<<< orphan*/ ,TYPE_1__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mpt_softc*,char*) ; 
 int FUNC6 (struct mpt_softc*,int /*<<< orphan*/ ,TYPE_1__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mpt_user_reply_handler ; 
 int /*<<< orphan*/  user_handler_id ; 

__attribute__((used)) static int
FUNC7(struct mpt_softc *mpt)
{
	mpt_handler_t handler;
	int error, unit;

	FUNC0(mpt);
	handler.reply_handler = mpt_user_reply_handler;
	error = FUNC6(mpt, MPT_HANDLER_REPLY, handler,
				     &user_handler_id);
	FUNC1(mpt);
	if (error != 0) {
		FUNC5(mpt, "Unable to register user handler!\n");
		return (error);
	}
	unit = FUNC2(mpt->dev);
	mpt->cdev = FUNC3(&mpt_cdevsw, unit, UID_ROOT, GID_OPERATOR, 0640,
	    "mpt%d", unit);
	if (mpt->cdev == NULL) {
		FUNC0(mpt);
		FUNC4(mpt, MPT_HANDLER_REPLY, handler,
		    user_handler_id);
		FUNC1(mpt);
		return (ENOMEM);
	}
	mpt->cdev->si_drv1 = mpt;
	return (0);
}