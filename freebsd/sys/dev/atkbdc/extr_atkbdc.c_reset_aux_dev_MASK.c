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
struct TYPE_2__ {int /*<<< orphan*/  aux; } ;
typedef  int /*<<< orphan*/  KBDC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FALSE ; 
 int KBD_MAXRETRY ; 
 int KBD_MAXWAIT ; 
 int KBD_RESETDELAY ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  PSMC_RESET_DEV ; 
 int PSM_ACK ; 
 int PSM_RESEND ; 
 int PSM_RESET_DONE ; 
 int TRUE ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ verbose ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC8(KBDC p)
{
    int retry = KBD_MAXRETRY;
    int again = KBD_MAXWAIT;
    int c = PSM_RESEND;		/* keep the compiler happy */

    while (retry-- > 0) {
        FUNC1(p, 10);
        if (!FUNC7(p, PSMC_RESET_DEV))
	    continue;
	FUNC2(&FUNC3(p)->aux);
	/* NOTE: Compaq Armada laptops require extra delay here. XXX */
	for (again = KBD_MAXWAIT; again > 0; --again) {
            FUNC0(KBD_RESETDELAY*1000);
            c = FUNC6(p);
	    if (c != -1)
		break;
	}
        if (verbose || bootverbose)
            FUNC4(LOG_DEBUG, "kbdc: RESET_AUX return code:%04x\n", c);
        if (c == PSM_ACK)	/* aux dev is about to reset... */
    	    break;
    }
    if (retry < 0)
        return FALSE;

    for (again = KBD_MAXWAIT; again > 0; --again) {
        /* wait awhile, well, quite looooooooooooong */
        FUNC0(KBD_RESETDELAY*1000);
        c = FUNC6(p);	/* RESET_DONE/RESET_FAIL */
        if (c != -1) 	/* wait again if the controller is not ready */
    	    break;
    }
    if (verbose || bootverbose)
        FUNC4(LOG_DEBUG, "kbdc: RESET_AUX status:%04x\n", c);
    if (c != PSM_RESET_DONE)	/* reset status */
        return FALSE;

    c = FUNC5(p);	/* device ID */
    if (verbose || bootverbose)
        FUNC4(LOG_DEBUG, "kbdc: RESET_AUX ID:%04x\n", c);
    /* NOTE: we could check the device ID now, but leave it later... */
    return TRUE;
}