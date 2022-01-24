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
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 char* FUNC2 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 char* FUNC3 (char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(const char *HEAD, int quiet, int shorten, int print)
{
	int flag;
	const char *refname = FUNC2(HEAD, 0, NULL, &flag);

	if (!refname)
		FUNC0("No such ref: %s", HEAD);
	else if (!(flag & REF_ISSYMREF)) {
		if (!quiet)
			FUNC0("ref %s is not a symbolic ref", HEAD);
		else
			return 1;
	}
	if (print) {
		if (shorten)
			refname = FUNC3(refname, 0);
		FUNC1(refname);
	}
	return 0;
}