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
 char* curline ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC1 () ; 
 int /*<<< orphan*/  lineno ; 
 int /*<<< orphan*/  FUNC2 (char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC3(const char *cptr, const char *msg)
{
	FUNC0(stderr, "%s: %s on line %d\n", FUNC1(), msg, lineno);
	FUNC0(stderr, "%s\n", curline);
	if (cptr) {
		char   *tptr;
		for (tptr = curline; tptr < cptr; ++tptr)
			FUNC2(' ', stderr);
		FUNC0(stderr, "^\n");
	}
}