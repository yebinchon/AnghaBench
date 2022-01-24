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
struct uio {scalar_t__ uio_resid; } ;
struct tty {int t_flags; int /*<<< orphan*/  t_outq; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 
 int TF_STOPPED ; 
 int TTY_STACKBUF ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  getc_capture ; 
 int /*<<< orphan*/  getc_inject ; 
 int /*<<< orphan*/  FUNC2 (struct tty*) ; 
 int /*<<< orphan*/  FUNC3 (struct tty*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tty_nout ; 
 int /*<<< orphan*/  FUNC4 (struct tty*) ; 
 size_t FUNC5 (struct tty*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct tty*) ; 
 scalar_t__ FUNC7 (struct tty*,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *,struct tty*,struct uio*) ; 
 int FUNC9 (char*,size_t,struct uio*) ; 

int
FUNC10(struct tty *tp, struct uio *uio)
{
	int error = 0;
	ssize_t obytes = uio->uio_resid;
	size_t len;
	char buf[TTY_STACKBUF];

	FUNC3(tp, MA_OWNED);

	if (tp->t_flags & TF_STOPPED)
		return (0);

	/*
	 * When a TTY hook is attached, we cannot perform unbuffered
	 * copying to userspace. Just call ttydisc_getc() and
	 * temporarily store data in a shadow buffer.
	 */
	if (FUNC7(tp, getc_capture) ||
	    FUNC7(tp, getc_inject)) {
		while (uio->uio_resid > 0) {
			/* Read to shadow buffer. */
			len = FUNC5(tp, buf,
			    FUNC0(uio->uio_resid, sizeof buf));
			if (len == 0)
				break;

			/* Copy to userspace. */
			FUNC4(tp);
			error = FUNC9(buf, len, uio);
			FUNC2(tp);

			if (error != 0)
				break;
		}
	} else {
		error = FUNC8(&tp->t_outq, tp, uio);

		FUNC6(tp);
		FUNC1(&tty_nout, obytes - uio->uio_resid);
	}

	return (error);
}