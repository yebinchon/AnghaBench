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
struct tty {int t_flags; int /*<<< orphan*/  t_outpoll; int /*<<< orphan*/  t_inpoll; } ;
struct thread {int dummy; } ;
struct cdev {struct tty* si_drv1; } ;

/* Variables and functions */
 int POLLHUP ; 
 int POLLIN ; 
 int POLLOUT ; 
 int POLLRDNORM ; 
 int POLLWRNORM ; 
 int TF_ZOMBIE ; 
 int /*<<< orphan*/  FUNC0 (struct thread*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct tty*) ; 
 int FUNC2 (struct tty*) ; 
 scalar_t__ FUNC3 (struct tty*) ; 
 scalar_t__ FUNC4 (struct tty*) ; 

__attribute__((used)) static int
FUNC5(struct cdev *dev, int events, struct thread *td)
{
	struct tty *tp = dev->si_drv1;
	int error, revents = 0;

	error = FUNC2(tp);
	if (error)
		return ((events & (POLLIN|POLLRDNORM)) | POLLHUP);

	if (events & (POLLIN|POLLRDNORM)) {
		/* See if we can read something. */
		if (FUNC3(tp) > 0)
			revents |= events & (POLLIN|POLLRDNORM);
	}

	if (tp->t_flags & TF_ZOMBIE) {
		/* Hangup flag on zombie state. */
		revents |= POLLHUP;
	} else if (events & (POLLOUT|POLLWRNORM)) {
		/* See if we can write something. */
		if (FUNC4(tp) > 0)
			revents |= events & (POLLOUT|POLLWRNORM);
	}

	if (revents == 0) {
		if (events & (POLLIN|POLLRDNORM))
			FUNC0(td, &tp->t_inpoll);
		if (events & (POLLOUT|POLLWRNORM))
			FUNC0(td, &tp->t_outpoll);
	}

	FUNC1(tp);

	return (revents);
}