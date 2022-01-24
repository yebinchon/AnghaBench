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
struct strbuf {char const* buf; } ;
struct rebase_options {int dummy; } ;
struct child_process {int git_cmd; int no_stderr; int no_stdout; int no_stdin; int /*<<< orphan*/  args; } ;
struct argv_array {int /*<<< orphan*/  argv; } ;

/* Variables and functions */
 struct argv_array ARGV_ARRAY_INIT ; 
 struct child_process CHILD_PROCESS_INIT ; 
 int /*<<< orphan*/  RUN_GIT_CMD ; 
 struct strbuf STRBUF_INIT ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct argv_array*) ; 
 int /*<<< orphan*/  FUNC2 (struct argv_array*,char*,char*,char const*,char*,...) ; 
 int FUNC3 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ FUNC7 (char const*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC8 (struct child_process*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC10 (char*,struct rebase_options*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC11 (struct strbuf*,char*) ; 
 int /*<<< orphan*/  FUNC12 (struct strbuf*) ; 

__attribute__((used)) static int FUNC13(struct rebase_options *opts)
{
	const char *path = FUNC10("autostash", opts);
	struct strbuf autostash = STRBUF_INIT;
	struct child_process stash_apply = CHILD_PROCESS_INIT;

	if (!FUNC4(path))
		return 0;

	if (FUNC7(path, &autostash))
		return FUNC3(FUNC0("Could not read '%s'"), path);
	/* Ensure that the hash is not mistaken for a number */
	FUNC11(&autostash, "^0");
	FUNC2(&stash_apply.args,
			 "stash", "apply", autostash.buf, NULL);
	stash_apply.git_cmd = 1;
	stash_apply.no_stderr = stash_apply.no_stdout =
		stash_apply.no_stdin = 1;
	if (!FUNC8(&stash_apply))
		FUNC6(FUNC0("Applied autostash.\n"));
	else {
		struct argv_array args = ARGV_ARRAY_INIT;
		int res = 0;

		FUNC2(&args,
				 "stash", "store", "-m", "autostash", "-q",
				 autostash.buf, NULL);
		if (FUNC9(args.argv, RUN_GIT_CMD))
			res = FUNC3(FUNC0("Cannot store %s"), autostash.buf);
		FUNC1(&args);
		FUNC12(&autostash);
		if (res)
			return res;

		FUNC5(stderr,
			"%s", FUNC0("Applying autostash resulted in conflicts.\n"
			  "Your changes are safe in the stash.\n"
			  "You can run \"git stash pop\" or \"git stash drop\" "
			  "at any time.\n"));
	}

	FUNC12(&autostash);
	return 0;
}