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
 char* FUNC0 (char const*) ; 
 char* FUNC1 (char const*) ; 
 char const* FUNC2 (char const*,char const*) ; 

__attribute__((used)) static const char *
FUNC3(const char **cpp)
{
	const char *cp = *cpp, *sym;

	cp = FUNC0(cp);
	cp = FUNC1(sym = cp);
	if (cp == sym)
		return NULL;
	*cpp = cp;
	return (FUNC2(sym, cp));
}