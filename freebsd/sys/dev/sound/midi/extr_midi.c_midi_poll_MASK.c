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
struct snd_midi {scalar_t__ hiwat; int /*<<< orphan*/  qlock; int /*<<< orphan*/  lock; int /*<<< orphan*/  wsel; int /*<<< orphan*/  rsel; int /*<<< orphan*/  outq; int /*<<< orphan*/  inq; } ;
struct cdev {struct snd_midi* si_drv1; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int POLLIN ; 
 int POLLOUT ; 
 int POLLRDNORM ; 
 int POLLWRNORM ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct thread*,int /*<<< orphan*/ *) ; 

int
FUNC5(struct cdev *i_dev, int events, struct thread *td)
{
	struct snd_midi *m = i_dev->si_drv1;
	int revents;

	if (m == NULL)
		return 0;

	revents = 0;

	FUNC2(&m->lock);
	FUNC2(&m->qlock);

	if (events & (POLLIN | POLLRDNORM))
		if (!FUNC1(m->inq))
			events |= events & (POLLIN | POLLRDNORM);

	if (events & (POLLOUT | POLLWRNORM))
		if (FUNC0(m->outq) < m->hiwat)
			events |= events & (POLLOUT | POLLWRNORM);

	if (revents == 0) {
		if (events & (POLLIN | POLLRDNORM))
			FUNC4(td, &m->rsel);

		if (events & (POLLOUT | POLLWRNORM))
			FUNC4(td, &m->wsel);
	}
	FUNC3(&m->lock);
	FUNC3(&m->qlock);

	return (revents);
}