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

/* Variables and functions */
 scalar_t__ EOF ; 
 scalar_t__ TAILLEN ; 
 scalar_t__ addone ; 
 scalar_t__ dspace ; 
 scalar_t__ formfeed ; 
 scalar_t__ nohead ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (char) ; 

int
FUNC2(int cnt, int incomp)
{
	if (nohead) {
		/*
		 * only pad with no headers when incomplete last line
		 */
		if (incomp &&
		    ((dspace && (FUNC1('\n') == EOF)) ||
		     (FUNC1('\n') == EOF))) {
			FUNC0();
			return(1);
		}
		/*
		 * but honor the formfeed request
		 */
		if (formfeed) {
			if (FUNC1('\f') == EOF) {
				FUNC0();
				return(1);
			}
		}
		return(0);
	}
	/*
	 * if double space output two \n
	 */
	if (dspace)
		cnt *= 2;

	/*
	 * if an odd number of lines per page, add an extra \n
	 */
	if (addone)
		++cnt;

	/*
	 * pad page
	 */
	if (formfeed) {
		if ((incomp && (FUNC1('\n') == EOF)) ||
		    (FUNC1('\f') == EOF)) {
			FUNC0();
			return(1);
		}
		return(0);
	}
	cnt += TAILLEN;
	while (--cnt >= 0) {
		if (FUNC1('\n') == EOF) {
			FUNC0();
			return(1);
		}
	}
	return(0);
}