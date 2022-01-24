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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char** FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pamh ; 

__attribute__((used)) static void
FUNC3(void)
{
	char **pam_env;
	char **pp;

	pam_env = FUNC2(pamh);
	if (pam_env != NULL) {
		for (pp = pam_env; *pp != NULL; pp++) {
			(void)FUNC0(*pp);
			FUNC1(*pp);
		}
	}
}