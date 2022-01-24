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
struct rev_info {int dummy; } ;
struct object {int flags; int /*<<< orphan*/  oid; } ;
struct commit {struct object object; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALL_REV_FLAGS ; 
 int UNINTERESTING ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct rev_info*,struct object*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rev_info*,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  add_pending_uninteresting_ref ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct commit*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct rev_info*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (struct rev_info*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct rev_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct rev_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct commit*,struct rev_info*) ; 
 int /*<<< orphan*/  the_repository ; 

__attribute__((used)) static void FUNC12(struct commit *old_commit, struct commit *new_commit)
{
	struct rev_info revs;
	struct object *object = &old_commit->object;

	FUNC9(the_repository, &revs, NULL);
	FUNC10(0, NULL, &revs, NULL);

	object->flags &= ~UNINTERESTING;
	FUNC1(&revs, object, FUNC7(&object->oid));

	FUNC6(add_pending_uninteresting_ref, &revs);
	if (new_commit)
		FUNC2(&revs, "HEAD",
				&new_commit->object.oid,
				UNINTERESTING);

	if (FUNC8(&revs))
		FUNC5(FUNC0("internal error in revision walk"));
	if (!(old_commit->object.flags & UNINTERESTING))
		FUNC11(old_commit, &revs);
	else
		FUNC4(FUNC0("Previous HEAD position was"), old_commit);

	/* Clean up objects used, as they will be reused. */
	FUNC3(ALL_REV_FLAGS);
}