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
struct TYPE_2__ {scalar_t__ ampm_fmt; scalar_t__ c_fmt; scalar_t__ date_fmt; scalar_t__ pm; scalar_t__ am; scalar_t__ x_fmt; scalar_t__ X_fmt; scalar_t__* weekday; scalar_t__* wday; scalar_t__* month; scalar_t__* mon; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ EOF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ *) ; 
 TYPE_1__ tm ; 

void
FUNC3(void)
{
	FILE *f;
	int i;

	if ((f = FUNC1()) == NULL) {
		return;
	}

	for (i = 0; i < 12; i++) {
		if (FUNC2(tm.mon[i], f) == EOF) {
			return;
		}
	}
	for (i = 0; i < 12; i++) {
		if (FUNC2(tm.month[i], f) == EOF) {
			return;
		}
	}
	for (i = 0; i < 7; i++) {
		if (FUNC2(tm.wday[i], f) == EOF) {
			return;
		}
	}
	for (i = 0; i < 7; i++) {
		if (FUNC2(tm.weekday[i], f) == EOF) {
			return;
		}
	}

	/*
	 * NOTE: If date_fmt is not specified, then we'll default to
	 * using the %c for date.  This is reasonable for most
	 * locales, although for reasons that I don't understand
	 * Solaris historically has had a separate format for date.
	 */
	if ((FUNC2(tm.X_fmt, f) == EOF) ||
	    (FUNC2(tm.x_fmt, f) == EOF) ||
	    (FUNC2(tm.c_fmt, f) == EOF) ||
	    (FUNC2(tm.am, f) == EOF) ||
	    (FUNC2(tm.pm, f) == EOF) ||
	    (FUNC2(tm.date_fmt ? tm.date_fmt : tm.c_fmt, f) == EOF) ||
	    (FUNC2(tm.ampm_fmt, f) == EOF)) {
		return;
	}
	FUNC0(f);
}