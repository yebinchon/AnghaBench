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
struct unittype {char** denominator; char** numerator; } ;

/* Variables and functions */
 int ERROR ; 
 char* NULLUNIT ; 
 int /*<<< orphan*/  PRIMITIVECHAR ; 
 scalar_t__ FUNC0 (struct unittype*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 scalar_t__ FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static int 
FUNC6(struct unittype * theunit, int flip)
{

	char *toadd;
	char **product;
	int didsomething = 2;

	if (flip)
		product = theunit->denominator;
	else
		product = theunit->numerator;

	for (; *product; product++) {

		for (;;) {
			if (!FUNC5(*product))
				break;
			toadd = FUNC2(*product);
			if (!toadd) {
				FUNC3("unknown unit '%s'\n", *product);
				return ERROR;
			}
			if (FUNC4(toadd, PRIMITIVECHAR))
				break;
			didsomething = 1;
			if (*product != NULLUNIT) {
				FUNC1(*product);
				*product = NULLUNIT;
			}
			if (FUNC0(theunit, toadd, flip, 0))
				return ERROR;
		}
	}
	return didsomething;
}