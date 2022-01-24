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
struct timeval {int tv_usec; scalar_t__ tv_sec; } ;
typedef  int /*<<< orphan*/  fd_set ;
struct TYPE_2__ {int /*<<< orphan*/  mfd; } ;

/* Variables and functions */
 int CLOCAL ; 
 int CREAD ; 
 int CS7 ; 
 int FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FD_SETSIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FREAD ; 
 int HUPCL ; 
 int /*<<< orphan*/  TIOCFLUSH ; 
 int /*<<< orphan*/  TIOCMBIC ; 
 int /*<<< orphan*/  TIOCMBIS ; 
 int /*<<< orphan*/  TIOCMGET ; 
 int /*<<< orphan*/  TIOCMSET ; 
 int TIOCM_DSR ; 
 int TIOCM_DTR ; 
 int TIOCM_RTS ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 TYPE_1__ rodent ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 
 int /*<<< orphan*/  FUNC5 (int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static int
FUNC7(void)
{
    struct timeval timeout;
    fd_set fds;
    int i;

    /*
     * This is the procedure described in rev 1.0 of PnP COM device spec.
     * Unfortunately, some devices which comform to earlier revisions of
     * the spec gets confused and do not return the ID string...
     */
    FUNC2("PnP COM device rev 1.0 probe...");

    /* port initialization (2.1.2) */
    FUNC3(rodent.mfd, TIOCMGET, &i);
    i |= TIOCM_DTR;		/* DTR = 1 */
    i &= ~TIOCM_RTS;		/* RTS = 0 */
    FUNC3(rodent.mfd, TIOCMSET, &i);
    FUNC6(240000);

    /*
     * The PnP COM device spec. dictates that the mouse must set DSR
     * in response to DTR (by hardware or by software) and that if DSR is
     * not asserted, the host computer should think that there is no device
     * at this serial port.  But some mice just don't do that...
     */
    FUNC3(rodent.mfd, TIOCMGET, &i);
    FUNC2("modem status 0%o", i);
    if ((i & TIOCM_DSR) == 0)
	return (FALSE);

    /* port setup, 1st phase (2.1.3) */
    FUNC5(1200, 1200, (CS7 | CREAD | CLOCAL | HUPCL));
    i = TIOCM_DTR | TIOCM_RTS;	/* DTR = 0, RTS = 0 */
    FUNC3(rodent.mfd, TIOCMBIC, &i);
    FUNC6(240000);
    i = TIOCM_DTR;		/* DTR = 1, RTS = 0 */
    FUNC3(rodent.mfd, TIOCMBIS, &i);
    FUNC6(240000);

    /* wait for response, 1st phase (2.1.4) */
    i = FREAD;
    FUNC3(rodent.mfd, TIOCFLUSH, &i);
    i = TIOCM_RTS;		/* DTR = 1, RTS = 1 */
    FUNC3(rodent.mfd, TIOCMBIS, &i);

    /* try to read something */
    FUNC1(&fds);
    FUNC0(rodent.mfd, &fds);
    timeout.tv_sec = 0;
    timeout.tv_usec = 240000;
    if (FUNC4(FD_SETSIZE, &fds, NULL, NULL, &timeout) > 0) {
	FUNC2("pnpwakeup1(): valid response in first phase.");
	return (TRUE);
    }

    /* port setup, 2nd phase (2.1.5) */
    i = TIOCM_DTR | TIOCM_RTS;	/* DTR = 0, RTS = 0 */
    FUNC3(rodent.mfd, TIOCMBIC, &i);
    FUNC6(240000);

    /* wait for respose, 2nd phase (2.1.6) */
    i = FREAD;
    FUNC3(rodent.mfd, TIOCFLUSH, &i);
    i = TIOCM_DTR | TIOCM_RTS;	/* DTR = 1, RTS = 1 */
    FUNC3(rodent.mfd, TIOCMBIS, &i);

    /* try to read something */
    FUNC1(&fds);
    FUNC0(rodent.mfd, &fds);
    timeout.tv_sec = 0;
    timeout.tv_usec = 240000;
    if (FUNC4(FD_SETSIZE, &fds, NULL, NULL, &timeout) > 0) {
	FUNC2("pnpwakeup1(): valid response in second phase.");
	return (TRUE);
    }

    return (FALSE);
}