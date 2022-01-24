#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mpt_softc {int /*<<< orphan*/  cdev; } ;
struct TYPE_3__ {int /*<<< orphan*/  reply_handler; } ;
typedef  TYPE_1__ mpt_handler_t ;

/* Variables and functions */
 int /*<<< orphan*/  MPT_HANDLER_REPLY ; 
 int /*<<< orphan*/  FUNC0 (struct mpt_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct mpt_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mpt_softc*,int /*<<< orphan*/ ,TYPE_1__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mpt_user_reply_handler ; 
 int /*<<< orphan*/  user_handler_id ; 

__attribute__((used)) static void
FUNC4(struct mpt_softc *mpt)
{
	mpt_handler_t handler;

	/* XXX: do a purge of pending requests? */
	FUNC2(mpt->cdev);

	FUNC0(mpt);
	handler.reply_handler = mpt_user_reply_handler;
	FUNC3(mpt, MPT_HANDLER_REPLY, handler,
	    user_handler_id);
	FUNC1(mpt);
}