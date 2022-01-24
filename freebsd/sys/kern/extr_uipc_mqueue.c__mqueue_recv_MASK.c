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
struct mqueue_msg {scalar_t__ msg_size; } ;
struct TYPE_2__ {int /*<<< orphan*/  si_note; } ;
struct mqueue {scalar_t__ mq_receivers; int mq_flags; int /*<<< orphan*/  mq_mutex; int /*<<< orphan*/  mq_msgq; int /*<<< orphan*/ * mq_notifier; TYPE_1__ mq_wsel; scalar_t__ mq_senders; int /*<<< orphan*/  mq_totalbytes; int /*<<< orphan*/  mq_curmsgs; } ;

/* Variables and functions */
 int EAGAIN ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int MQ_WSEL ; 
 int /*<<< orphan*/  PCATCH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct mqueue_msg* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct mqueue_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mqueue*) ; 
 int /*<<< orphan*/  msg_link ; 
 int FUNC5 (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__*) ; 

__attribute__((used)) static int
FUNC10(struct mqueue *mq, struct mqueue_msg **msg, int timo)
{	
	int error = 0;
	
	FUNC6(&mq->mq_mutex);
	while ((*msg = FUNC2(&mq->mq_msgq)) == NULL && error == 0) {
		if (timo < 0) {
			FUNC7(&mq->mq_mutex);
			return (EAGAIN);
		}
		mq->mq_receivers++;
		error = FUNC5(&mq->mq_receivers, &mq->mq_mutex,
			    PCATCH, "mqrecv", timo);
		mq->mq_receivers--;
		if (error == EAGAIN)
			error = ETIMEDOUT;
	}
	if (*msg != NULL) {
		error = 0;
		FUNC3(&mq->mq_msgq, *msg, msg_link);
		mq->mq_curmsgs--;
		mq->mq_totalbytes -= (*msg)->msg_size;
		if (mq->mq_senders)
			FUNC9(&mq->mq_senders);
		if (mq->mq_flags & MQ_WSEL) {
			mq->mq_flags &= ~MQ_WSEL;
			FUNC8(&mq->mq_wsel);
		}
		FUNC0(&mq->mq_wsel.si_note, 0);
	}
	if (mq->mq_notifier != NULL && mq->mq_receivers == 0 &&
	    !FUNC1(&mq->mq_msgq)) {
		FUNC4(mq);
	}
	FUNC7(&mq->mq_mutex);
	return (error);
}