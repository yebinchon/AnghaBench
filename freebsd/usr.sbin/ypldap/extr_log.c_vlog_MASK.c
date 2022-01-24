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
typedef  int /*<<< orphan*/  va_list ;

/* Variables and functions */
 int FUNC0 (char**,char*,char const*) ; 
 scalar_t__ debug ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,char const*,int /*<<< orphan*/ ) ; 

void
FUNC6(int pri, const char *fmt, va_list ap)
{
	char	*nfmt;

	if (debug) {
		/* best effort in out of mem situations */
		if (FUNC0(&nfmt, "%s\n", fmt) == -1) {
			FUNC4(stderr, fmt, ap);
			FUNC2(stderr, "\n");
		} else {
			FUNC4(stderr, nfmt, ap);
			FUNC3(nfmt);
		}
		FUNC1(stderr);
	} else
		FUNC5(pri, fmt, ap);
}