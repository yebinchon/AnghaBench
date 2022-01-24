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
struct TYPE_2__ {int c_cflag; int c_ispeed; int c_ospeed; } ;
struct tty {int t_inlow; int t_outlow; int /*<<< orphan*/  t_outq; TYPE_1__ t_termios; int /*<<< orphan*/  t_inq; } ;

/* Variables and functions */
 int CREAD ; 
 size_t FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TTYBUF_MAX ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct tty*,size_t) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct tty*,size_t) ; 

__attribute__((used)) static int
FUNC5(struct tty *tp)
{
	size_t bs = 0;
	int error;

	/* Provide an input buffer for 2 seconds of data. */
	if (tp->t_termios.c_cflag & CREAD)
		bs = FUNC0(tp->t_termios.c_ispeed / 5, TTYBUF_MAX);
	error = FUNC2(&tp->t_inq, tp, bs);
	if (error != 0)
		return (error);

	/* Set low watermark at 10% (when 90% is available). */
	tp->t_inlow = (FUNC1(&tp->t_inq) * 9) / 10;

	/* Provide an output buffer for 2 seconds of data. */
	bs = FUNC0(tp->t_termios.c_ospeed / 5, TTYBUF_MAX);
	error = FUNC4(&tp->t_outq, tp, bs);
	if (error != 0)
		return (error);

	/* Set low watermark at 10% (when 90% is available). */
	tp->t_outlow = (FUNC3(&tp->t_outq) * 9) / 10;

	return (0);
}