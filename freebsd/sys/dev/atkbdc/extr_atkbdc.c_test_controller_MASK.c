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
 int /*<<< orphan*/  KBDC_DIAGNOSE ; 
 int KBD_DIAG_DONE ; 
 int KBD_DIAG_FAIL ; 
 int KBD_MAXRETRY ; 
 int KBD_MAXWAIT ; 
 int KBD_RESETDELAY ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ verbose ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC7(KBDC p)
{
    int retry = KBD_MAXRETRY;
    int again = KBD_MAXWAIT;
    int c = KBD_DIAG_FAIL;

    while (retry-- > 0) {
        FUNC1(p, 10);
        if (FUNC6(p, KBDC_DIAGNOSE))
    	    break;
    }
    if (retry < 0)
        return FALSE;

    FUNC2(&FUNC3(p)->kbd);
    while (again-- > 0) {
        /* wait awhile */
        FUNC0(KBD_RESETDELAY*1000);
        c = FUNC5(p);	/* DIAG_DONE/DIAG_FAIL */
        if (c != -1) 	/* wait again if the controller is not ready */
    	    break;
    }
    if (verbose || bootverbose)
        FUNC4(LOG_DEBUG, "kbdc: DIAGNOSE status:%04x\n", c);
    return (c == KBD_DIAG_DONE);
}