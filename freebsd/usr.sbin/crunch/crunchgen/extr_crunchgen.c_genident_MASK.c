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
 scalar_t__ FUNC0 (unsigned char) ; 
 char* FUNC1 (char*) ; 

char *FUNC2(char *str)
{
	char *n, *s, *d;

	/*
	 * generates a Makefile/C identifier from a program name,
	 * mapping '-' to '_' and ignoring all other non-identifier
	 * characters.  This leads to programs named "foo.bar" and
	 * "foobar" to map to the same identifier.
	 */

	if ((n = FUNC1(str)) == NULL)
		return NULL;
	for (d = s = n; *s != '\0'; s++) {
		if (*s == '-')
			*d++ = '_';
		else if (*s == '_' || FUNC0((unsigned char)*s))
			*d++ = *s;
	}
	*d = '\0';
	return n;
}