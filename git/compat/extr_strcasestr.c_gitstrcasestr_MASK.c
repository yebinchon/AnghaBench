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
 int FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (unsigned char) ; 

char *FUNC2(const char *haystack, const char *needle)
{
	int nlen = FUNC0(needle);
	int hlen = FUNC0(haystack) - nlen + 1;
	int i;

	for (i = 0; i < hlen; i++) {
		int j;
		for (j = 0; j < nlen; j++) {
			unsigned char c1 = haystack[i+j];
			unsigned char c2 = needle[j];
			if (FUNC1(c1) != FUNC1(c2))
				goto next;
		}
		return (char *) haystack + i;
	next:
		;
	}
	return NULL;
}