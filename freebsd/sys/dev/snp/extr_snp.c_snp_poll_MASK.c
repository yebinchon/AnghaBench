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
struct tty {int dummy; } ;
struct thread {int dummy; } ;
struct snp_softc {int /*<<< orphan*/  snp_outpoll; int /*<<< orphan*/  snp_outq; struct tty* snp_tty; } ;
struct cdev {int dummy; } ;

/* Variables and functions */
 int POLLHUP ; 
 int POLLIN ; 
 int POLLOUT ; 
 int POLLRDNORM ; 
 int POLLWRNORM ; 
 scalar_t__ FUNC0 (void**) ; 
 int /*<<< orphan*/  FUNC1 (struct thread*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct tty*) ; 
 int /*<<< orphan*/  FUNC3 (struct tty*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(struct cdev *dev, int events, struct thread *td)
{
	struct snp_softc *ss;
	struct tty *tp;
	int revents;

	if (FUNC0((void **)&ss) != 0)
		return (events &
		    (POLLHUP|POLLIN|POLLRDNORM|POLLOUT|POLLWRNORM));

	revents = 0;

	if (events & (POLLIN | POLLRDNORM)) {
		tp = ss->snp_tty;
		if (tp != NULL) {
			FUNC2(tp);
			if (FUNC4(&ss->snp_outq) > 0)
				revents |= events & (POLLIN | POLLRDNORM);
			FUNC3(tp);
		}
	}

	if (revents == 0)
		FUNC1(td, &ss->snp_outpoll);

	return (revents);
}