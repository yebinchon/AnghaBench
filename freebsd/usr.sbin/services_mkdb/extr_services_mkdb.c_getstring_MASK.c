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
 char* FUNC0 (char**,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,size_t,char const*) ; 

__attribute__((used)) static char *
FUNC2(const char *fname, size_t line, char **cp, const char *tag)
{
	char *str;

	while ((str = FUNC0(cp, " \t")) != NULL && *str == '\0')
		continue;

	if (str == NULL)
		FUNC1("%s, %zu: no %s found", fname, line, tag);

	return str;
}