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
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
#define  REF_TYPE_MAIN_PSEUDOREF 129 
#define  REF_TYPE_OTHER_PSEUDOREF 128 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const**) ; 
 int FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*) ; 

__attribute__((used)) static int FUNC4(const char *refname)
{
	switch (FUNC2(refname)) {
	case REF_TYPE_OTHER_PSEUDOREF:
	case REF_TYPE_MAIN_PSEUDOREF:
		if (FUNC1(refname, NULL, NULL, &refname))
			FUNC0("not a worktree ref: %s", refname);
		break;
	default:
		break;
	}
	return !FUNC3(refname, "HEAD");
}