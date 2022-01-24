#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct proc {int dummy; } ;
struct mqueue_notifier {int /*<<< orphan*/  nt_ksi; } ;
struct mqueue {struct mqueue_notifier* mq_notifier; int /*<<< orphan*/  mq_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (struct proc*) ; 
 int /*<<< orphan*/  FUNC1 (struct proc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct proc*,struct mqueue_notifier*) ; 
 struct mqueue_notifier* FUNC4 (struct proc*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(struct proc *p, struct mqueue *mq, int fd)
{
	struct mqueue_notifier *nt;

	FUNC2(&mq->mq_mutex, MA_OWNED);
	FUNC0(p);
	nt = FUNC4(p, fd);
	if (nt != NULL) {
		if (mq->mq_notifier == nt)
			mq->mq_notifier = NULL;
		FUNC5(&nt->nt_ksi);
		FUNC3(p, nt);
	}
	FUNC1(p);
}