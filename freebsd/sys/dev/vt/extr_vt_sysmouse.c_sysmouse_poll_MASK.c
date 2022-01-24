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

/* Variables and functions */
 int POLLIN ; 
 int POLLRDNORM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct thread*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sysmouse_bufpoll ; 
 scalar_t__ sysmouse_length ; 
 int /*<<< orphan*/  sysmouse_lock ; 

__attribute__((used)) static int
FUNC3(struct cdev *dev, int events, struct thread *td)
{
	int revents = 0;

	FUNC0(&sysmouse_lock);
	if (events & (POLLIN|POLLRDNORM)) {
		if (sysmouse_length > 0)
			revents = events & (POLLIN|POLLRDNORM);
		else
			FUNC2(td, &sysmouse_bufpoll);
	}
	FUNC1(&sysmouse_lock);

	return (revents);
}