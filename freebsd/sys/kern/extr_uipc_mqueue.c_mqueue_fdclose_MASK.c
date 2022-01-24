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
struct thread {TYPE_1__* td_proc; } ;
struct mqueue {int mq_flags; int /*<<< orphan*/  mq_mutex; int /*<<< orphan*/  mq_wsel; int /*<<< orphan*/  mq_rsel; } ;
struct filedesc {int dummy; } ;
struct file {int /*<<< orphan*/ * f_ops; } ;
struct TYPE_2__ {struct filedesc* p_fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct filedesc*) ; 
 struct mqueue* FUNC1 (struct file*) ; 
 int MQ_RSEL ; 
 int MQ_WSEL ; 
 int /*<<< orphan*/  mqueueops ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,struct mqueue*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(struct thread *td, int fd, struct file *fp)
{
	struct mqueue *mq;
#ifdef INVARIANTS
	struct filedesc *fdp;
 
	fdp = td->td_proc->p_fd;
	FILEDESC_LOCK_ASSERT(fdp);
#endif

	if (fp->f_ops == &mqueueops) {
		mq = FUNC1(fp);
		FUNC2(&mq->mq_mutex);
		FUNC4(td->td_proc, mq, fd);

		/* have to wakeup thread in same process */
		if (mq->mq_flags & MQ_RSEL) {
			mq->mq_flags &= ~MQ_RSEL;
			FUNC5(&mq->mq_rsel);
		}
		if (mq->mq_flags & MQ_WSEL) {
			mq->mq_flags &= ~MQ_WSEL;
			FUNC5(&mq->mq_wsel);
		}
		FUNC3(&mq->mq_mutex);
	}
}