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
 scalar_t__ FUNC0 (char const) ; 
 long FUNC1 (char const*,char**,int) ; 

__attribute__((used)) static int FUNC2(const char *a, const char *b)
{
	while (*a && *b) {
		if (FUNC0(*a) && FUNC0(*b)) {
			long int na, nb;
			na = FUNC1(a, (char **)&a, 10);
			nb = FUNC1(b, (char **)&b, 10);
			if (na != nb)
				return na - nb;
			/* strtol advanced our pointers */
		}
		else {
			if (*a != *b)
				return (unsigned char)*a - (unsigned char)*b;
			a++;
			b++;
		}
	}
	return (unsigned char)*a - (unsigned char)*b;
}