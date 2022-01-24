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
 int /*<<< orphan*/  EX_USAGE ; 
 int /*<<< orphan*/  INT_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*,char const*) ; 
 scalar_t__ FUNC1 (char*,char*) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const**) ; 

int
FUNC3(char *nptr)
{
	const char *errstr;
	int fd = -1;

	if (FUNC1(nptr, "-") == 0)
		return '-';
	fd = FUNC2(nptr, 0, INT_MAX, &errstr);
	if (errstr != NULL)
		FUNC0(EX_USAGE, "Bad file descriptor '%s': %s",
		    nptr, errstr);
	return (fd);
}