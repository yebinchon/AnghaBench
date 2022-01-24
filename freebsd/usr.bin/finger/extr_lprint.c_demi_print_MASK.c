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
 int LINE_LEN ; 
 int TAB_LEN ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char) ; 
 int FUNC2 (char*) ; 

__attribute__((used)) static int
FUNC3(char *str, int oddfield)
{
	static int lenlast;
	int lenthis, maxlen;

	lenthis = FUNC2(str);
	if (oddfield) {
		/*
		 * We left off on an odd number of fields.  If we haven't
		 * crossed the midpoint of the screen, and we have room for
		 * the next field, print it on the same line; otherwise,
		 * print it on a new line.
		 *
		 * Note: we insist on having the right hand fields start
		 * no less than 5 tabs out.
		 */
		maxlen = 5 * TAB_LEN;
		if (maxlen < lenlast)
			maxlen = lenlast;
		if (((((maxlen / TAB_LEN) + 1) * TAB_LEN) +
		    lenthis) <= LINE_LEN) {
			while(lenlast < (4 * TAB_LEN)) {
				FUNC1('\t');
				lenlast += TAB_LEN;
			}
			(void)FUNC0("\t%s\n", str);	/* force one tab */
		} else {
			(void)FUNC0("\n%s", str);	/* go to next line */
			oddfield = !oddfield;	/* this'll be undone below */
		}
	} else
		(void)FUNC0("%s", str);
	oddfield = !oddfield;			/* toggle odd/even marker */
	lenlast = lenthis;
	return(oddfield);
}