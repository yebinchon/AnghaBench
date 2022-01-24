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
struct timeval {scalar_t__ tv_sec; } ;
struct timespec {int dummy; } ;
struct thread {TYPE_1__* td_proc; int /*<<< orphan*/  td_ucred; } ;
struct ksem {scalar_t__ ks_value; int /*<<< orphan*/  ks_waiters; int /*<<< orphan*/  ks_cv; int /*<<< orphan*/  ks_atime; } ;
struct file {int /*<<< orphan*/  f_cred; struct ksem* f_data; } ;
typedef  int /*<<< orphan*/  semid_t ;
typedef  int /*<<< orphan*/  cap_rights_t ;
struct TYPE_2__ {scalar_t__ p_pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CAP_SEM_WAIT ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int EAGAIN ; 
 int ETIMEDOUT ; 
 int EWOULDBLOCK ; 
 int /*<<< orphan*/  FUNC2 (struct timeval*,struct timespec*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct file*,struct thread*) ; 
 int /*<<< orphan*/  FUNC7 (struct timespec*) ; 
 int FUNC8 (struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct file**) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ksem*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sem_lock ; 
 int /*<<< orphan*/  FUNC12 (struct timespec*,struct timespec*,struct timespec*) ; 
 int /*<<< orphan*/  FUNC13 (struct timeval*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC15(struct thread *td, semid_t id, int tryflag,
    struct timespec *abstime)
{
	struct timespec ts1, ts2;
	struct timeval tv;
	cap_rights_t rights;
	struct file *fp;
	struct ksem *ks;
	int error;

	FUNC1((">>> kern_sem_wait entered! pid=%d\n", (int)td->td_proc->p_pid));
	FUNC0(id);
	error = FUNC8(td, id, FUNC3(&rights, CAP_SEM_WAIT), &fp);
	if (error)
		return (error);
	ks = fp->f_data;
	FUNC10(&sem_lock);
	FUNC1((">>> kern_sem_wait critical section entered! pid=%d\n",
	    (int)td->td_proc->p_pid));
#ifdef MAC
	error = mac_posixsem_check_wait(td->td_ucred, fp->f_cred, ks);
	if (error) {
		DP(("kern_sem_wait mac failed\n"));
		goto err;
	}
#endif
	FUNC1(("kern_sem_wait value = %d, tryflag %d\n", ks->ks_value, tryflag));
	FUNC14(&ks->ks_atime);
	while (ks->ks_value == 0) {
		ks->ks_waiters++;
		if (tryflag != 0)
			error = EAGAIN;
		else if (abstime == NULL)
			error = FUNC5(&ks->ks_cv, &sem_lock);
		else {
			for (;;) {
				ts1 = *abstime;
				FUNC7(&ts2);
				FUNC12(&ts1, &ts2, &ts1);
				FUNC2(&tv, &ts1);
				if (tv.tv_sec < 0) {
					error = ETIMEDOUT;
					break;
				}
				error = FUNC4(&ks->ks_cv,
				    &sem_lock, FUNC13(&tv));
				if (error != EWOULDBLOCK)
					break;
			}
		}
		ks->ks_waiters--;
		if (error)
			goto err;
	}
	ks->ks_value--;
	FUNC1(("kern_sem_wait value post-decrement = %d\n", ks->ks_value));
	error = 0;
err:
	FUNC11(&sem_lock);
	FUNC6(fp, td);
	FUNC1(("<<< kern_sem_wait leaving, pid=%d, error = %d\n",
	    (int)td->td_proc->p_pid, error));
	return (error);
}