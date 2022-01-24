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
struct ucred {int /*<<< orphan*/  cr_ruidinfo; } ;
struct thread {int* td_retval; struct ucred* td_ucred; TYPE_1__* td_proc; } ;
struct kqueue {int /*<<< orphan*/  kq_cred; struct filedesc* kq_fdp; } ;
struct filedesc {int /*<<< orphan*/  fd_kqlist; } ;
struct filecaps {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {struct filedesc* p_fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  DTYPE_KQUEUE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct filedesc*) ; 
 int /*<<< orphan*/  FUNC1 (struct filedesc*) ; 
 int FREAD ; 
 int FWRITE ; 
 int /*<<< orphan*/  M_KQUEUE ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  RLIMIT_KQUEUES ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct kqueue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ucred*) ; 
 int FUNC5 (struct thread*,struct file**,int*,int,struct filecaps*) ; 
 int /*<<< orphan*/  FUNC6 (struct file*,struct thread*) ; 
 int /*<<< orphan*/  FUNC7 (struct file*,int,int /*<<< orphan*/ ,struct kqueue*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  kq_list ; 
 int /*<<< orphan*/  FUNC8 (struct kqueue*) ; 
 int /*<<< orphan*/  kqueueops ; 
 int /*<<< orphan*/  FUNC9 (struct thread*,int /*<<< orphan*/ ) ; 
 struct kqueue* FUNC10 (int,int /*<<< orphan*/ ,int) ; 

int
FUNC11(struct thread *td, int flags, struct filecaps *fcaps)
{
	struct filedesc *fdp;
	struct kqueue *kq;
	struct file *fp;
	struct ucred *cred;
	int fd, error;

	fdp = td->td_proc->p_fd;
	cred = td->td_ucred;
	if (!FUNC3(cred->cr_ruidinfo, 1, FUNC9(td, RLIMIT_KQUEUES)))
		return (ENOMEM);

	error = FUNC5(td, &fp, &fd, flags, fcaps);
	if (error != 0) {
		FUNC3(cred->cr_ruidinfo, -1, 0);
		return (error);
	}

	/* An extra reference on `fp' has been held for us by falloc(). */
	kq = FUNC10(sizeof *kq, M_KQUEUE, M_WAITOK | M_ZERO);
	FUNC8(kq);
	kq->kq_fdp = fdp;
	kq->kq_cred = FUNC4(cred);

	FUNC0(fdp);
	FUNC2(&fdp->fd_kqlist, kq, kq_list);
	FUNC1(fdp);

	FUNC7(fp, FREAD | FWRITE, DTYPE_KQUEUE, kq, &kqueueops);
	FUNC6(fp, td);

	td->td_retval[0] = fd;
	return (0);
}