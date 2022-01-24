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
struct ipmi_softc {int dummy; } ;
struct ipmi_device {scalar_t__ ipmi_requests; int /*<<< orphan*/  ipmi_select; int /*<<< orphan*/  ipmi_completed_requests; } ;
struct cdev {struct ipmi_softc* si_drv1; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ipmi_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct ipmi_softc*) ; 
 int POLLERR ; 
 int POLLIN ; 
 int POLLRDNORM ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (void**) ; 
 int /*<<< orphan*/  FUNC4 (struct thread*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(struct cdev *cdev, int poll_events, struct thread *td)
{
	struct ipmi_device *dev;
	struct ipmi_softc *sc;
	int revents = 0;

	if (FUNC3((void **)&dev))
		return (0);

	sc = cdev->si_drv1;
	FUNC0(sc);
	if (poll_events & (POLLIN | POLLRDNORM)) {
		if (!FUNC2(&dev->ipmi_completed_requests))
		    revents |= poll_events & (POLLIN | POLLRDNORM);
		if (dev->ipmi_requests == 0)
		    revents |= POLLERR;
	}

	if (revents == 0) {
		if (poll_events & (POLLIN | POLLRDNORM))
			FUNC4(td, &dev->ipmi_select);
	}
	FUNC1(sc);

	return (revents);
}