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
 char** environ ; 
 char** FUNC0 (int) ; 
 int FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char*,char const*,int) ; 

__attribute__((used)) static void
FUNC3(const char *var)
{
	char **newenviron;
	int n, varlen;

	if (environ == NULL)
		return;

	for (n = 0; environ[n] != NULL; n++)
		;
	newenviron = FUNC0(sizeof(char *) * (n + 1));
	varlen = FUNC1(var);
	for (; n >= 0; n--) {
		newenviron[n] = environ[n];
		if (newenviron[n] != NULL &&
		    FUNC2(newenviron[n], var, varlen) == 0 &&
		    newenviron[n][varlen] == '=')
			newenviron[n] += FUNC1(newenviron[n]);
	}
	environ = newenviron;
}