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
struct cuse_client_command {int dummy; } ;
struct cuse_client {int /*<<< orphan*/  fflags; TYPE_1__* server; struct cuse_client_command* cmds; } ;
struct cdev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  selinfo; } ;

/* Variables and functions */
 size_t CUSE_CMD_POLL ; 
 unsigned long CUSE_POLL_ERROR ; 
 unsigned long CUSE_POLL_READ ; 
 unsigned long CUSE_POLL_WRITE ; 
 int /*<<< orphan*/  IO_NDELAY ; 
 int POLLHUP ; 
 int POLLIN ; 
 int POLLOUT ; 
 int POLLPRI ; 
 int POLLRDNORM ; 
 int POLLWRNORM ; 
 int FUNC0 (struct cuse_client**) ; 
 int FUNC1 (struct cuse_client_command*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cuse_client_command*,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cuse_client_command*) ; 
 int /*<<< orphan*/  FUNC4 (struct cuse_client_command*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct thread*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC8(struct cdev *dev, int events, struct thread *td)
{
	struct cuse_client_command *pccmd;
	struct cuse_client *pcc;
	unsigned long temp;
	int error;
	int revents;

	error = FUNC0(&pcc);
	if (error != 0)
		goto pollnval;

	temp = 0;

	if (events & (POLLPRI | POLLIN | POLLRDNORM))
		temp |= CUSE_POLL_READ;

	if (events & (POLLOUT | POLLWRNORM))
		temp |= CUSE_POLL_WRITE;

	if (events & POLLHUP)
		temp |= CUSE_POLL_ERROR;

	pccmd = &pcc->cmds[CUSE_CMD_POLL];

	FUNC3(pccmd);

	/* Need to selrecord() first to not loose any events. */
	if (temp != 0 && td != NULL)
		FUNC7(td, &pcc->server->selinfo);

	FUNC5();
	FUNC2(pccmd,
	    0, temp, pcc->fflags, IO_NDELAY);

	error = FUNC1(pccmd, 0, 0);
	FUNC6();

	FUNC4(pccmd);

	if (error < 0) {
		goto pollnval;
	} else {
		revents = 0;
		if (error & CUSE_POLL_READ)
			revents |= (events & (POLLPRI | POLLIN | POLLRDNORM));
		if (error & CUSE_POLL_WRITE)
			revents |= (events & (POLLOUT | POLLWRNORM));
		if (error & CUSE_POLL_ERROR)
			revents |= (events & POLLHUP);
	}
	return (revents);

pollnval:
	/* XXX many clients don't understand POLLNVAL */
	return (events & (POLLHUP | POLLPRI | POLLIN |
	    POLLRDNORM | POLLOUT | POLLWRNORM));
}