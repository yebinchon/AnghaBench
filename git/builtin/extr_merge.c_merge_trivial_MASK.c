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
struct object_id {int dummy; } ;
struct commit_list {struct commit* item; } ;
struct commit {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  len; int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  REFRESH_QUIET ; 
 int /*<<< orphan*/  SKIP_IF_UNCHANGED ; 
 char* FUNC0 (char*) ; 
 struct commit_list** FUNC1 (struct commit*,struct commit_list**) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct object_id*,struct commit_list*,struct object_id*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct commit*,struct commit_list*,struct object_id*,char*) ; 
 TYPE_1__ merge_msg ; 
 int /*<<< orphan*/  FUNC6 (struct commit_list*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sign_commit ; 
 int /*<<< orphan*/  the_repository ; 
 int /*<<< orphan*/  FUNC10 (struct object_id*) ; 

__attribute__((used)) static int FUNC11(struct commit *head, struct commit_list *remoteheads)
{
	struct object_id result_tree, result_commit;
	struct commit_list *parents, **pptr = &parents;

	if (FUNC8(REFRESH_QUIET, SKIP_IF_UNCHANGED, 0) < 0)
		return FUNC4(FUNC0("Unable to write index."));

	FUNC10(&result_tree);
	FUNC7(FUNC0("Wonderful.\n"));
	pptr = FUNC1(head, pptr);
	pptr = FUNC1(remoteheads->item, pptr);
	FUNC6(remoteheads);
	if (FUNC2(merge_msg.buf, merge_msg.len, &result_tree, parents,
			&result_commit, NULL, sign_commit))
		FUNC3(FUNC0("failed to write commit object"));
	FUNC5(head, remoteheads, &result_commit, "In-index merge");
	FUNC9(the_repository);
	return 0;
}