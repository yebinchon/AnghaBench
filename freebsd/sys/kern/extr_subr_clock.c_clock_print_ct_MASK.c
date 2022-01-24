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
struct clocktime {int year; int mon; int day; int hour; int min; int sec; int nsec; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int* nsdivisors ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int,int,int,int,int,...) ; 

void
FUNC2(const struct clocktime *ct, int nsdigits)
{

	FUNC0(nsdigits >= 0 && nsdigits <= 9, ("bad nsdigits %d", nsdigits));

	if (nsdigits > 0) {
		FUNC1("%04d-%02d-%02d %02d:%02d:%02d.%*.*ld",
		    ct->year, ct->mon, ct->day,
		    ct->hour, ct->min, ct->sec,
		    nsdigits, nsdigits, ct->nsec / nsdivisors[nsdigits]);
	} else {
		FUNC1("%04d-%02d-%02d %02d:%02d:%02d",
		    ct->year, ct->mon, ct->day,
		    ct->hour, ct->min, ct->sec);
	}
}