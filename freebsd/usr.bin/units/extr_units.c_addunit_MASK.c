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
struct unittype {int quantity; double factor; double offset; int /*<<< orphan*/  denominator; int /*<<< orphan*/  numerator; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*) ; 
 double FUNC1 (char*) ; 
 char* FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (char*,char) ; 
 int FUNC5 (char const*) ; 
 char* FUNC6 (char*,char*) ; 
 char FUNC7 (char) ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static int 
FUNC9(struct unittype * theunit, const char *toadd, int flip, int quantity)
{
	char *scratch, *savescr;
	char *item;
	char *divider, *slash, *offset;
	int doingtop;

	if (!FUNC5(toadd))
		return 1;
	
	savescr = scratch = FUNC2(toadd);
	for (slash = scratch + 1; *slash; slash++)
		if (*slash == '-' &&
		    (FUNC7(*(slash - 1)) != 'e' ||
		    !FUNC4(".0123456789", *(slash + 1))))
			*slash = ' ';
	slash = FUNC4(scratch, '/');
	if (slash)
		*slash = 0;
	doingtop = 1;
	do {
		item = FUNC6(scratch, " *\t\n/");
		while (item) {
			if (FUNC4("0123456789.", *item)) { /* item is a number */
				double num, offsetnum;

				if (quantity)
					theunit->quantity = 1;

				offset = FUNC4(item, '&');
				if (offset) {
					*offset = 0;
					offsetnum = FUNC1(offset+1);
				} else
					offsetnum = 0.0;

				divider = FUNC4(item, '|');
				if (divider) {
					*divider = 0;
					num = FUNC1(item);
					if (!num) {
						FUNC8();
						FUNC3(savescr);
						return 1;
					}
					if (doingtop ^ flip) {
						theunit->factor *= num;
						theunit->offset *= num;
					} else {
						theunit->factor /= num;
						theunit->offset /= num;
					}
					num = FUNC1(divider + 1);
					if (!num) {
						FUNC8();
						FUNC3(savescr);
						return 1;
					}
					if (doingtop ^ flip) {
						theunit->factor /= num;
						theunit->offset /= num;
					} else {
						theunit->factor *= num;
						theunit->offset *= num;
					}
				}
				else {
					num = FUNC1(item);
					if (!num) {
						FUNC8();
						FUNC3(savescr);
						return 1;
					}
					if (doingtop ^ flip) {
						theunit->factor *= num;
						theunit->offset *= num;
					} else {
						theunit->factor /= num;
						theunit->offset /= num;
					}
				}
				if (doingtop ^ flip)
					theunit->offset += offsetnum;
			}
			else {	/* item is not a number */
				int repeat = 1;

				if (FUNC4("23456789",
				    item[FUNC5(item) - 1])) {
					repeat = item[FUNC5(item) - 1] - '0';
					item[FUNC5(item) - 1] = 0;
				}
				for (; repeat; repeat--) {
					if (FUNC0(doingtop ^ flip ? theunit->numerator : theunit->denominator, item)) {
						FUNC3(savescr);
						return 1;
					}
				}
			}
			item = FUNC6(NULL, " *\t/\n");
		}
		doingtop--;
		if (slash) {
			scratch = slash + 1;
		}
		else
			doingtop--;
	} while (doingtop >= 0);
	FUNC3(savescr);
	return 0;
}