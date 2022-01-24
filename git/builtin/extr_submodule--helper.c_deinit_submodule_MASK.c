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
struct submodule {char const* name; char* url; } ;
struct strbuf {scalar_t__ len; } ;
struct child_process {int git_cmd; int /*<<< orphan*/  args; } ;

/* Variables and functions */
 struct child_process CHILD_PROCESS_INIT ; 
 unsigned int OPT_FORCE ; 
 unsigned int OPT_QUIET ; 
 struct strbuf STRBUF_INIT ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct child_process*,struct strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (char const*) ; 
 scalar_t__ FUNC9 (char const*,int) ; 
 int /*<<< orphan*/  null_oid ; 
 int /*<<< orphan*/  FUNC10 (char const*,char const*,...) ; 
 int /*<<< orphan*/  FUNC11 (struct strbuf*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (struct child_process*) ; 
 int /*<<< orphan*/  FUNC13 (struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC14 (struct strbuf*) ; 
 struct submodule* FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC16 (struct submodule const*) ; 
 int /*<<< orphan*/  the_repository ; 
 char* FUNC17 (char*,char const*) ; 

__attribute__((used)) static void FUNC18(const char *path, const char *prefix,
			     unsigned int flags)
{
	const struct submodule *sub;
	char *displaypath = NULL;
	struct child_process cp_config = CHILD_PROCESS_INIT;
	struct strbuf sb_config = STRBUF_INIT;
	char *sub_git_dir = FUNC17("%s/.git", path);

	sub = FUNC15(the_repository, &null_oid, path);

	if (!sub || !sub->name)
		goto cleanup;

	displaypath = FUNC6(path, prefix);

	/* remove the submodule work tree (unless the user already did it) */
	if (FUNC8(path)) {
		struct strbuf sb_rm = STRBUF_INIT;
		const char *format;

		/*
		 * protect submodules containing a .git directory
		 * NEEDSWORK: instead of dying, automatically call
		 * absorbgitdirs and (possibly) warn.
		 */
		if (FUNC8(sub_git_dir))
			FUNC4(FUNC0("Submodule work tree '%s' contains a .git "
			      "directory (use 'rm -rf' if you really want "
			      "to remove it including all of its history)"),
			    displaypath);

		if (!(flags & OPT_FORCE)) {
			struct child_process cp_rm = CHILD_PROCESS_INIT;
			cp_rm.git_cmd = 1;
			FUNC2(&cp_rm.args, "rm", "-qn",
					 path, NULL);

			if (FUNC12(&cp_rm))
				FUNC4(FUNC0("Submodule work tree '%s' contains local "
				      "modifications; use '-f' to discard them"),
				      displaypath);
		}

		FUNC13(&sb_rm, path);

		if (!FUNC11(&sb_rm, 0))
			format = FUNC0("Cleared directory '%s'\n");
		else
			format = FUNC0("Could not remove submodule work tree '%s'\n");

		if (!(flags & OPT_QUIET))
			FUNC10(format, displaypath);

		FUNC16(sub);

		FUNC14(&sb_rm);
	}

	if (FUNC9(path, 0777))
		FUNC10(FUNC0("could not create empty submodule directory %s"),
		      displaypath);

	cp_config.git_cmd = 1;
	FUNC2(&cp_config.args, "config", "--get-regexp", NULL);
	FUNC1(&cp_config.args, "submodule.%s\\.", sub->name);

	/* remove the .git/config entries (unless the user already did it) */
	if (!FUNC3(&cp_config, &sb_config, 0) && sb_config.len) {
		char *sub_key = FUNC17("submodule.%s", sub->name);
		/*
		 * remove the whole section so we have a clean state when
		 * the user later decides to init this submodule again
		 */
		FUNC7(NULL, sub_key, NULL);
		if (!(flags & OPT_QUIET))
			FUNC10(FUNC0("Submodule '%s' (%s) unregistered for path '%s'\n"),
				 sub->name, sub->url, displaypath);
		FUNC5(sub_key);
	}

cleanup:
	FUNC5(displaypath);
	FUNC5(sub_git_dir);
	FUNC14(&sb_config);
}