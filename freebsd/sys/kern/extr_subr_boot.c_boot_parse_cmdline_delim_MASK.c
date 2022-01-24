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
 int FUNC0 (char*) ; 
 char* FUNC1 (char**,char const*) ; 

int
FUNC2(char *cmdline, const char *delim)
{
	char *v;
	int howto;

	howto = 0;
	while ((v = FUNC1(&cmdline, delim)) != NULL) {
		if (*v == '\0')
			continue;
		howto |= FUNC0(v);
	}
	return (howto);
}