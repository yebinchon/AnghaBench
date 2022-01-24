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
struct thread {int dummy; } ;
struct kqueue {TYPE_1__* kq_cred; struct filedesc* kq_fdp; } ;
struct filedesc {int /*<<< orphan*/  fd_kqlist; } ;
struct file {struct kqueue* f_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  cr_ruidinfo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct filedesc*) ; 
 int /*<<< orphan*/  FUNC1 (struct filedesc*) ; 
 int /*<<< orphan*/  FUNC2 (struct filedesc*) ; 
 int /*<<< orphan*/  M_KQUEUE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct kqueue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (struct kqueue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kq_list ; 
 int FUNC7 (struct file*,struct kqueue**) ; 
 int /*<<< orphan*/  FUNC8 (struct kqueue*) ; 
 int /*<<< orphan*/  FUNC9 (struct kqueue*,struct thread*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11(struct file *fp, struct thread *td)
{
	struct kqueue *kq = fp->f_data;
	struct filedesc *fdp;
	int error;
	int filedesc_unlock;

	if ((error = FUNC7(fp, &kq)))
		return error;
	FUNC9(kq, td);

	/*
	 * We could be called due to the knote_drop() doing fdrop(),
	 * called from kqueue_register().  In this case the global
	 * lock is owned, and filedesc sx is locked before, to not
	 * take the sleepable lock after non-sleepable.
	 */
	fdp = kq->kq_fdp;
	kq->kq_fdp = NULL;
	if (!FUNC10(FUNC0(fdp))) {
		FUNC1(fdp);
		filedesc_unlock = 1;
	} else
		filedesc_unlock = 0;
	FUNC3(&fdp->fd_kqlist, kq, kq_list);
	if (filedesc_unlock)
		FUNC2(fdp);

	FUNC8(kq);
	FUNC4(kq->kq_cred->cr_ruidinfo, -1, 0);
	FUNC5(kq->kq_cred);
	FUNC6(kq, M_KQUEUE);
	fp->f_data = NULL;

	return (0);
}