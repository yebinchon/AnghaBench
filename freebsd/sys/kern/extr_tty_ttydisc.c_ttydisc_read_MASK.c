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
struct uio {scalar_t__ uio_resid; } ;
struct TYPE_2__ {scalar_t__* c_cc; } ;
struct tty {scalar_t__ t_inlow; int /*<<< orphan*/  t_inq; TYPE_1__ t_termios; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ICANON ; 
 int /*<<< orphan*/  MA_OWNED ; 
 size_t VMIN ; 
 size_t VTIME ; 
 int /*<<< orphan*/  l ; 
 int /*<<< orphan*/  FUNC1 (struct tty*) ; 
 int /*<<< orphan*/  FUNC2 (struct tty*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct tty*,struct uio*,int) ; 
 int FUNC4 (struct tty*,struct uio*,int) ; 
 int FUNC5 (struct tty*,struct uio*,int) ; 
 int FUNC6 (struct tty*,struct uio*,int,scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 

int
FUNC9(struct tty *tp, struct uio *uio, int ioflag)
{
	int error;

	FUNC2(tp, MA_OWNED);

	if (uio->uio_resid == 0)
		return (0);

	if (FUNC0(l, ICANON))
		error = FUNC3(tp, uio, ioflag);
	else if (tp->t_termios.c_cc[VTIME] == 0)
		error = FUNC5(tp, uio, ioflag);
	else if (tp->t_termios.c_cc[VMIN] == 0)
		error = FUNC6(tp, uio, ioflag,
		    uio->uio_resid);
	else
		error = FUNC4(tp, uio, ioflag);

	if (FUNC8(&tp->t_inq) >= tp->t_inlow ||
	    FUNC7(&tp->t_inq) == 0) {
		/* Unset the input watermark when we've got enough space. */
		FUNC1(tp);
	}

	return (error);
}