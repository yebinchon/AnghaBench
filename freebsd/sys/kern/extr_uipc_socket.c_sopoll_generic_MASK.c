#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct TYPE_3__ {int sb_state; int /*<<< orphan*/  sb_flags; } ;
struct socket {TYPE_1__ so_snd; TYPE_1__ so_rcv; int /*<<< orphan*/  so_wrsel; int /*<<< orphan*/  so_rdsel; scalar_t__ so_oobmark; scalar_t__ so_error; int /*<<< orphan*/  sol_comp; } ;

/* Variables and functions */
 int POLLHUP ; 
 int POLLIN ; 
 int POLLINIGNEOF ; 
 int POLLOUT ; 
 int POLLPRI ; 
 int POLLRDBAND ; 
 int POLLRDNORM ; 
 int POLLWRNORM ; 
 int SBS_CANTRCVMORE ; 
 int SBS_CANTSENDMORE ; 
 int SBS_RCVATMARK ; 
 int /*<<< orphan*/  SB_SEL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct socket*) ; 
 int /*<<< orphan*/  FUNC3 (struct socket*) ; 
 scalar_t__ FUNC4 (struct socket*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct thread*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (struct socket*) ; 
 scalar_t__ FUNC8 (struct socket*) ; 

int
FUNC9(struct socket *so, int events, struct ucred *active_cred,
    struct thread *td)
{
	int revents;

	FUNC2(so);
	if (FUNC4(so)) {
		if (!(events & (POLLIN | POLLRDNORM)))
			revents = 0;
		else if (!FUNC5(&so->sol_comp))
			revents = events & (POLLIN | POLLRDNORM);
		else if ((events & POLLINIGNEOF) == 0 && so->so_error)
			revents = (events & (POLLIN | POLLRDNORM)) | POLLHUP;
		else {
			FUNC6(td, &so->so_rdsel);
			revents = 0;
		}
	} else {
		revents = 0;
		FUNC0(&so->so_snd);
		FUNC0(&so->so_rcv);
		if (events & (POLLIN | POLLRDNORM))
			if (FUNC7(so))
				revents |= events & (POLLIN | POLLRDNORM);
		if (events & (POLLOUT | POLLWRNORM))
			if (FUNC8(so))
				revents |= events & (POLLOUT | POLLWRNORM);
		if (events & (POLLPRI | POLLRDBAND))
			if (so->so_oobmark ||
			    (so->so_rcv.sb_state & SBS_RCVATMARK))
				revents |= events & (POLLPRI | POLLRDBAND);
		if ((events & POLLINIGNEOF) == 0) {
			if (so->so_rcv.sb_state & SBS_CANTRCVMORE) {
				revents |= events & (POLLIN | POLLRDNORM);
				if (so->so_snd.sb_state & SBS_CANTSENDMORE)
					revents |= POLLHUP;
			}
		}
		if (revents == 0) {
			if (events &
			    (POLLIN | POLLPRI | POLLRDNORM | POLLRDBAND)) {
				FUNC6(td, &so->so_rdsel);
				so->so_rcv.sb_flags |= SB_SEL;
			}
			if (events & (POLLOUT | POLLWRNORM)) {
				FUNC6(td, &so->so_wrsel);
				so->so_snd.sb_flags |= SB_SEL;
			}
		}
		FUNC1(&so->so_rcv);
		FUNC1(&so->so_snd);
	}
	FUNC3(so);
	return (revents);
}