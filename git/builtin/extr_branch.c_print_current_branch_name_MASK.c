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
 int REF_ISSYMREF ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 char* FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC4 (char const*,char*,char const**) ; 

__attribute__((used)) static void FUNC5(void)
{
	int flags;
	const char *refname = FUNC3("HEAD", 0, NULL, &flags);
	const char *shortname;
	if (!refname)
		FUNC1(FUNC0("could not resolve HEAD"));
	else if (!(flags & REF_ISSYMREF))
		return;
	else if (FUNC4(refname, "refs/heads/", &shortname))
		FUNC2(shortname);
	else
		FUNC1(FUNC0("HEAD (%s) points outside of refs/heads/"), refname);
}