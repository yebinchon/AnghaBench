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
struct object {scalar_t__ type; } ;
struct commit_list {int dummy; } ;
struct commit {int dummy; } ;

/* Variables and functions */
 scalar_t__ OBJ_COMMIT ; 
 int /*<<< orphan*/  FUNC0 (struct commit*,struct commit_list**) ; 
 struct object* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct commit*,struct commit_list*) ; 
 scalar_t__ FUNC3 (struct commit*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct object_id const*) ; 
 int /*<<< orphan*/  the_repository ; 

int FUNC5(const struct object_id *new_oid, const struct object_id *old_oid)
{
	struct object *o;
	struct commit *old_commit, *new_commit;
	struct commit_list *old_commit_list = NULL;

	/*
	 * Both new_commit and old_commit must be commit-ish and new_commit is descendant of
	 * old_commit.  Otherwise we require --force.
	 */
	o = FUNC1(the_repository, FUNC4(the_repository, old_oid),
		      NULL, 0);
	if (!o || o->type != OBJ_COMMIT)
		return 0;
	old_commit = (struct commit *) o;

	o = FUNC1(the_repository, FUNC4(the_repository, new_oid),
		      NULL, 0);
	if (!o || o->type != OBJ_COMMIT)
		return 0;
	new_commit = (struct commit *) o;

	if (FUNC3(new_commit) < 0)
		return 0;

	FUNC0(old_commit, &old_commit_list);
	return FUNC2(new_commit, old_commit_list);
}