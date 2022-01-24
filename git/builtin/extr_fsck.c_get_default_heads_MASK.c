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
struct worktree {int dummy; } ;
struct strbuf {int /*<<< orphan*/  buf; } ;
struct object_id {int dummy; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  default_refs ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  (*) (int /*<<< orphan*/ ,struct object_id*,int /*<<< orphan*/ ,int /*<<< orphan*/ *),int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct worktree**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct object_id*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fsck_handle_reflog ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const**,struct object_id*) ; 
 int /*<<< orphan*/  FUNC6 (struct worktree*) ; 
 struct worktree** FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ include_reflogs ; 
 int /*<<< orphan*/  FUNC8 (struct object_id*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct worktree*) ; 
 scalar_t__ show_unreachable ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC10 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC11 (struct worktree*,struct strbuf*,char*) ; 

__attribute__((used)) static void FUNC12(void)
{
	struct worktree **worktrees, **p;
	const char *head_points_at;
	struct object_id head_oid;

	FUNC1(fsck_handle_ref, NULL);

	worktrees = FUNC7(0);
	for (p = worktrees; *p; p++) {
		struct worktree *wt = *p;
		struct strbuf ref = STRBUF_INIT;

		FUNC11(wt, &ref, "HEAD");
		FUNC5(ref.buf, &head_points_at, &head_oid);
		if (head_points_at && !FUNC8(&head_oid))
			FUNC4(ref.buf, &head_oid, 0, NULL);
		FUNC10(&ref);

		if (include_reflogs)
			FUNC9(FUNC6(wt),
					     fsck_handle_reflog, wt);
	}
	FUNC3(worktrees);

	/*
	 * Not having any default heads isn't really fatal, but
	 * it does mean that "--unreachable" no longer makes any
	 * sense (since in this case everything will obviously
	 * be unreachable by definition.
	 *
	 * Showing dangling objects is valid, though (as those
	 * dangling objects are likely lost heads).
	 *
	 * So we just print a warning about it, and clear the
	 * "show_unreachable" flag.
	 */
	if (!default_refs) {
		FUNC2(stderr, FUNC0("notice: No default references"));
		show_unreachable = 0;
	}
}