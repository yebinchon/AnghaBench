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
struct unittype {double offset; char** numerator; char** denominator; int /*<<< orphan*/  factor; } ;

/* Variables and functions */
 char* numfmt ; 
 char* powerstring ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 

__attribute__((used)) static void 
FUNC2(struct unittype * theunit)
{
	char **ptr;
	int printedslash;
	int counter = 1;

	FUNC0(numfmt, theunit->factor);
	if (theunit->offset)
		FUNC0("&%.8g", theunit->offset);
	for (ptr = theunit->numerator; *ptr; ptr++) {
		if (ptr > theunit->numerator && **ptr &&
		    !FUNC1(*ptr, *(ptr - 1)))
			counter++;
		else {
			if (counter > 1)
				FUNC0("%s%d", powerstring, counter);
			if (**ptr)
				FUNC0(" %s", *ptr);
			counter = 1;
		}
	}
	if (counter > 1)
		FUNC0("%s%d", powerstring, counter);
	counter = 1;
	printedslash = 0;
	for (ptr = theunit->denominator; *ptr; ptr++) {
		if (ptr > theunit->denominator && **ptr &&
		    !FUNC1(*ptr, *(ptr - 1)))
			counter++;
		else {
			if (counter > 1)
				FUNC0("%s%d", powerstring, counter);
			if (**ptr) {
				if (!printedslash)
					FUNC0(" /");
				printedslash = 1;
				FUNC0(" %s", *ptr);
			}
			counter = 1;
		}
	}
	if (counter > 1)
		FUNC0("%s%d", powerstring, counter);
	FUNC0("\n");
}