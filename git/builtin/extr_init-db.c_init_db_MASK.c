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
struct stat {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_2__ {int have_repository; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 unsigned int INIT_DB_EXIST_OK ; 
 unsigned int INIT_DB_QUIET ; 
 int OLD_PERM_EVERYBODY ; 
 int OLD_PERM_GROUP ; 
 int PERM_EVERYBODY ; 
 int PERM_GROUP ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* FUNC7 () ; 
 int FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 int /*<<< orphan*/  git_init_db_config ; 
 int /*<<< orphan*/  init_is_bare_repository ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (char*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC13 (char const*) ; 
 char* FUNC14 (char const*,int) ; 
 int /*<<< orphan*/  FUNC15 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 TYPE_1__* startup_info ; 
 int /*<<< orphan*/  FUNC18 (char const*,struct stat*) ; 
 int FUNC19 (char const*) ; 
 int /*<<< orphan*/  FUNC20 (char*,int,char*,int) ; 

int FUNC21(const char *git_dir, const char *real_git_dir,
	    const char *template_dir, unsigned int flags)
{
	int reinit;
	int exist_ok = flags & INIT_DB_EXIST_OK;
	char *original_git_dir = FUNC14(git_dir, 1);

	if (real_git_dir) {
		struct stat st;

		if (!exist_ok && !FUNC18(git_dir, &st))
			FUNC5(FUNC1("%s already exists"), git_dir);

		if (!exist_ok && !FUNC18(real_git_dir, &st))
			FUNC5(FUNC1("%s already exists"), real_git_dir);

		FUNC17(FUNC13(real_git_dir));
		git_dir = FUNC7();
		FUNC16(git_dir, original_git_dir);
	}
	else {
		FUNC17(FUNC13(git_dir));
		git_dir = FUNC7();
	}
	startup_info->have_repository = 1;

	/* Just look for `core.hidedotfiles` */
	FUNC9(git_init_db_config, NULL);

	FUNC15(git_dir, 0);

	init_is_bare_repository = FUNC11();

	/* Check to see if the repository version is right.
	 * Note that a newly created repository does not have
	 * config file, so this will not fail.  What we are catching
	 * is an attempt to reinitialize new repository with an old tool.
	 */
	FUNC2();

	reinit = FUNC3(template_dir, original_git_dir);

	FUNC4();

	if (FUNC8()) {
		char buf[10];
		/* We do not spell "group" and such, so that
		 * the configuration can be read by older version
		 * of git. Note, we use octal numbers for new share modes,
		 * and compatibility values for PERM_GROUP and
		 * PERM_EVERYBODY.
		 */
		if (FUNC8() < 0)
			/* force to the mode value */
			FUNC20(buf, sizeof(buf), "0%o", -FUNC8());
		else if (FUNC8() == PERM_GROUP)
			FUNC20(buf, sizeof(buf), "%d", OLD_PERM_GROUP);
		else if (FUNC8() == PERM_EVERYBODY)
			FUNC20(buf, sizeof(buf), "%d", OLD_PERM_EVERYBODY);
		else
			FUNC0("invalid value for shared_repository");
		FUNC10("core.sharedrepository", buf);
		FUNC10("receive.denyNonFastforwards", "true");
	}

	if (!(flags & INIT_DB_QUIET)) {
		int len = FUNC19(git_dir);

		if (reinit)
			FUNC12(FUNC8()
			       ? FUNC1("Reinitialized existing shared Git repository in %s%s\n")
			       : FUNC1("Reinitialized existing Git repository in %s%s\n"),
			       git_dir, len && git_dir[len-1] != '/' ? "/" : "");
		else
			FUNC12(FUNC8()
			       ? FUNC1("Initialized empty shared Git repository in %s%s\n")
			       : FUNC1("Initialized empty Git repository in %s%s\n"),
			       git_dir, len && git_dir[len-1] != '/' ? "/" : "");
	}

	FUNC6(original_git_dir);
	return 0;
}