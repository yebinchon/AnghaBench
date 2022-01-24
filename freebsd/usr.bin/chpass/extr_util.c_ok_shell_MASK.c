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
 int /*<<< orphan*/  FUNC0 () ; 
 char* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 char* FUNC4 (char*,char) ; 

int
FUNC5(char *name)
{
	char *p, *sh;

	FUNC2();
	while ((sh = FUNC1())) {
		if (!FUNC3(name, sh)) {
			FUNC0();
			return (1);
		}
		/* allow just shell name, but use "real" path */
		if ((p = FUNC4(sh, '/')) && FUNC3(name, p + 1) == 0) {
			FUNC0();
			return (1);
		}
	}
	FUNC0();
	return (0);
}