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
 int /*<<< orphan*/  TIOCMBIS ; 
 int /*<<< orphan*/  TIOCMGET ; 
 int /*<<< orphan*/  TIOCMSET ; 
 int TIOCM_DTR ; 
 int TIOCM_RTS ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
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
     * This is a simplified procedure; it simply toggles RTS.
     */
    FUNC2("alternate probe...");

    FUNC3(rodent.mfd, TIOCMGET, &i);
    i |= TIOCM_DTR;		/* DTR = 1 */
    i &= ~TIOCM_RTS;		/* RTS = 0 */
    FUNC3(rodent.mfd, TIOCMSET, &i);
    FUNC6(240000);

    FUNC5(1200, 1200, (CS7 | CREAD | CLOCAL | HUPCL));

    /* wait for respose */
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
	FUNC2("pnpwakeup2(): valid response.");
	return (TRUE);
    }

    return (FALSE);
}