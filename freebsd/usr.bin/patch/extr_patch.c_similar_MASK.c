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

__attribute__((used)) static bool
FUNC1(const char *a, const char *b, int len)
{
	while (len) {
		if (FUNC0((unsigned char)*b)) {	/* whitespace (or \n) to match? */
			if (!FUNC0((unsigned char)*a))	/* no corresponding whitespace? */
				return false;
			while (len && FUNC0((unsigned char)*b) && *b != '\n')
				b++, len--;	/* skip pattern whitespace */
			while (FUNC0((unsigned char)*a) && *a != '\n')
				a++;	/* skip target whitespace */
			if (*a == '\n' || *b == '\n')
				return (*a == *b);	/* should end in sync */
		} else if (*a++ != *b++)	/* match non-whitespace chars */
			return false;
		else
			len--;	/* probably not necessary */
	}
	return true;		/* actually, this is not reached */
	/* since there is always a \n */
}