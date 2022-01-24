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
struct strbuf {char* buf; int len; } ;
struct TYPE_2__ {int /*<<< orphan*/  oid; } ;
struct commit {TYPE_1__ object; } ;
struct argv_array {char const** argv; } ;
struct child_process {int git_cmd; char const** env; int no_stdin; int stdout_to_stderr; char const* dir; char* trace2_hook_name; struct argv_array args; int /*<<< orphan*/ * argv; } ;
struct add_opts {scalar_t__ checkout; int /*<<< orphan*/  keep_locked; scalar_t__ quiet; int /*<<< orphan*/  force; int /*<<< orphan*/  detach; } ;

/* Variables and functions */
 struct argv_array ARGV_ARRAY_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 struct child_process CHILD_PROCESS_INIT ; 
 scalar_t__ EEXIST ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GIT_DIR_ENVIRONMENT ; 
 int /*<<< orphan*/  GIT_WORK_TREE_ENVIRONMENT ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct argv_array*) ; 
 int /*<<< orphan*/  FUNC5 (struct argv_array*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct argv_array*,char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC7 (struct argv_array*,char*,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 char* FUNC12 (char*) ; 
 char const* FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (struct strbuf*,char*,char const*) ; 
 int is_junk ; 
 int /*<<< orphan*/  junk_git_dir ; 
 int /*<<< orphan*/  junk_pid ; 
 int /*<<< orphan*/  junk_work_tree ; 
 struct commit* FUNC16 (char const*) ; 
 scalar_t__ FUNC17 (char*,int) ; 
 int /*<<< orphan*/  null_oid ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (char const*) ; 
 scalar_t__ FUNC20 (char*) ; 
 int /*<<< orphan*/  remove_junk ; 
 int /*<<< orphan*/  remove_junk_on_signal ; 
 int FUNC21 (struct child_process*) ; 
 scalar_t__ FUNC22 (char*) ; 
 int /*<<< orphan*/  FUNC23 (char*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (struct strbuf*,char const*,int) ; 
 int /*<<< orphan*/  FUNC26 (struct strbuf*,char*,...) ; 
 int /*<<< orphan*/  FUNC27 (struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC28 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC29 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC30 (struct strbuf*,int) ; 
 char* FUNC31 (char*,char) ; 
 int /*<<< orphan*/  FUNC32 (char const*) ; 
 int /*<<< orphan*/  FUNC33 (char const*,struct add_opts const*) ; 
 char* FUNC34 (char const*,int*) ; 
 int /*<<< orphan*/  FUNC35 (char const*,char*,...) ; 
 int /*<<< orphan*/  FUNC36 (char const*) ; 

__attribute__((used)) static int FUNC37(const char *path, const char *refname,
			const struct add_opts *opts)
{
	struct strbuf sb_git = STRBUF_INIT, sb_repo = STRBUF_INIT;
	struct strbuf sb = STRBUF_INIT;
	const char *name;
	struct child_process cp = CHILD_PROCESS_INIT;
	struct argv_array child_env = ARGV_ARRAY_INIT;
	unsigned int counter = 0;
	int len, ret;
	struct strbuf symref = STRBUF_INIT;
	struct commit *commit = NULL;
	int is_branch = 0;
	struct strbuf sb_name = STRBUF_INIT;

	FUNC33(path, opts);

	/* is 'refname' a branch or commit? */
	if (!opts->detach && !FUNC27(&symref, refname) &&
	    FUNC20(symref.buf)) {
		is_branch = 1;
		if (!opts->force)
			FUNC11(symref.buf, 0);
	}
	commit = FUNC16(refname);
	if (!commit)
		FUNC9(FUNC2("invalid reference: %s"), refname);

	name = FUNC34(path, &len);
	FUNC25(&sb, name, path + len - name);
	FUNC23(sb.buf, &sb_name);
	if (!sb_name.len)
		FUNC0("How come '%s' becomes empty after sanitization?", sb.buf);
	FUNC29(&sb);
	name = sb_name.buf;
	FUNC15(&sb_repo, "worktrees/%s", name);
	len = sb_repo.len;
	if (FUNC22(sb_repo.buf))
		FUNC10(FUNC2("could not create leading directories of '%s'"),
			  sb_repo.buf);

	while (FUNC17(sb_repo.buf, 0777)) {
		counter++;
		if ((errno != EEXIST) || !counter /* overflow */)
			FUNC10(FUNC2("could not create directory of '%s'"),
				  sb_repo.buf);
		FUNC30(&sb_repo, len);
		FUNC26(&sb_repo, "%d", counter);
	}
	name = FUNC31(sb_repo.buf, '/') + 1;

	junk_pid = FUNC14();
	FUNC8(remove_junk);
	FUNC24(remove_junk_on_signal);

	junk_git_dir = FUNC36(sb_repo.buf);
	is_junk = 1;

	/*
	 * lock the incomplete repo so prune won't delete it, unlock
	 * after the preparation is over.
	 */
	FUNC26(&sb, "%s/locked", sb_repo.buf);
	if (!opts->keep_locked)
		FUNC35(sb.buf, "initializing");
	else
		FUNC35(sb.buf, "added with --lock");

	FUNC26(&sb_git, "%s/.git", path);
	if (FUNC22(sb_git.buf))
		FUNC10(FUNC2("could not create leading directories of '%s'"),
			  sb_git.buf);
	junk_work_tree = FUNC36(path);

	FUNC29(&sb);
	FUNC26(&sb, "%s/gitdir", sb_repo.buf);
	FUNC35(sb.buf, "%s", FUNC19(sb_git.buf));
	FUNC35(sb_git.buf, "gitdir: %s/worktrees/%s",
		   FUNC19(FUNC13()), name);
	/*
	 * This is to keep resolve_ref() happy. We need a valid HEAD
	 * or is_git_directory() will reject the directory. Any value which
	 * looks like an object ID will do since it will be immediately
	 * replaced by the symbolic-ref or update-ref invocation in the new
	 * worktree.
	 */
	FUNC29(&sb);
	FUNC26(&sb, "%s/HEAD", sb_repo.buf);
	FUNC35(sb.buf, "%s", FUNC18(&null_oid));
	FUNC29(&sb);
	FUNC26(&sb, "%s/commondir", sb_repo.buf);
	FUNC35(sb.buf, "../..");

	FUNC6(&child_env, "%s=%s", GIT_DIR_ENVIRONMENT, sb_git.buf);
	FUNC6(&child_env, "%s=%s", GIT_WORK_TREE_ENVIRONMENT, path);
	cp.git_cmd = 1;

	if (!is_branch)
		FUNC7(&cp.args, "update-ref", "HEAD",
				 FUNC18(&commit->object.oid), NULL);
	else {
		FUNC7(&cp.args, "symbolic-ref", "HEAD",
				 symref.buf, NULL);
		if (opts->quiet)
			FUNC5(&cp.args, "--quiet");
	}

	cp.env = child_env.argv;
	ret = FUNC21(&cp);
	if (ret)
		goto done;

	if (opts->checkout) {
		cp.argv = NULL;
		FUNC4(&cp.args);
		FUNC7(&cp.args, "reset", "--hard", NULL);
		if (opts->quiet)
			FUNC5(&cp.args, "--quiet");
		cp.env = child_env.argv;
		ret = FUNC21(&cp);
		if (ret)
			goto done;
	}

	is_junk = 0;
	FUNC1(junk_work_tree);
	FUNC1(junk_git_dir);

done:
	if (ret || !opts->keep_locked) {
		FUNC29(&sb);
		FUNC26(&sb, "%s/locked", sb_repo.buf);
		FUNC32(sb.buf);
	}

	/*
	 * Hook failure does not warrant worktree deletion, so run hook after
	 * is_junk is cleared, but do return appropriate code when hook fails.
	 */
	if (!ret && opts->checkout) {
		const char *hook = FUNC12("post-checkout");
		if (hook) {
			const char *env[] = { "GIT_DIR", "GIT_WORK_TREE", NULL };
			cp.git_cmd = 0;
			cp.no_stdin = 1;
			cp.stdout_to_stderr = 1;
			cp.dir = path;
			cp.env = env;
			cp.argv = NULL;
			cp.trace2_hook_name = "post-checkout";
			FUNC7(&cp.args, FUNC3(hook),
					 FUNC18(&null_oid),
					 FUNC18(&commit->object.oid),
					 "1", NULL);
			ret = FUNC21(&cp);
		}
	}

	FUNC4(&child_env);
	FUNC28(&sb);
	FUNC28(&symref);
	FUNC28(&sb_repo);
	FUNC28(&sb_git);
	FUNC28(&sb_name);
	return ret;
}