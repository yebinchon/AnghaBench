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
 int /*<<< orphan*/  diffargs ; 
 scalar_t__ FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (size_t) ; 

void
FUNC4(char **av, char **ave)
{
	size_t argsize;
	char **ap;

	argsize = 4 + *ave - *av + 1;
	diffargs = FUNC3(argsize);
	FUNC2(diffargs, "diff", argsize);
	for (ap = av + 1; ap < ave; ap++) {
		if (FUNC0(*ap, "--") != 0) {
			FUNC1(diffargs, " ", argsize);
			FUNC1(diffargs, *ap, argsize);
		}
	}
}