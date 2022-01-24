#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ref {int /*<<< orphan*/  old_oid; int /*<<< orphan*/  name; } ;
struct TYPE_2__ {int /*<<< orphan*/  oid; } ;
struct commit {TYPE_1__ object; } ;

/* Variables and functions */
 int /*<<< orphan*/  REF_NO_DEREF ; 
 int /*<<< orphan*/  UPDATE_REFS_DIE_ON_ERR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct commit* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  option_bare ; 
 int /*<<< orphan*/  option_origin ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char*,char const**) ; 
 int /*<<< orphan*/  the_repository ; 
 int /*<<< orphan*/  FUNC6 (char const*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(const struct ref *our, const struct ref *remote,
			const char *msg)
{
	const char *head;
	if (our && FUNC5(our->name, "refs/heads/", &head)) {
		/* Local default branch link */
		if (FUNC1("HEAD", our->name, NULL) < 0)
			FUNC2(FUNC0("unable to update HEAD"));
		if (!option_bare) {
			FUNC6(msg, "HEAD", &our->old_oid, NULL, 0,
				   UPDATE_REFS_DIE_ON_ERR);
			FUNC3(0, head, option_origin, our->name);
		}
	} else if (our) {
		struct commit *c = FUNC4(the_repository,
							   &our->old_oid);
		/* --branch specifies a non-branch (i.e. tags), detach HEAD */
		FUNC6(msg, "HEAD", &c->object.oid, NULL, REF_NO_DEREF,
			   UPDATE_REFS_DIE_ON_ERR);
	} else if (remote) {
		/*
		 * We know remote HEAD points to a non-branch, or
		 * HEAD points to a branch but we don't know which one.
		 * Detach HEAD in all these cases.
		 */
		FUNC6(msg, "HEAD", &remote->old_oid, NULL, REF_NO_DEREF,
			   UPDATE_REFS_DIE_ON_ERR);
	}
}