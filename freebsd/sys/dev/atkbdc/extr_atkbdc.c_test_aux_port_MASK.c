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
 int FALSE ; 
 int /*<<< orphan*/  KBDC_TEST_AUX_PORT ; 
 int KBD_MAXRETRY ; 
 int KBD_MAXWAIT ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ verbose ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC6(KBDC p)
{
    int retry = KBD_MAXRETRY;
    int again = KBD_MAXWAIT;
    int c = -1;

    while (retry-- > 0) {
        FUNC0(p, 10);
        if (FUNC5(p, KBDC_TEST_AUX_PORT))
    	    break;
    }
    if (retry < 0)
        return FALSE;

    FUNC1(&FUNC2(p)->kbd);
    while (again-- > 0) {
        c = FUNC4(p);
        if (c != -1) 	/* try again if the controller is not ready */
    	    break;
    }
    if (verbose || bootverbose)
        FUNC3(LOG_DEBUG, "kbdc: TEST_AUX_PORT status:%04x\n", c);
    return c;
}