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
struct thread {int dummy; } ;
struct seq_softc {int unit; int playing; int out_water; int /*<<< orphan*/  seq_lock; int /*<<< orphan*/  in_sel; int /*<<< orphan*/  in_q; int /*<<< orphan*/  out_sel; int /*<<< orphan*/  out_q; int /*<<< orphan*/  out_cv; int /*<<< orphan*/  state_cv; } ;
struct cdev {struct seq_softc* si_drv1; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int POLLIN ; 
 int POLLOUT ; 
 int POLLRDNORM ; 
 int POLLWRNORM ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct thread*,int /*<<< orphan*/ *) ; 

int
FUNC8(struct cdev *i_dev, int events, struct thread *td)
{
	int ret, lim;
	struct seq_softc *scp = i_dev->si_drv1;

	FUNC2(3, FUNC6("seq_poll: unit %d.\n", scp->unit));
	FUNC2(1, FUNC6("seq_poll: unit %d.\n", scp->unit));

	FUNC4(&scp->seq_lock);

	ret = 0;

	/* Look up the apropriate queue and select it. */
	if ((events & (POLLOUT | POLLWRNORM)) != 0) {
		/* Start playing. */
		scp->playing = 1;
		FUNC3(&scp->state_cv);
		FUNC3(&scp->out_cv);

		lim = scp->out_water;

		if (FUNC0(scp->out_q) < lim)
			/* No enough space, record select. */
			FUNC7(td, &scp->out_sel);
		else
			/* We can write now. */
			ret |= events & (POLLOUT | POLLWRNORM);
	}
	if ((events & (POLLIN | POLLRDNORM)) != 0) {
		/* TODO: Start recording. */

		/* Find out the boundary. */
		lim = 1;
		if (FUNC1(scp->in_q) < lim)
			/* No data ready, record select. */
			FUNC7(td, &scp->in_sel);
		else
			/* We can read now. */
			ret |= events & (POLLIN | POLLRDNORM);
	}
	FUNC5(&scp->seq_lock);

	return (ret);
}