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
struct fw_xferq {int /*<<< orphan*/  rsel; int /*<<< orphan*/  q; } ;
struct fw_drv1 {struct fw_xferq* ir; } ;
struct cdev {scalar_t__ si_drv1; } ;
typedef  int /*<<< orphan*/  fw_proc ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct cdev*) ; 
 int POLLIN ; 
 int POLLOUT ; 
 int POLLRDNORM ; 
 int POLLWRNORM ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct cdev*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int
FUNC4(struct cdev *dev, int events, fw_proc *td)
{
	struct fw_xferq *ir;
	int revents;
	int tmp;

	if (FUNC0(dev))
		return FUNC2(dev, events, td);

	ir = ((struct fw_drv1 *)dev->si_drv1)->ir;
	revents = 0;
	tmp = POLLIN | POLLRDNORM;
	if (events & tmp) {
		if (FUNC1(&ir->q) != NULL)
			revents |= tmp;
		else
			FUNC3(td, &ir->rsel);
	}
	tmp = POLLOUT | POLLWRNORM;
	if (events & tmp) {
		/* XXX should be fixed */
		revents |= tmp;
	}

	return revents;
}