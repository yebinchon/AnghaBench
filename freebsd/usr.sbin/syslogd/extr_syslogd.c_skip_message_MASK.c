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
 char* FUNC0 (char const*,char const*) ; 
 int FUNC1 (char const*) ; 
 char* FUNC2 (char const*,char const*) ; 

__attribute__((used)) static int
FUNC3(const char *name, const char *spec, int checkcase)
{
	const char *s;
	char prev, next;
	int exclude = 0;
	/* Behaviour on explicit match */

	if (spec == NULL)
		return 0;
	switch (*spec) {
	case '-':
		exclude = 1;
		/*FALLTHROUGH*/
	case '+':
		spec++;
		break;
	default:
		break;
	}
	if (checkcase)
		s = FUNC2 (spec, name);
	else
		s = FUNC0 (spec, name);

	if (s != NULL) {
		prev = (s == spec ? ',' : *(s - 1));
		next = *(s + FUNC1 (name));

		if (prev == ',' && (next == '\0' || next == ','))
			/* Explicit match: skip iff the spec is an
			   exclusive one. */
			return exclude;
	}

	/* No explicit match for this name: skip the message iff
	   the spec is an inclusive one. */
	return !exclude;
}