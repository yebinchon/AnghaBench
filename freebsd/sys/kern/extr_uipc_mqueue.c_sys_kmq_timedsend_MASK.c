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
struct timespec {int dummy; } ;
struct thread {int dummy; } ;
struct mqueue {int dummy; } ;
struct kmq_timedsend_args {int /*<<< orphan*/  msg_prio; int /*<<< orphan*/  msg_len; int /*<<< orphan*/  msg_ptr; int /*<<< orphan*/ * abs_timeout; int /*<<< orphan*/  mqd; } ;
struct file {int f_flag; } ;
typedef  int /*<<< orphan*/  ets ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int O_NONBLOCK ; 
 int FUNC1 (int /*<<< orphan*/ *,struct timespec*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct file*,struct thread*) ; 
 int FUNC3 (struct thread*,int /*<<< orphan*/ ,struct file**,int /*<<< orphan*/ *,struct mqueue**) ; 
 int FUNC4 (struct mqueue*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct timespec*) ; 

int
FUNC5(struct thread *td, struct kmq_timedsend_args *uap)
{
	struct mqueue *mq;
	struct file *fp;
	struct timespec *abs_timeout, ets;
	int error, waitok;

	FUNC0(uap->mqd);
	error = FUNC3(td, uap->mqd, &fp, NULL, &mq);
	if (error)
		return (error);
	if (uap->abs_timeout != NULL) {
		error = FUNC1(uap->abs_timeout, &ets, sizeof(ets));
		if (error != 0)
			goto out;
		abs_timeout = &ets;
	} else
		abs_timeout = NULL;
	waitok = !(fp->f_flag & O_NONBLOCK);
	error = FUNC4(mq, uap->msg_ptr, uap->msg_len,
		uap->msg_prio, waitok, abs_timeout);
out:
	FUNC2(fp, td);
	return (error);
}