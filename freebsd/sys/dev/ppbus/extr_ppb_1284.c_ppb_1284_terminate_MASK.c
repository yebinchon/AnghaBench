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
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int AUTOFEED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  PPB_COMPATIBLE ; 
 int /*<<< orphan*/  PPB_FORWARD_IDLE ; 
 int /*<<< orphan*/  PPB_TERMINATION ; 
 int /*<<< orphan*/  PPB_TIMEOUT ; 
 int SELECTIN ; 
 int STROBE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int nACK ; 
 int nBUSY ; 
 int nFAULT ; 
 int nINIT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

int
FUNC7(device_t bus)
{

#ifdef DEBUG_1284
	printf("T");
#endif

	/* do not reset error here to keep the error that
	 * may occurred before the ppb_1284_terminate() call */
	FUNC3(bus, PPB_TERMINATION);

#ifdef PERIPH_1284
	/* request remote host attention */
	ppb_wctr(bus, (nINIT | STROBE | SELECTIN) & ~(AUTOFEED));
	DELAY(1);
#endif /* PERIPH_1284 */

	/* Event 22 - set nSelectin low and nAutoFeed high */
	FUNC5(bus, (nINIT | SELECTIN) & ~(STROBE | AUTOFEED));

	/* Event 24 - waiting for peripheral, Xflag ignored */
	if (FUNC1(bus, nACK | nBUSY | nFAULT, nFAULT)) {
		FUNC2(bus, PPB_TIMEOUT, 24);
		goto error;
	}

	/* Event 25 - set nAutoFd low */
	FUNC5(bus, (nINIT | SELECTIN | AUTOFEED) & ~STROBE);

	/* Event 26 - compatible mode status is set */

	/* Event 27 - peripheral set nAck high */
	if (FUNC1(bus, nACK, nACK)) {
		FUNC2(bus, PPB_TIMEOUT, 27);
	}

	/* Event 28 - end termination, return to idle phase */
	FUNC5(bus, (nINIT | SELECTIN) & ~(STROBE | AUTOFEED));

error:
	/* return to compatible mode */
	FUNC4(bus, PPB_COMPATIBLE);
	FUNC3(bus, PPB_FORWARD_IDLE);

	return (0);
}