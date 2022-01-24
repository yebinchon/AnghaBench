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
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 char* FUNC3 (char**,char*) ; 

__attribute__((used)) static void
FUNC4(char *rules, int hflag, int nflag)
{
	char *rule;

	while ((rule = FUNC3(&rules, ",")) != NULL) {
		if (rule[0] == '\0')
			break; /* XXX */
		if (nflag == 0)
			rule = FUNC1(rule);
		if (hflag)
			rule = FUNC0(rule);
		FUNC2("%s\n", rule);
	}
}