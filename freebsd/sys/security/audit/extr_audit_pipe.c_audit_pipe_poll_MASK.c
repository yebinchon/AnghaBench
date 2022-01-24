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
struct cdev {int dummy; } ;
struct audit_pipe {int /*<<< orphan*/  ap_selinfo; int /*<<< orphan*/  ap_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct audit_pipe*) ; 
 int /*<<< orphan*/  FUNC1 (struct audit_pipe*) ; 
 int POLLIN ; 
 int POLLRDNORM ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (void**) ; 
 int /*<<< orphan*/  FUNC4 (struct thread*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(struct cdev *dev, int events, struct thread *td)
{
	struct audit_pipe *ap;
	int error, revents;

	revents = 0;
	error = FUNC3((void **)&ap);
	if (error != 0)
		return (error);
	if (events & (POLLIN | POLLRDNORM)) {
		FUNC0(ap);
		if (FUNC2(&ap->ap_queue) != NULL)
			revents |= events & (POLLIN | POLLRDNORM);
		else
			FUNC4(td, &ap->ap_selinfo);
		FUNC1(ap);
	}
	return (revents);
}