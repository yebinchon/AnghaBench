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
struct timeval {int dummy; } ;
struct timespec {int tv_nsec; scalar_t__ tv_sec; } ;
struct mqueue_msg {scalar_t__ msg_size; } ;
struct mqueue {size_t mq_msgsize; } ;
struct TYPE_2__ {scalar_t__* td_retval; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EINVAL ; 
 int EMSGSIZE ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (struct timeval*,struct timespec*) ; 
 int FUNC1 (struct mqueue*,struct mqueue_msg**,int) ; 
 TYPE_1__* curthread ; 
 int /*<<< orphan*/  FUNC2 (struct timespec*) ; 
 int /*<<< orphan*/  FUNC3 (struct mqueue_msg*) ; 
 int FUNC4 (struct mqueue_msg*,char*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC5 (struct timespec const*,struct timespec*,struct timespec*) ; 
 int FUNC6 (struct timeval*) ; 

int
FUNC7(struct mqueue *mq, char *msg_ptr,
	size_t msg_len, unsigned *msg_prio, int waitok,
	const struct timespec *abs_timeout)
{
	struct mqueue_msg *msg;
	struct timespec ts, ts2;
	struct timeval tv;
	int error;

	if (msg_len < mq->mq_msgsize)
		return (EMSGSIZE);

	/* O_NONBLOCK case */
	if (!waitok) {
		error = FUNC1(mq, &msg, -1);
		if (error)
			return (error);
		goto received;
	}

	/* we allow a null timeout (wait forever). */
	if (abs_timeout == NULL) {
		error = FUNC1(mq, &msg, 0);
		if (error)
			return (error);
		goto received;
	}

	/* try to get a message before checking time */
	error = FUNC1(mq, &msg, -1);
	if (error == 0)
		goto received;

	if (error != EAGAIN)
		return (error);

	if (abs_timeout->tv_nsec >= 1000000000 || abs_timeout->tv_nsec < 0) {
		error = EINVAL;
		return (error);
	}

	for (;;) {
		FUNC2(&ts);
		FUNC5(abs_timeout, &ts, &ts2);
		if (ts2.tv_sec < 0 || (ts2.tv_sec == 0 && ts2.tv_nsec <= 0)) {
			error = ETIMEDOUT;
			return (error);
		}
		FUNC0(&tv, &ts2);
		error = FUNC1(mq, &msg, FUNC6(&tv));
		if (error == 0)
			break;
		if (error != ETIMEDOUT)
			return (error);
	}

received:
	error = FUNC4(msg, msg_ptr, msg_prio);
	if (error == 0) {
		curthread->td_retval[0] = msg->msg_size;
		curthread->td_retval[1] = 0;
	}
	FUNC3(msg);
	return (error);
}