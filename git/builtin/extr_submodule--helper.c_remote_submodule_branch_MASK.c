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
struct submodule {char const* name; char* branch; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  null_oid ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*,char const**) ; 
 char* FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char*,char const**) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char*) ; 
 struct submodule* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  the_repository ; 
 char* FUNC8 (char*,char const*) ; 

__attribute__((used)) static const char *FUNC9(const char *path)
{
	const struct submodule *sub;
	const char *branch = NULL;
	char *key;

	sub = FUNC7(the_repository, &null_oid, path);
	if (!sub)
		return NULL;

	key = FUNC8("submodule.%s.branch", sub->name);
	if (FUNC3(the_repository, key, &branch))
		branch = sub->branch;
	FUNC2(key);

	if (!branch)
		return "master";

	if (!FUNC6(branch, ".")) {
		const char *refname = FUNC4("HEAD", 0, NULL, NULL);

		if (!refname)
			FUNC1(FUNC0("No such ref: %s"), "HEAD");

		/* detached HEAD */
		if (!FUNC6(refname, "HEAD"))
			FUNC1(FUNC0("Submodule (%s) branch configured to inherit "
			      "branch from superproject, but the superproject "
			      "is not on any branch"), sub->name);

		if (!FUNC5(refname, "refs/heads/", &refname))
			FUNC1(FUNC0("Expecting a full ref name, got %s"), refname);
		return refname;
	}

	return branch;
}