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
struct thread {struct proc* td_proc; } ;
struct sigevent {scalar_t__ sigev_notify; int /*<<< orphan*/  sigev_signo; } ;
struct proc {struct filedesc* p_fd; } ;
struct TYPE_3__ {int ksi_flags; int ksi_mqd; int /*<<< orphan*/  ksi_code; } ;
struct mqueue_notifier {struct sigevent nt_sigev; TYPE_1__ nt_ksi; struct proc* nt_proc; } ;
struct mqueue {scalar_t__ mq_receivers; int /*<<< orphan*/  mq_mutex; int /*<<< orphan*/  mq_msgq; struct mqueue_notifier* mq_notifier; } ;
struct filedesc {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EBADF ; 
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (struct filedesc*) ; 
 int /*<<< orphan*/  FUNC2 (struct filedesc*) ; 
 int KSI_EXT ; 
 int KSI_INS ; 
 int /*<<< orphan*/  FUNC3 (struct proc*) ; 
 int /*<<< orphan*/  FUNC4 (struct proc*) ; 
 scalar_t__ SIGEV_NONE ; 
 scalar_t__ SIGEV_SIGNAL ; 
 scalar_t__ SIGEV_THREAD_ID ; 
 int /*<<< orphan*/  SI_MESGQ ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cap_event_rights ; 
 int /*<<< orphan*/  FUNC8 (struct filedesc*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct file*,struct thread*) ; 
 struct file* FUNC10 (struct filedesc*,int) ; 
 int FUNC11 (struct thread*,int,struct file**,int /*<<< orphan*/ *,struct mqueue**) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (struct mqueue*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 struct mqueue_notifier* FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (struct mqueue_notifier*) ; 
 int /*<<< orphan*/  FUNC18 (struct proc*,struct mqueue_notifier*) ; 
 int /*<<< orphan*/  FUNC19 (struct proc*,struct mqueue*,int) ; 
 struct mqueue_notifier* FUNC20 (struct proc*,int) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC22(struct thread *td, int mqd, struct sigevent *sigev)
{
	struct filedesc *fdp;
	struct proc *p;
	struct mqueue *mq;
	struct file *fp, *fp2;
	struct mqueue_notifier *nt, *newnt = NULL;
	int error;

	FUNC0(mqd);
	if (sigev != NULL) {
		if (sigev->sigev_notify != SIGEV_SIGNAL &&
		    sigev->sigev_notify != SIGEV_THREAD_ID &&
		    sigev->sigev_notify != SIGEV_NONE)
			return (EINVAL);
		if ((sigev->sigev_notify == SIGEV_SIGNAL ||
		    sigev->sigev_notify == SIGEV_THREAD_ID) &&
		    !FUNC6(sigev->sigev_signo))
			return (EINVAL);
	}
	p = td->td_proc;
	fdp = td->td_proc->p_fd;
	error = FUNC11(td, mqd, &fp, NULL, &mq);
	if (error)
		return (error);
again:
	FUNC1(fdp);
	fp2 = FUNC10(fdp, mqd);
	if (fp2 == NULL) {
		FUNC2(fdp);
		error = EBADF;
		goto out;
	}
#ifdef CAPABILITIES
	error = cap_check(cap_rights(fdp, mqd), &cap_event_rights);
	if (error) {
		FILEDESC_SUNLOCK(fdp);
		goto out;
	}
#endif
	if (fp2 != fp) {
		FUNC2(fdp);
		error = EBADF;
		goto out;
	}
	FUNC14(&mq->mq_mutex);
	FUNC2(fdp);
	if (sigev != NULL) {
		if (mq->mq_notifier != NULL) {
			error = EBUSY;
		} else {
			FUNC3(p);
			nt = FUNC20(p, mqd);
			if (nt == NULL) {
				if (newnt == NULL) {
					FUNC4(p);
					FUNC15(&mq->mq_mutex);
					newnt = FUNC16();
					goto again;
				}
			}

			if (nt != NULL) {
				FUNC21(&nt->nt_ksi);
				if (newnt != NULL) {
					FUNC17(newnt);
					newnt = NULL;
				}
			} else {
				nt = newnt;
				newnt = NULL;
				FUNC12(&nt->nt_ksi);
				nt->nt_ksi.ksi_flags |= KSI_INS | KSI_EXT;
				nt->nt_ksi.ksi_code = SI_MESGQ;
				nt->nt_proc = p;
				nt->nt_ksi.ksi_mqd = mqd;
				FUNC18(p, nt);
			}
			nt->nt_sigev = *sigev;
			mq->mq_notifier = nt;
			FUNC4(p);
			/*
			 * if there is no receivers and message queue
			 * is not empty, we should send notification
			 * as soon as possible.
			 */
			if (mq->mq_receivers == 0 &&
			    !FUNC5(&mq->mq_msgq))
				FUNC13(mq);
		}
	} else {
		FUNC19(p, mq, mqd);
	}
	FUNC15(&mq->mq_mutex);

out:
	FUNC9(fp, td);
	if (newnt != NULL)
		FUNC17(newnt);
	return (error);
}