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
struct ucred {int dummy; } ;
struct tty {int dummy; } ;
struct thread {int dummy; } ;
struct pts_softc {int pts_flags; int /*<<< orphan*/  pts_inpoll; int /*<<< orphan*/  pts_outpoll; scalar_t__ pts_pkt; } ;
struct file {struct tty* f_data; } ;

/* Variables and functions */
 int POLLHUP ; 
 int POLLIN ; 
 int POLLOUT ; 
 int POLLRDNORM ; 
 int POLLWRNORM ; 
 int PTS_FINISHED ; 
 int PTS_PKT ; 
 int /*<<< orphan*/  FUNC0 (struct thread*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct tty*) ; 
 struct pts_softc* FUNC2 (struct tty*) ; 
 int /*<<< orphan*/  FUNC3 (struct tty*) ; 
 scalar_t__ FUNC4 (struct tty*) ; 
 scalar_t__ FUNC5 (struct tty*) ; 

__attribute__((used)) static int
FUNC6(struct file *fp, int events, struct ucred *active_cred,
    struct thread *td)
{
	struct tty *tp = fp->f_data;
	struct pts_softc *psc = FUNC2(tp);
	int revents = 0;

	FUNC1(tp);

	if (psc->pts_flags & PTS_FINISHED) {
		/* Slave device is not opened. */
		FUNC3(tp);
		return ((events & (POLLIN|POLLRDNORM)) | POLLHUP);
	}

	if (events & (POLLIN|POLLRDNORM)) {
		/* See if we can getc something. */
		if (FUNC4(tp) ||
		    (psc->pts_flags & PTS_PKT && psc->pts_pkt))
			revents |= events & (POLLIN|POLLRDNORM);
	}
	if (events & (POLLOUT|POLLWRNORM)) {
		/* See if we can rint something. */
		if (FUNC5(tp))
			revents |= events & (POLLOUT|POLLWRNORM);
	}

	/*
	 * No need to check for POLLHUP here. This device cannot be used
	 * as a callout device, which means we always have a carrier,
	 * because the master is.
	 */

	if (revents == 0) {
		/*
		 * This code might look misleading, but the naming of
		 * poll events on this side is the opposite of the slave
		 * device.
		 */
		if (events & (POLLIN|POLLRDNORM))
			FUNC0(td, &psc->pts_outpoll);
		if (events & (POLLOUT|POLLWRNORM))
			FUNC0(td, &psc->pts_inpoll);
	}

	FUNC3(tp);

	return (revents);
}