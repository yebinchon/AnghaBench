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
struct stat {int st_mode; } ;
typedef  int /*<<< orphan*/  repo_version_string ;
typedef  int /*<<< orphan*/  junk ;

/* Variables and functions */
 int /*<<< orphan*/  F_OK ; 
 int /*<<< orphan*/  GIT_REPO_VERSION ; 
 scalar_t__ LOG_REFS_UNSET ; 
 int /*<<< orphan*/  R_OK ; 
 struct strbuf STRBUF_INIT ; 
 scalar_t__ FUNC0 (int) ; 
 int S_IXUSR ; 
 int TEST_FILEMODE ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 scalar_t__ FUNC6 (char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 char* FUNC10 () ; 
 scalar_t__ FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (char*,char const*) ; 
 int /*<<< orphan*/  git_default_config ; 
 int /*<<< orphan*/  git_init_db_config ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 char* FUNC16 (struct strbuf*,char*) ; 
 int /*<<< orphan*/ * init_db_template_dir ; 
 int /*<<< orphan*/  init_is_bare_repository ; 
 int init_shared_repository ; 
 scalar_t__ FUNC17 () ; 
 int /*<<< orphan*/  is_bare_repository_cfg ; 
 scalar_t__ log_all_ref_updates ; 
 int /*<<< orphan*/  FUNC18 (char*,struct stat*) ; 
 scalar_t__ FUNC19 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int FUNC21 (char*,char*,int) ; 
 scalar_t__ FUNC22 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC23 () ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC25 (int) ; 
 int /*<<< orphan*/  FUNC26 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC27 (char*,char*) ; 
 int /*<<< orphan*/  FUNC28 (char*) ; 
 int /*<<< orphan*/  FUNC29 (char*) ; 
 int /*<<< orphan*/  FUNC30 (char*,int,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC31(const char *template_path,
				const char *original_git_dir)
{
	struct stat st1;
	struct strbuf buf = STRBUF_INIT;
	char *path;
	char repo_version_string[10];
	char junk[2];
	int reinit;
	int filemode;
	struct strbuf err = STRBUF_INIT;

	/* Just look for `init.templatedir` */
	init_db_template_dir = NULL; /* re-set in case it was set before */
	FUNC12(git_init_db_config, NULL);

	/*
	 * First copy the templates -- we might have the default
	 * config file there, in which case we would want to read
	 * from it after installing.
	 *
	 * Before reading that config, we also need to clear out any cached
	 * values (since we've just potentially changed what's available on
	 * disk).
	 */
	FUNC5(template_path);
	FUNC13();
	FUNC23();
	FUNC12(git_default_config, NULL);

	/*
	 * We must make sure command-line options continue to override any
	 * values we might have just re-read from the config.
	 */
	is_bare_repository_cfg = init_is_bare_repository;
	if (init_shared_repository != -1)
		FUNC25(init_shared_repository);

	/*
	 * We would have created the above under user's umask -- under
	 * shared-repository settings, we would need to fix them up.
	 */
	if (FUNC11()) {
		FUNC2(FUNC9());
	}

	/*
	 * We need to create a "refs" dir in any case so that older
	 * versions of git can tell that this is a repository.
	 */
	FUNC24(FUNC15("refs"), 1);
	FUNC2(FUNC15("refs"));

	if (FUNC22(&err))
		FUNC7("failed to set up refs db: %s", err.buf);

	/*
	 * Create the default symlink from ".git/HEAD" to the "master"
	 * branch, if it does not exist yet.
	 */
	path = FUNC16(&buf, "HEAD");
	reinit = (!FUNC1(path, R_OK)
		  || FUNC21(path, junk, sizeof(junk)-1) != -1);
	if (!reinit) {
		if (FUNC6("HEAD", "refs/heads/master", NULL) < 0)
			FUNC8(1);
	}

	/* This forces creation of new config file */
	FUNC30(repo_version_string, sizeof(repo_version_string),
		  "%d", GIT_REPO_VERSION);
	FUNC14("core.repositoryformatversion", repo_version_string);

	/* Check filemode trustability */
	path = FUNC16(&buf, "config");
	filemode = TEST_FILEMODE;
	if (TEST_FILEMODE && !FUNC18(path, &st1)) {
		struct stat st2;
		filemode = (!FUNC3(path, st1.st_mode ^ S_IXUSR) &&
				!FUNC18(path, &st2) &&
				st1.st_mode != st2.st_mode &&
				!FUNC3(path, st1.st_mode));
		if (filemode && !reinit && (st1.st_mode & S_IXUSR))
			filemode = 0;
	}
	FUNC14("core.filemode", filemode ? "true" : "false");

	if (FUNC17())
		FUNC14("core.bare", "true");
	else {
		const char *work_tree = FUNC10();
		FUNC14("core.bare", "false");
		/* allow template config file to override the default */
		if (log_all_ref_updates == LOG_REFS_UNSET)
			FUNC14("core.logallrefupdates", "true");
		if (FUNC19(original_git_dir, work_tree))
			FUNC14("core.worktree", work_tree);
	}

	if (!reinit) {
		/* Check if symlink is supported in the work tree */
		path = FUNC16(&buf, "tXXXXXX");
		if (!FUNC4(FUNC29(path)) &&
		    !FUNC28(path) &&
		    !FUNC27("testing", path) &&
		    !FUNC18(path, &st1) &&
		    FUNC0(st1.st_mode))
			FUNC28(path); /* good */
		else
			FUNC14("core.symlinks", "false");

		/* Check if the filesystem is case-insensitive */
		path = FUNC16(&buf, "CoNfIg");
		if (!FUNC1(path, F_OK))
			FUNC14("core.ignorecase", "true");
		FUNC20();
	}

	FUNC26(&buf);
	return reinit;
}