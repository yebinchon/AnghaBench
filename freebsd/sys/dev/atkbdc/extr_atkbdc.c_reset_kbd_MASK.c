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
struct TYPE_2__ {int /*<<< orphan*/  kbd; } ;
typedef  int /*<<< orphan*/  KBDC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FALSE ; 
 int /*<<< orphan*/  KBDC_RESET_KBD ; 
 int KBD_ACK ; 
 int KBD_MAXRETRY ; 
 int KBD_MAXWAIT ; 
 int KBD_RESEND ; 
 int KBD_RESETDELAY ; 
 int KBD_RESET_DONE ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 int TRUE ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ verbose ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC7(KBDC p)
{
    int retry = KBD_MAXRETRY;
    int again = KBD_MAXWAIT;
    int c = KBD_RESEND;		/* keep the compiler happy */

    while (retry-- > 0) {
        FUNC1(p, 10);
        if (!FUNC6(p, KBDC_RESET_KBD))
	    continue;
	FUNC2(&FUNC3(p)->kbd);
        c = FUNC5(p);
	if (verbose || bootverbose)
            FUNC4(LOG_DEBUG, "kbdc: RESET_KBD return code:%04x\n", c);
        if (c == KBD_ACK)	/* keyboard has agreed to reset itself... */
    	    break;
    }
    if (retry < 0)
        return FALSE;

    while (again-- > 0) {
        /* wait awhile, well, in fact we must wait quite loooooooooooong */
        FUNC0(KBD_RESETDELAY*1000);
        c = FUNC5(p);	/* RESET_DONE/RESET_FAIL */
        if (c != -1) 	/* wait again if the controller is not ready */
    	    break;
    }
    if (verbose || bootverbose)
        FUNC4(LOG_DEBUG, "kbdc: RESET_KBD status:%04x\n", c);
    if (c != KBD_RESET_DONE)
        return FALSE;
    return TRUE;
}