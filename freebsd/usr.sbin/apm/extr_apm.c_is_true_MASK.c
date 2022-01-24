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
 scalar_t__ FUNC0 (char const*,char*) ; 
 long FUNC1 (char const*,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 

__attribute__((used)) static int
FUNC4(const char *boolean)
{
	char *endp;
	long val;

	val = FUNC1(boolean, &endp, 0);
	if (*endp == '\0')
		return (val != 0 ? 1 : 0);
	if (FUNC0(boolean, "true") == 0 ||
	    FUNC0(boolean, "yes") == 0 ||
	    FUNC0(boolean, "enable") == 0)
		return (1);
	if (FUNC0(boolean, "false") == 0 ||
	    FUNC0(boolean, "no") == 0 ||
	    FUNC0(boolean, "disable") == 0)
		return (0);
	/* Well, I have no idea what the user wants, so... */
	FUNC3("invalid boolean argument \"%s\"", boolean);
	FUNC2();
	/* NOTREACHED */

	return (0);
}