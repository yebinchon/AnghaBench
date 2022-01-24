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
struct bcd_clocktime {int year; int mon; int day; int hour; int min; int sec; int nsec; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int* nsdivisors ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int,int,int,int,int,...) ; 

void
FUNC2(const struct bcd_clocktime *bct, int nsdigits)
{

	FUNC0(nsdigits >= 0 && nsdigits <= 9, ("bad nsdigits %d", nsdigits));

	if (nsdigits > 0) {
		FUNC1("%4.4x-%2.2x-%2.2x %2.2x:%2.2x:%2.2x.%*.*ld",
		    bct->year, bct->mon, bct->day,
		    bct->hour, bct->min, bct->sec,
		    nsdigits, nsdigits, bct->nsec / nsdivisors[nsdigits]);
	} else {
		FUNC1("%4.4x-%2.2x-%2.2x %2.2x:%2.2x:%2.2x",
		    bct->year, bct->mon, bct->day,
		    bct->hour, bct->min, bct->sec);
	}
}