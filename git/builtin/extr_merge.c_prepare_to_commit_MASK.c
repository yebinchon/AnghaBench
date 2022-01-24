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
struct strbuf {int /*<<< orphan*/  len; int /*<<< orphan*/  buf; } ;
struct commit_list {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ COMMIT_MSG_CLEANUP_SCISSORS ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/ * FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct commit_list*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ cleanup_mode ; 
 int /*<<< orphan*/  comment_line_char ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (char*) ; 
 char* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* merge_editor_comment ; 
 struct strbuf merge_msg ; 
 char* no_scissors_editor_comment ; 
 int /*<<< orphan*/  no_verify ; 
 scalar_t__ option_edit ; 
 int /*<<< orphan*/  FUNC11 (char const*) ; 
 int /*<<< orphan*/  FUNC12 (struct strbuf*) ; 
 scalar_t__ FUNC13 (int,char const*,char*,int /*<<< orphan*/ ,...) ; 
 char* scissors_editor_comment ; 
 scalar_t__ signoff ; 
 scalar_t__ squash ; 
 int /*<<< orphan*/  FUNC14 (struct strbuf*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC15 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC16 (struct strbuf*,char*,...) ; 
 int /*<<< orphan*/  FUNC17 (struct strbuf*) ; 
 int /*<<< orphan*/  the_repository ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct commit_list*) ; 
 int /*<<< orphan*/  FUNC20 (struct strbuf*) ; 

__attribute__((used)) static void FUNC21(struct commit_list *remoteheads)
{
	struct strbuf msg = STRBUF_INIT;
	const char *index_file = FUNC7();

	if (!no_verify && FUNC13(0 < option_edit, index_file, "pre-merge-commit", NULL))
		FUNC2(remoteheads, NULL);
	/*
	 * Re-read the index as pre-merge-commit hook could have updated it,
	 * and write it out as a tree.  We must do this before we invoke
	 * the editor and after we invoke run_status above.
	 */
	if (FUNC6("pre-merge-commit"))
		FUNC5();
	FUNC11(index_file);
	FUNC14(&msg, &merge_msg);
	if (squash)
		FUNC0("the control must not reach here under --squash");
	if (0 < option_edit) {
		FUNC15(&msg, '\n');
		if (cleanup_mode == COMMIT_MSG_CLEANUP_SCISSORS) {
			FUNC20(&msg);
			FUNC16(&msg, "\n");
		}
		FUNC16(&msg, FUNC1(merge_editor_comment));
		FUNC16(&msg, FUNC1(cleanup_mode == COMMIT_MSG_CLEANUP_SCISSORS ?
			scissors_editor_comment :
			no_scissors_editor_comment), comment_line_char);
	}
	if (signoff)
		FUNC3(&msg, FUNC9(msg.buf, msg.len), 0);
	FUNC19(remoteheads);
	FUNC18(FUNC8(the_repository), msg.buf, msg.len);
	if (FUNC13(0 < option_edit, FUNC7(), "prepare-commit-msg",
			    FUNC8(the_repository), "merge", NULL))
		FUNC2(remoteheads, NULL);
	if (0 < option_edit) {
		if (FUNC10(FUNC8(the_repository), NULL, NULL))
			FUNC2(remoteheads, NULL);
	}

	if (!no_verify && FUNC13(0 < option_edit, FUNC7(),
					  "commit-msg",
					  FUNC8(the_repository), NULL))
		FUNC2(remoteheads, NULL);

	FUNC12(&msg);
	FUNC4(&msg, cleanup_mode, 0);
	if (!msg.len)
		FUNC2(remoteheads, FUNC1("Empty commit message."));
	FUNC17(&merge_msg);
	FUNC14(&merge_msg, &msg);
	FUNC17(&msg);
}