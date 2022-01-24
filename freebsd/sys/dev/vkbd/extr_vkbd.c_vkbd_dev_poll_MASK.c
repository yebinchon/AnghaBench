#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ cc; int /*<<< orphan*/  q; } ;
struct TYPE_5__ {int ks_flags; int /*<<< orphan*/  ks_wsel; int /*<<< orphan*/  ks_rsel; TYPE_2__ ks_inq; } ;
typedef  TYPE_1__ vkbd_state_t ;
typedef  TYPE_2__ vkbd_queue_t ;
struct thread {int dummy; } ;
struct cdev {scalar_t__ si_drv1; } ;

/* Variables and functions */
 int ENXIO ; 
 int POLLIN ; 
 int POLLOUT ; 
 int POLLRDNORM ; 
 int POLLWRNORM ; 
 int STATUS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct thread*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(struct cdev *dev, int events, struct thread *td)
{
	vkbd_state_t	*state = (vkbd_state_t *) dev->si_drv1;
	vkbd_queue_t	*q = NULL;
	int		 revents = 0;

	if (state == NULL)
		return (ENXIO);

	FUNC0(state);

	q = &state->ks_inq;

	if (events & (POLLIN | POLLRDNORM)) {
		if (state->ks_flags & STATUS)
			revents |= events & (POLLIN | POLLRDNORM);
		else
			FUNC3(td, &state->ks_rsel);
	}

	if (events & (POLLOUT | POLLWRNORM)) {
		if (q->cc < FUNC2(q->q))
			revents |= events & (POLLOUT | POLLWRNORM);
		else
			FUNC3(td, &state->ks_wsel);
	}

	FUNC1(state);

	return (revents);
}