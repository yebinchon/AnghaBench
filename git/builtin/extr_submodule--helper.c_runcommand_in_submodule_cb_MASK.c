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
struct submodule {char* name; } ;
struct strbuf {int /*<<< orphan*/  buf; } ;
struct object_id {int dummy; } ;
struct child_process {int use_shell; char const* dir; int git_cmd; int /*<<< orphan*/  args; int /*<<< orphan*/  env_array; } ;
struct cb_foreach {int argc; scalar_t__* argv; scalar_t__ quiet; scalar_t__ recursive; int /*<<< orphan*/  prefix; } ;
struct cache_entry {char* name; struct object_id oid; } ;

/* Variables and functions */
 struct child_process CHILD_PROCESS_INIT ; 
 struct strbuf STRBUF_INIT ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* FUNC7 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  null_oid ; 
 char* FUNC9 (struct object_id const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 
 scalar_t__ FUNC12 (struct child_process*) ; 
 int /*<<< orphan*/  FUNC13 (struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC14 (struct strbuf*) ; 
 struct submodule* FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  the_repository ; 
 char* FUNC16 () ; 

__attribute__((used)) static void FUNC17(const struct cache_entry *list_item,
				       void *cb_data)
{
	struct cb_foreach *info = cb_data;
	const char *path = list_item->name;
	const struct object_id *ce_oid = &list_item->oid;

	const struct submodule *sub;
	struct child_process cp = CHILD_PROCESS_INIT;
	char *displaypath;

	displaypath = FUNC7(path, info->prefix);

	sub = FUNC15(the_repository, &null_oid, path);

	if (!sub)
		FUNC5(FUNC0("No url found for submodule path '%s' in .gitmodules"),
			displaypath);

	if (!FUNC8(path, NULL))
		goto cleanup;

	FUNC10(&cp.env_array);

	/*
	 * For the purpose of executing <command> in the submodule,
	 * separate shell is used for the purpose of running the
	 * child process.
	 */
	cp.use_shell = 1;
	cp.dir = path;

	/*
	 * NEEDSWORK: the command currently has access to the variables $name,
	 * $sm_path, $displaypath, $sha1 and $toplevel only when the command
	 * contains a single argument. This is done for maintaining a faithful
	 * translation from shell script.
	 */
	if (info->argc == 1) {
		char *toplevel = FUNC16();
		struct strbuf sb = STRBUF_INIT;

		FUNC2(&cp.env_array, "name=%s", sub->name);
		FUNC2(&cp.env_array, "sm_path=%s", path);
		FUNC2(&cp.env_array, "displaypath=%s", displaypath);
		FUNC2(&cp.env_array, "sha1=%s",
				FUNC9(ce_oid));
		FUNC2(&cp.env_array, "toplevel=%s", toplevel);

		/*
		 * Since the path variable was accessible from the script
		 * before porting, it is also made available after porting.
		 * The environment variable "PATH" has a very special purpose
		 * on windows. And since environment variables are
		 * case-insensitive in windows, it interferes with the
		 * existing PATH variable. Hence, to avoid that, we expose
		 * path via the args argv_array and not via env_array.
		 */
		FUNC13(&sb, path);
		FUNC2(&cp.args, "path=%s; %s",
				 sb.buf, info->argv[0]);
		FUNC14(&sb);
		FUNC6(toplevel);
	} else {
		FUNC4(&cp.args, info->argv);
	}

	if (!info->quiet)
		FUNC11(FUNC0("Entering '%s'\n"), displaypath);

	if (info->argv[0] && FUNC12(&cp))
		FUNC5(FUNC0("run_command returned non-zero status for %s\n."),
			displaypath);

	if (info->recursive) {
		struct child_process cpr = CHILD_PROCESS_INIT;

		cpr.git_cmd = 1;
		cpr.dir = path;
		FUNC10(&cpr.env_array);

		FUNC3(&cpr.args, "--super-prefix", NULL);
		FUNC2(&cpr.args, "%s/", displaypath);
		FUNC3(&cpr.args, "submodule--helper", "foreach", "--recursive",
				NULL);

		if (info->quiet)
			FUNC1(&cpr.args, "--quiet");

		FUNC1(&cpr.args, "--");
		FUNC4(&cpr.args, info->argv);

		if (FUNC12(&cpr))
			FUNC5(FUNC0("run_command returned non-zero status while "
				"recursing in the nested submodules of %s\n."),
				displaypath);
	}

cleanup:
	FUNC6(displaypath);
}