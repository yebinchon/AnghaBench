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
struct sigevent {int /*<<< orphan*/  sigev_signo; int /*<<< orphan*/  sigev_notify; } ;
struct mq_attr {int mq_maxmsg; int mq_msgsize; } ;
typedef  scalar_t__ mqd_t ;

/* Variables and functions */
 scalar_t__ EBUSY ; 
 int /*<<< orphan*/  MQNAME ; 
 int O_CREAT ; 
 int O_EXCL ; 
 int O_RDWR ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SIGEV_SIGNAL ; 
 int /*<<< orphan*/  SIGRTMIN ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 scalar_t__ errno ; 
 int FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__,struct mq_attr*) ; 
 int FUNC4 (scalar_t__,struct sigevent*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int,int,struct mq_attr*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

int
FUNC7(void)
{
	struct mq_attr attr, attr2;
	struct sigevent sigev;
	mqd_t mq;
	int status;

	FUNC0("mqueuefs", 0);

	attr.mq_maxmsg  = 2;
	attr.mq_msgsize = 100;
	mq = FUNC5(MQNAME, O_CREAT | O_RDWR | O_EXCL, 0666, &attr);
	if (mq == (mqd_t)-1)
		FUNC1(1, "mq_open");
	status = FUNC6(MQNAME);
	if (status)
		FUNC1(1, "mq_unlink");
	status = FUNC3(mq, &attr2);
	if (status)
		FUNC1(1, "mq_getattr");
	if (attr.mq_maxmsg != attr2.mq_maxmsg)
		FUNC1(1, "mq_maxmsg changed");
	if (attr.mq_msgsize != attr2.mq_msgsize)
		FUNC1(1, "mq_msgsize changed");

	sigev.sigev_notify = SIGEV_SIGNAL;
	sigev.sigev_signo = SIGRTMIN;
	status = FUNC4(mq, &sigev);
	if (status)
		FUNC1(1, "mq_notify");
	status = FUNC4(mq, &sigev);
	if (status == 0)
		FUNC1(1, "mq_notify 2");
	else if (errno != EBUSY)
		FUNC1(1, "mq_notify 3");
	status = FUNC4(mq, NULL);
	if (status)
		FUNC1(1, "mq_notify 4");
	status = FUNC2(mq);
	if (status)
		FUNC1(1, "mq_close");
	return (0);
}