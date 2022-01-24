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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  decimal_point ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 

__attribute__((used)) static void
FUNC1(FILE *out, long sec, long centisec)
{
	long days, hrs, mins;

	days = sec / (60L * 60 * 24);
	sec %= (60L * 60 * 24);
	hrs = sec / (60L * 60);
	sec %= (60L * 60);
	mins = sec / 60;
	sec %= 60;

	FUNC0(out, "\t");
	if (days)
		FUNC0(out, "%ldd", days);
	if (hrs)
		FUNC0(out, "%ldh", hrs);
	if (mins)
		FUNC0(out, "%ldm", mins);
	FUNC0(out, "%ld%c%02lds", sec, decimal_point, centisec);
}