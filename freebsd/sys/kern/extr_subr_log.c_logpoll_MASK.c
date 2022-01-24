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
struct cdev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  sc_selp; } ;

/* Variables and functions */
 int POLLIN ; 
 int POLLRDNORM ; 
 TYPE_1__ logsoftc ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  msgbuf_lock ; 
 int /*<<< orphan*/  msgbufp ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct thread*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static	int
FUNC4(struct cdev *dev, int events, struct thread *td)
{
	int revents = 0;

	if (events & (POLLIN | POLLRDNORM)) {
		FUNC1(&msgbuf_lock);
		if (FUNC0(msgbufp) > 0)
			revents |= events & (POLLIN | POLLRDNORM);
		else
			FUNC3(td, &logsoftc.sc_selp);
		FUNC2(&msgbuf_lock);
	}
	return (revents);
}