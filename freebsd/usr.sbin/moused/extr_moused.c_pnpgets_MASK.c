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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FD_SETSIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TIOCMBIS ; 
 int TIOCM_DTR ; 
 int TIOCM_RTS ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 (int /*<<< orphan*/ ,char*,int) ; 
 TYPE_1__ rodent ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

__attribute__((used)) static int
FUNC11(char *buf)
{
    struct timeval timeout;
    fd_set fds;
    int begin;
    int i;
    char c;

    if (!FUNC6() && !FUNC7()) {
	/*
	 * According to PnP spec, we should set DTR = 1 and RTS = 0 while
	 * in idle state.  But, `moused' shall set DTR = RTS = 1 and proceed,
	 * assuming there is something at the port even if it didn't
	 * respond to the PnP enumeration procedure.
	 */
	i = TIOCM_DTR | TIOCM_RTS;		/* DTR = 1, RTS = 1 */
	FUNC5(rodent.mfd, TIOCMBIS, &i);
	return (0);
    }

    /* collect PnP COM device ID (2.1.7) */
    begin = -1;
    i = 0;
    FUNC10(240000);	/* the mouse must send `Begin ID' within 200msec */
    while (FUNC8(rodent.mfd, &c, 1) == 1) {
	/* we may see "M", or "M3..." before `Begin ID' */
	buf[i++] = c;
	if ((c == 0x08) || (c == 0x28)) {	/* Begin ID */
	    FUNC4("begin-id %02x", c);
	    begin = i - 1;
	    break;
	}
	FUNC4("%c %02x", c, c);
	if (i >= 256)
	    break;
    }
    if (begin < 0) {
	/* we haven't seen `Begin ID' in time... */
	goto connect_idle;
    }

    ++c;			/* make it `End ID' */
    for (;;) {
	FUNC1(&fds);
	FUNC0(rodent.mfd, &fds);
	timeout.tv_sec = 0;
	timeout.tv_usec = 240000;
	if (FUNC9(FD_SETSIZE, &fds, NULL, NULL, &timeout) <= 0)
	    break;

	FUNC8(rodent.mfd, &buf[i], 1);
	if (buf[i++] == c)	/* End ID */
	    break;
	if (i >= 256)
	    break;
    }
    if (begin > 0) {
	i -= begin;
	FUNC3(&buf[begin], &buf[0], i);
    }
    /* string may not be human readable... */
    FUNC4("len:%d, '%-*.*s'", i, i, i, buf);

    if (buf[i - 1] == c)
	return (i);		/* a valid PnP string */

    /*
     * According to PnP spec, we should set DTR = 1 and RTS = 0 while
     * in idle state.  But, `moused' shall leave the modem control lines
     * as they are. See above.
     */
connect_idle:

    /* we may still have something in the buffer */
    return (FUNC2(i, 0));
}