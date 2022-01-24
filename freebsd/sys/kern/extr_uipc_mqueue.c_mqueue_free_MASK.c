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
struct mqueue_msg {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  si_note; } ;
struct mqueue {TYPE_1__ mq_wsel; TYPE_1__ mq_rsel; int /*<<< orphan*/  mq_mutex; int /*<<< orphan*/  mq_msgq; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_MQUEUEDATA ; 
 struct mqueue_msg* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct mqueue_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  curmq ; 
 int /*<<< orphan*/  FUNC3 (struct mqueue_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mqueue_zone ; 
 int /*<<< orphan*/  msg_link ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct mqueue*) ; 

__attribute__((used)) static void
FUNC8(struct mqueue *mq)
{
	struct mqueue_msg *msg;

	while ((msg = FUNC0(&mq->mq_msgq)) != NULL) {
		FUNC1(&mq->mq_msgq, msg, msg_link);
		FUNC3(msg, M_MQUEUEDATA);
	}

	FUNC5(&mq->mq_mutex);
	FUNC6(&mq->mq_rsel);
	FUNC6(&mq->mq_wsel);
	FUNC4(&mq->mq_rsel.si_note);
	FUNC4(&mq->mq_wsel.si_note);
	FUNC7(mqueue_zone, mq);
	FUNC2(&curmq, -1);
}