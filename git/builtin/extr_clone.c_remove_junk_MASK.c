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
struct strbuf {int dummy; } ;

/* Variables and functions */
#define  JUNK_LEAVE_ALL 129 
#define  JUNK_LEAVE_REPO 128 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ junk_git_dir ; 
 int /*<<< orphan*/  junk_git_dir_flags ; 
 int /*<<< orphan*/  junk_leave_repo_msg ; 
 int junk_mode ; 
 scalar_t__ junk_work_tree ; 
 int /*<<< orphan*/  junk_work_tree_flags ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(void)
{
	struct strbuf sb = STRBUF_INIT;

	switch (junk_mode) {
	case JUNK_LEAVE_REPO:
		FUNC5("%s", FUNC0(junk_leave_repo_msg));
		/* fall-through */
	case JUNK_LEAVE_ALL:
		return;
	default:
		/* proceed to removal */
		break;
	}

	if (junk_git_dir) {
		FUNC2(&sb, junk_git_dir);
		FUNC1(&sb, junk_git_dir_flags);
		FUNC4(&sb);
	}
	if (junk_work_tree) {
		FUNC2(&sb, junk_work_tree);
		FUNC1(&sb, junk_work_tree_flags);
	}
	FUNC3(&sb);
}