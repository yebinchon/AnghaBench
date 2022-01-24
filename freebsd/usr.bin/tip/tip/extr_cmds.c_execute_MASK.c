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
 int /*<<< orphan*/  SHELL ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 char* FUNC2 (char*,char) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(char *s)
{
	char *cp;

	if ((cp = FUNC2(FUNC3(SHELL), '/')) == NULL)
		cp = FUNC3(SHELL);
	else
		cp++;
	FUNC1();
	FUNC0(FUNC3(SHELL), cp, "-c", s, (char *)NULL);
}