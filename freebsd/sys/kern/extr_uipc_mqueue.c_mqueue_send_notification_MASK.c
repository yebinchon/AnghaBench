#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct thread {int dummy; } ;
struct proc {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  ksi_signo; } ;
struct TYPE_7__ {scalar_t__ sigev_notify; } ;
struct mqueue_notifier {TYPE_1__ nt_ksi; TYPE_2__ nt_sigev; struct proc* nt_proc; } ;
struct mqueue {struct mqueue_notifier* mq_notifier; int /*<<< orphan*/  mq_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC1 (struct proc*) ; 
 scalar_t__ SIGEV_NONE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct proc*,TYPE_2__*,struct thread**) ; 
 int /*<<< orphan*/  FUNC5 (struct proc*,struct thread*,int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static void
FUNC6(struct mqueue *mq)
{
	struct mqueue_notifier *nt;
	struct thread *td;
	struct proc *p;
	int error;

	FUNC3(&mq->mq_mutex, MA_OWNED);
	nt = mq->mq_notifier;
	if (nt->nt_sigev.sigev_notify != SIGEV_NONE) {
		p = nt->nt_proc;
		error = FUNC4(p, &nt->nt_sigev, &td);
		if (error) {
			mq->mq_notifier = NULL;
			return;
		}
		if (!FUNC0(&nt->nt_ksi)) {
			FUNC2(&nt->nt_ksi, &nt->nt_sigev);
			FUNC5(p, td, nt->nt_ksi.ksi_signo, &nt->nt_ksi);
		}
		FUNC1(p);
	}
	mq->mq_notifier = NULL;
}