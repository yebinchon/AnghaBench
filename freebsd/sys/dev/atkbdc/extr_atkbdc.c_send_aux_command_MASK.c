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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

int
FUNC4(KBDC p, int c)
{
    int retry = KBD_MAXRETRY;
    int res = -1;

    while (retry-- > 0) {
	if (!FUNC3(p, c))
	    continue;
	/*
	 * FIXME: XXX
	 * The aux device may have already sent one or two bytes of 
	 * status data, when a command is received. It will immediately 
	 * stop data transmission, thus, leaving an incomplete data 
	 * packet in our buffer. We have to discard any unprocessed
	 * data in order to remove such packets. Well, we may remove 
	 * unprocessed, but necessary data byte as well... 
	 */
	FUNC0(&FUNC1(p)->aux);
        res = FUNC2(FUNC1(p));
        if (res == PSM_ACK)
    	    break;
    }
    return res;
}