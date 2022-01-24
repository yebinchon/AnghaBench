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
struct atkbdc_softc {int retry; int /*<<< orphan*/  aux; int /*<<< orphan*/  kbd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KBDC_DELAYTIME ; 
 int /*<<< orphan*/  KBDD_DELAYTIME ; 
 int KBDS_ANY_BUFFER_FULL ; 
 int KBDS_AUX_BUFFER_FULL ; 
 int KBDS_BUFFER_FULL ; 
 int KBDS_KBD_BUFFER_FULL ; 
 int KBD_ACK ; 
 int KBD_RESEND ; 
 int KBD_RESET_FAIL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (struct atkbdc_softc*) ; 
 int FUNC3 (struct atkbdc_softc*) ; 

__attribute__((used)) static int
FUNC4(struct atkbdc_softc *kbdc)
{
    int retry;
    int f;
    int b;

    /* CPU will stay inside the loop for 200msec at most */
    retry = kbdc->retry * 2;

    while (retry-- > 0) {
        if ((f = FUNC3(kbdc)) & KBDS_ANY_BUFFER_FULL) {
	    FUNC0(KBDD_DELAYTIME);
            b = FUNC2(kbdc);
	    if ((f & KBDS_BUFFER_FULL) == KBDS_KBD_BUFFER_FULL) {
		if ((b == KBD_ACK) || (b == KBD_RESEND) 
		    || (b == KBD_RESET_FAIL))
		    return b;
		FUNC1(&kbdc->kbd, b);
	    } else if ((f & KBDS_BUFFER_FULL) == KBDS_AUX_BUFFER_FULL) {
		FUNC1(&kbdc->aux, b);
	    }
	}
        FUNC0(KBDC_DELAYTIME);
    }
    return -1;
}