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
 char** kenvp ; 
 int FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char*,char const*,int) ; 

__attribute__((used)) static char *
FUNC2(const char *name, int *idx)
{
	char *cp;
	int len, i;

	len = FUNC0(name);
	for (cp = kenvp[0], i = 0; cp != NULL; cp = kenvp[++i]) {
		if ((FUNC1(cp, name, len) == 0) &&
		    (cp[len] == '=')) {
			if (idx != NULL)
				*idx = i;
			return (cp + len + 1);
		}
	}
	return (NULL);
}