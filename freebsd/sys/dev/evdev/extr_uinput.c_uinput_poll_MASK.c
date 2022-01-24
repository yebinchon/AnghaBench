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
struct uinput_cdev_state {int ucs_selected; int /*<<< orphan*/  ucs_selp; } ;
struct thread {int /*<<< orphan*/  td_tid; } ;
struct cdev {int dummy; } ;

/* Variables and functions */
 int POLLIN ; 
 int POLLNVAL ; 
 int POLLOUT ; 
 int POLLRDNORM ; 
 int POLLWRNORM ; 
 int /*<<< orphan*/  FUNC0 (struct uinput_cdev_state*) ; 
 int /*<<< orphan*/  FUNC1 (struct uinput_cdev_state*) ; 
 int /*<<< orphan*/  FUNC2 (struct uinput_cdev_state*) ; 
 int /*<<< orphan*/  FUNC3 (struct uinput_cdev_state*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (void**) ; 
 int /*<<< orphan*/  FUNC5 (struct thread*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(struct cdev *dev, int events, struct thread *td)
{
	struct uinput_cdev_state *state;
	int revents = 0;

	if (FUNC4((void **)&state) != 0)
		return (POLLNVAL);

	FUNC3(state, "poll by thread %d", td->td_tid);

	/* Always allow write */
	if (events & (POLLOUT | POLLWRNORM))
		revents |= (events & (POLLOUT | POLLWRNORM));

	if (events & (POLLIN | POLLRDNORM)) {
		FUNC1(state);
		if (!FUNC0(state))
			revents = events & (POLLIN | POLLRDNORM);
		else {
			state->ucs_selected = true;
			FUNC5(td, &state->ucs_selp);
		}
		FUNC2(state);
	}

	return (revents);
}