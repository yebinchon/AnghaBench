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
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

int
FUNC2(char **argv)
{
	char **ap, *cp;

	for (ap = argv; *ap != NULL; ap++) {
		cp = *ap;
		if ((cp = FUNC0(cp)) != NULL) {
			if (ap != argv)
				FUNC1(" ");
			FUNC1("%s", cp);
		}
	}
	FUNC1("\n");
	return (0);
}