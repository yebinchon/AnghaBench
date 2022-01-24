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
 size_t FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char const*,size_t) ; 

__attribute__((used)) static int
FUNC2(const char *arg, const char **optlist)
{
	int	i;	/* Temporary index in OPTLIST. */
	size_t	arglen;	/* Length of ARG. */
	int	matchind = -1;	/* Index of first nonexact match. */
	int	ambiguous = 0;	/* If nonzero, multiple nonexact match(es). */

	arglen = FUNC0(arg);

	/* Test all elements for either exact match or abbreviated matches.  */
	for (i = 0; optlist[i]; i++) {
		if (!FUNC1(optlist[i], arg, arglen)) {
			if (FUNC0(optlist[i]) == arglen)
				/* Exact match found.  */
				return i;
			else if (matchind == -1)
				/* First nonexact match found.  */
				matchind = i;
			else
				/* Second nonexact match found.  */
				ambiguous = 1;
		}
	}
	if (ambiguous)
		return -2;
	else
		return matchind;
}