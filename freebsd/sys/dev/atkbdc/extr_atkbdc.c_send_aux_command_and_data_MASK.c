#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  aux; } ;
typedef  int /*<<< orphan*/  KBDC ;

/* Variables and functions */
 int KBD_MAXRETRY ; 
 int PSM_ACK ; 
 int PSM_RESEND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

int
FUNC4(KBDC p, int c, int d)
{
    int retry;
    int res = -1;

    for (retry = KBD_MAXRETRY; retry > 0; --retry) {
	if (!FUNC3(p, c))
	    continue;
	FUNC0(&FUNC1(p)->aux);
        res = FUNC2(FUNC1(p));
        if (res == PSM_ACK)
    	    break;
        else if (res != PSM_RESEND)
    	    return res;
    }
    if (retry <= 0)
	return res;

    for (retry = KBD_MAXRETRY, res = -1; retry > 0; --retry) {
	if (!FUNC3(p, d))
	    continue;
        res = FUNC2(FUNC1(p));
        if (res != PSM_RESEND)
    	    break;
    }
    return res;
}