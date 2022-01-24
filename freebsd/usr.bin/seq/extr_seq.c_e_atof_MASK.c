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
 scalar_t__ ERANGE ; 
 int /*<<< orphan*/  FUNC0 (int,char*,char const*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char const*) ; 
 double FUNC2 (char const*,char**) ; 

__attribute__((used)) static double
FUNC3(const char *num)
{
	char *endp;
	double dbl;

	errno = 0;
	dbl = FUNC2(num, &endp);

	if (errno == ERANGE)
		/* under or overflow */
		FUNC0(2, "%s", num);
	else if (*endp != '\0')
		/* "junk" left in number */
		FUNC1(2, "invalid floating point argument: %s", num);

	/* zero shall have no sign */
	if (dbl == -0.0)
		dbl = 0;
	return (dbl);
}