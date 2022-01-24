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
 char** environ_pam ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 char* FUNC3 (char*,char) ; 

__attribute__((used)) static void
FUNC4(void)
{
	char	**pp;
	char	*p;

	for (pp = environ_pam; *pp != NULL; pp++) {
		if (FUNC1(*pp)) {
			p = FUNC3(*pp, '=');
			*p = '\0';
			FUNC2(*pp, p + 1, 1);
		}
		FUNC0(*pp);
	}
}