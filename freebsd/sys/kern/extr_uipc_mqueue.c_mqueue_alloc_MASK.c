#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  si_note; } ;
struct TYPE_3__ {int /*<<< orphan*/  si_note; } ;
struct mqueue {int /*<<< orphan*/  mq_mutex; TYPE_2__ mq_wsel; TYPE_1__ mq_rsel; int /*<<< orphan*/  mq_msgsize; int /*<<< orphan*/  mq_maxmsg; int /*<<< orphan*/  mq_msgq; } ;
struct mq_attr {int /*<<< orphan*/  mq_msgsize; int /*<<< orphan*/  mq_maxmsg; } ;

/* Variables and functions */
 int /*<<< orphan*/  MTX_DEF ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int) ; 
 scalar_t__ curmq ; 
 int /*<<< orphan*/  default_maxmsg ; 
 int /*<<< orphan*/  default_msgsize ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ maxmq ; 
 int /*<<< orphan*/  mqueue_zone ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct mqueue* FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct mqueue *
FUNC5(const struct mq_attr *attr)
{
	struct mqueue *mq;

	if (curmq >= maxmq)
		return (NULL);
	mq = FUNC4(mqueue_zone, M_WAITOK | M_ZERO);
	FUNC0(&mq->mq_msgq);
	if (attr != NULL) {
		mq->mq_maxmsg = attr->mq_maxmsg;
		mq->mq_msgsize = attr->mq_msgsize;
	} else {
		mq->mq_maxmsg = default_maxmsg;
		mq->mq_msgsize = default_msgsize;
	}
	FUNC3(&mq->mq_mutex, "mqueue lock", NULL, MTX_DEF);
	FUNC2(&mq->mq_rsel.si_note, &mq->mq_mutex);
	FUNC2(&mq->mq_wsel.si_note, &mq->mq_mutex);
	FUNC1(&curmq, 1);
	return (mq);
}