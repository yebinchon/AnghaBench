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
struct strbuf {int /*<<< orphan*/  buf; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  allow_rerere_auto ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cleanup_arg ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct strbuf*) ; 
 int /*<<< orphan*/  the_index ; 
 int /*<<< orphan*/  the_repository ; 
 int /*<<< orphan*/ * FUNC9 (char const*,char*) ; 

__attribute__((used)) static int FUNC10(void)
{
	const char *filename;
	FILE *fp;
	struct strbuf msgbuf = STRBUF_INIT;

	filename = FUNC5(the_repository);
	fp = FUNC9(filename, "a");

	/*
	 * We can't use cleanup_mode because if we're not using the editor,
	 * get_cleanup_mode will return COMMIT_MSG_CLEANUP_SPACE instead, even
	 * though the message is meant to be processed later by git-commit.
	 * Thus, we will get the cleanup mode which is returned when we _are_
	 * using an editor.
	 */
	FUNC1(&the_index, &msgbuf,
			      FUNC4(cleanup_arg, 1));
	FUNC3(msgbuf.buf, fp);
	FUNC8(&msgbuf);
	FUNC2(fp);
	FUNC7(the_repository, allow_rerere_auto);
	FUNC6(FUNC0("Automatic merge failed; "
			"fix conflicts and then commit the result.\n"));
	return 1;
}