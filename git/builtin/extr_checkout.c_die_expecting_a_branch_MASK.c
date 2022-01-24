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
struct object_id {int dummy; } ;
struct branch_info {char const* name; scalar_t__ commit; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int FUNC2 (char const*,int /*<<< orphan*/ ,struct object_id*,char**) ; 
 scalar_t__ FUNC3 (char const*,char*,char const**) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 

__attribute__((used)) static void FUNC5(const struct branch_info *branch_info)
{
	struct object_id oid;
	char *to_free;

	if (FUNC2(branch_info->name, FUNC4(branch_info->name), &oid, &to_free) == 1) {
		const char *ref = to_free;

		if (FUNC3(ref, "refs/tags/", &ref))
			FUNC1(FUNC0("a branch is expected, got tag '%s'"), ref);
		if (FUNC3(ref, "refs/remotes/", &ref))
			FUNC1(FUNC0("a branch is expected, got remote branch '%s'"), ref);
		FUNC1(FUNC0("a branch is expected, got '%s'"), ref);
	}
	if (branch_info->commit)
		FUNC1(FUNC0("a branch is expected, got commit '%s'"), branch_info->name);
	/*
	 * This case should never happen because we already die() on
	 * non-commit, but just in case.
	 */
	FUNC1(FUNC0("a branch is expected, got '%s'"), branch_info->name);
}