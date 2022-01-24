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
 int FUNC0 (int,int) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  decimal_point ; 
 char* default_format ; 
 double FUNC2 (double) ; 
 int FUNC3 (char*,char*,char,...) ; 
 scalar_t__ FUNC4 (char*,char) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *
FUNC6(double first, double incr, double last, int equalize, char pad)
{
	static char buf[256];
	char cc = '\0';
	int precision, width1, width2, places;

	if (equalize == 0)
		return (default_format);

	/* figure out "last" value printed */
	if (first > last)
		last = first - incr * FUNC2((first - last) / incr);
	else
		last = first + incr * FUNC2((last - first) / incr);

	FUNC3(buf, "%g", incr);
	if (FUNC4(buf, 'e'))
		cc = 'e';
	precision = FUNC1(buf);

	width1 = FUNC3(buf, "%g", first);
	if (FUNC4(buf, 'e'))
		cc = 'e';
	if ((places = FUNC1(buf)))
		width1 -= (places + FUNC5(decimal_point));

	precision = FUNC0(places, precision);

	width2 = FUNC3(buf, "%g", last);
	if (FUNC4(buf, 'e'))
		cc = 'e';
	if ((places = FUNC1(buf)))
		width2 -= (places + FUNC5(decimal_point));

	if (precision) {
		FUNC3(buf, "%%%c%d.%d%c", pad,
		    FUNC0(width1, width2) + (int) FUNC5(decimal_point) +
		    precision, precision, (cc) ? cc : 'f');
	} else {
		FUNC3(buf, "%%%c%d%c", pad, FUNC0(width1, width2),
		    (cc) ? cc : 'g');
	}

	return (buf);
}