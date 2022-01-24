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
struct object_id {int dummy; } ;
struct child_process {char const** argv; int no_stdin; int out; int git_cmd; scalar_t__ err; } ;

/* Variables and functions */
 struct child_process CHILD_PROCESS_INIT ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct child_process*) ; 
 char* FUNC4 (struct object_id const*) ; 
 scalar_t__ FUNC5 (struct child_process*) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct strbuf*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(int fd, const struct object_id *object)
{
	const char *show_args[5] =
		{"show", "--stat", "--no-notes", FUNC4(object), NULL};
	struct child_process show = CHILD_PROCESS_INIT;
	struct strbuf buf = STRBUF_INIT;
	struct strbuf cbuf = STRBUF_INIT;

	/* Invoke "git show --stat --no-notes $object" */
	show.argv = show_args;
	show.no_stdin = 1;
	show.out = -1;
	show.err = 0;
	show.git_cmd = 1;
	if (FUNC5(&show))
		FUNC1(FUNC0("unable to start 'show' for object '%s'"),
		    FUNC4(object));

	if (FUNC7(&buf, show.out, 0) < 0)
		FUNC2(FUNC0("could not read 'show' output"));
	FUNC6(&cbuf, buf.buf, buf.len);
	FUNC9(fd, cbuf.buf, cbuf.len);

	FUNC8(&cbuf);
	FUNC8(&buf);

	if (FUNC3(&show))
		FUNC1(FUNC0("failed to finish 'show' for object '%s'"),
		    FUNC4(object));
}