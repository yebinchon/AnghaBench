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

size_t
FUNC1(const char **inp, size_t ilen, char delim)
{
	const char	*p, *sp;
	
	/* Skip any leading whitespace */
	for (sp = *inp; (size_t)(sp-*inp) < ilen && FUNC0(*sp); sp++)
		continue;
	
	*inp = sp;
	
	/* Find the last field character */
	for (p = *inp; (size_t)(p - *inp) < ilen; p++) {
		if (*p == delim || *p == '\0')
			break;
	}
	
	return (p - *inp);
}