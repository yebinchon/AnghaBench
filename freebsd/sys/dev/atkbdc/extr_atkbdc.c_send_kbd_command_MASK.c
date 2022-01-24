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
typedef  int /*<<< orphan*/  KBDC ;

/* Variables and functions */
 int KBD_ACK ; 
 int KBD_MAXRETRY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

int
FUNC3(KBDC p, int c)
{
    int retry = KBD_MAXRETRY;
    int res = -1;

    while (retry-- > 0) {
	if (!FUNC2(p, c))
	    continue;
        res = FUNC1(FUNC0(p));
        if (res == KBD_ACK)
    	    break;
    }
    return res;
}