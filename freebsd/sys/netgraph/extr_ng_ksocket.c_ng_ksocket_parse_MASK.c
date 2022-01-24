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
struct ng_ksocket_alias {int family; int value; int /*<<< orphan*/ * name; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (char const*,char**,int) ; 

__attribute__((used)) static int
FUNC2(const struct ng_ksocket_alias *aliases,
	const char *s, int family)
{
	int k, val;
	char *eptr;

	/* Try aliases */
	for (k = 0; aliases[k].name != NULL; k++) {
		if (FUNC0(s, aliases[k].name) == 0
		    && aliases[k].family == family)
			return aliases[k].value;
	}

	/* Try parsing as a number */
	val = (int)FUNC1(s, &eptr, 10);
	if (val < 0 || *eptr != '\0')
		return (-1);
	return (val);
}