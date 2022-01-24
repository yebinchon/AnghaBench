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
 scalar_t__ l_onecase ; 
 char FUNC0 (char) ; 

int
FUNC1(register char *s1, register char *s2, register int len)
{
	if (l_onecase) {
	    do
		if (*s2 - FUNC0(*s1))
			return (*s2 - FUNC0(*s1));
		else {
			s2++;
			s1++;
		}
	    while (--len);
	} else {
	    do
		if (*s2 - *s1)
			return (*s2 - *s1);
		else {
			s2++;
			s1++;
		}
	    while (--len);
	}
	return(0);
}