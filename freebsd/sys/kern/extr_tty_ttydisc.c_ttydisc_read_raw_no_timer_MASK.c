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
struct uio {size_t uio_resid; } ;
struct TYPE_2__ {size_t* c_cc; } ;
struct tty {int t_flags; int /*<<< orphan*/  t_inwait; int /*<<< orphan*/  t_inq; TYPE_1__ t_termios; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int EWOULDBLOCK ; 
 int IO_NDELAY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  SIGTTIN ; 
 int TF_ZOMBIE ; 
 size_t VMIN ; 
 size_t VTIME ; 
 int /*<<< orphan*/  curthread ; 
 int FUNC1 (struct tty*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct tty*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct tty*,struct uio*,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct tty *tp, struct uio *uio, int ioflag)
{
	size_t vmin = tp->t_termios.c_cc[VMIN];
	ssize_t oresid = uio->uio_resid;
	int error;

	FUNC0(tp->t_termios.c_cc[VTIME] == 0);

	/*
	 * This routine implements the easy cases of read()s while in
	 * non-canonical mode, namely case B and D, where we don't have
	 * any timers at all.
	 */

	for (;;) {
		error = FUNC2(tp, curthread, SIGTTIN);
		if (error)
			return (error);

		error = FUNC3(&tp->t_inq, tp, uio,
		    uio->uio_resid, 0);
		if (error)
			return (error);
		if (uio->uio_resid == 0 || (oresid - uio->uio_resid) >= vmin)
			return (0);

		/* We have to wait for more. */
		if (tp->t_flags & TF_ZOMBIE)
			return (0);
		else if (ioflag & IO_NDELAY)
			return (EWOULDBLOCK);

		error = FUNC1(tp, &tp->t_inwait);
		if (error)
			return (error);
	}
}