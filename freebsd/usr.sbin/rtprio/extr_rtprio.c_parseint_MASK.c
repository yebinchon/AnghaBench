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
 long INT_MAX ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (int,char*,char const*) ; 
 long FUNC1 (char const*,char**,int) ; 

__attribute__((used)) static int
FUNC2(const char *str, const char *errname)
{
	char *endp;
	long res;

	errno = 0;
	res = FUNC1(str, &endp, 10);
	if (errno != 0 || endp == str || *endp != '\0')
		FUNC0(1, "%s must be a number", errname);
	if (res >= INT_MAX)
		FUNC0(1, "Integer overflow parsing %s", errname);
	return (res);
}