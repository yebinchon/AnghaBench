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
struct tty {int t_drainwait; int /*<<< orphan*/  t_outq; int /*<<< orphan*/  t_outwait; } ;
typedef  scalar_t__ sbintime_t ;

/* Variables and functions */
 int EWOULDBLOCK ; 
 int SBT_1S ; 
 int /*<<< orphan*/  getc_inject ; 
 scalar_t__ FUNC0 () ; 
 int hz ; 
 int FUNC1 (struct tty*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct tty*) ; 
 int /*<<< orphan*/  FUNC3 (struct tty*) ; 
 scalar_t__ FUNC4 (struct tty*,int /*<<< orphan*/ ) ; 
 size_t FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(struct tty *tp, int leaving)
{
	sbintime_t timeout_at;
	size_t bytes;
	int error;

	if (FUNC4(tp, getc_inject))
		/* buffer is inaccessible */
		return (0);

	/*
	 * For close(), use the recent historic timeout of "1 second without
	 * making progress".  For tcdrain(), use t_drainwait as the timeout,
	 * with zero meaning "no timeout" which gives POSIX behavior.
	 */
	if (leaving)
		timeout_at = FUNC0() + SBT_1S;
	else if (tp->t_drainwait != 0)
		timeout_at = FUNC0() + SBT_1S * tp->t_drainwait;
	else
		timeout_at = 0;

	/*
	 * Poll the output buffer and the hardware for completion, at 10 Hz.
	 * Polling is required for devices which are not able to signal an
	 * interrupt when the transmitter becomes idle (most USB serial devs).
	 * The unusual structure of this loop ensures we check for busy one more
	 * time after tty_timedwait() returns EWOULDBLOCK, so that success has
	 * higher priority than timeout if the IO completed in the last 100mS.
	 */
	error = 0;
	bytes = FUNC5(&tp->t_outq);
	for (;;) {
		if (FUNC5(&tp->t_outq) == 0 && !FUNC2(tp))
			return (0);
		if (error != 0)
			return (error);
		FUNC3(tp);
		error = FUNC1(tp, &tp->t_outwait, hz / 10);
		if (error != 0 && error != EWOULDBLOCK)
			return (error);
		else if (timeout_at == 0 || FUNC0() < timeout_at)
			error = 0;
		else if (leaving && FUNC5(&tp->t_outq) < bytes) {
			/* In close, making progress, grant an extra second. */
			error = 0;
			timeout_at += SBT_1S;
			bytes = FUNC5(&tp->t_outq);
		}
	}
}