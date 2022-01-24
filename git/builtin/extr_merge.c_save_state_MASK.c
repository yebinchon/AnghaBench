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
struct strbuf {int len; int /*<<< orphan*/  buf; } ;
struct object_id {int dummy; } ;
struct child_process {char const** argv; int out; int git_cmd; } ;

/* Variables and functions */
 struct child_process CHILD_PROCESS_INIT ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC3 (struct child_process*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,struct object_id*) ; 
 scalar_t__ FUNC5 (struct child_process*) ; 
 int FUNC6 (struct strbuf*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC8 (struct strbuf*,int) ; 

__attribute__((used)) static int FUNC9(struct object_id *stash)
{
	int len;
	struct child_process cp = CHILD_PROCESS_INIT;
	struct strbuf buffer = STRBUF_INIT;
	const char *argv[] = {"stash", "create", NULL};
	int rc = -1;

	cp.argv = argv;
	cp.out = -1;
	cp.git_cmd = 1;

	if (FUNC5(&cp))
		FUNC2(FUNC0("could not run stash."));
	len = FUNC6(&buffer, cp.out, 1024);
	FUNC1(cp.out);

	if (FUNC3(&cp) || len < 0)
		FUNC2(FUNC0("stash failed"));
	else if (!len)		/* no changes */
		goto out;
	FUNC8(&buffer, buffer.len-1);
	if (FUNC4(buffer.buf, stash))
		FUNC2(FUNC0("not a valid object: %s"), buffer.buf);
	rc = 0;
out:
	FUNC7(&buffer);
	return rc;
}