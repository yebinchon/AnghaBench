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
struct config_options {int /*<<< orphan*/  ignore_cmdline; int /*<<< orphan*/  ignore_worktree; int /*<<< orphan*/  ignore_repo; scalar_t__ system_gently; scalar_t__ git_dir; scalar_t__ commondir; } ;
typedef  int /*<<< orphan*/  config_fn_t ;

/* Variables and functions */
 int /*<<< orphan*/  ACCESS_EACCES_OK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  CONFIG_SCOPE_CMDLINE ; 
 int /*<<< orphan*/  CONFIG_SCOPE_GLOBAL ; 
 int /*<<< orphan*/  CONFIG_SCOPE_REPO ; 
 int /*<<< orphan*/  CONFIG_SCOPE_SYSTEM ; 
 int /*<<< orphan*/  CONFIG_SCOPE_UNKNOWN ; 
 int /*<<< orphan*/  R_OK ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current_parsing_scope ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char*,void*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,void*) ; 
 scalar_t__ FUNC8 () ; 
 char* FUNC9 () ; 
 char* FUNC10 (char*) ; 
 char* FUNC11 (char*,scalar_t__) ; 
 scalar_t__ repository_format_worktree_config ; 
 char* FUNC12 (char*) ; 

__attribute__((used)) static int FUNC13(const struct config_options *opts,
				  config_fn_t fn, void *data)
{
	int ret = 0;
	char *xdg_config = FUNC12("config");
	char *user_config = FUNC4("~/.gitconfig", 0);
	char *repo_config;

	if (opts->commondir)
		repo_config = FUNC11("%s/config", opts->commondir);
	else if (opts->git_dir)
		FUNC0("git_dir without commondir");
	else
		repo_config = NULL;

	current_parsing_scope = CONFIG_SCOPE_SYSTEM;
	if (FUNC8() && !FUNC2(FUNC9(), R_OK,
						  opts->system_gently ?
						  ACCESS_EACCES_OK : 0))
		ret += FUNC6(fn, FUNC9(),
					    data);

	current_parsing_scope = CONFIG_SCOPE_GLOBAL;
	if (xdg_config && !FUNC2(xdg_config, R_OK, ACCESS_EACCES_OK))
		ret += FUNC6(fn, xdg_config, data);

	if (user_config && !FUNC2(user_config, R_OK, ACCESS_EACCES_OK))
		ret += FUNC6(fn, user_config, data);

	current_parsing_scope = CONFIG_SCOPE_REPO;
	if (!opts->ignore_repo && repo_config &&
	    !FUNC2(repo_config, R_OK, 0))
		ret += FUNC6(fn, repo_config, data);

	/*
	 * Note: this should have a new scope, CONFIG_SCOPE_WORKTREE.
	 * But let's not complicate things before it's actually needed.
	 */
	if (!opts->ignore_worktree && repository_format_worktree_config) {
		char *path = FUNC10("config.worktree");
		if (!FUNC2(path, R_OK, 0))
			ret += FUNC6(fn, path, data);
		FUNC5(path);
	}

	current_parsing_scope = CONFIG_SCOPE_CMDLINE;
	if (!opts->ignore_cmdline && FUNC7(fn, data) < 0)
		FUNC3(FUNC1("unable to parse command-line config"));

	current_parsing_scope = CONFIG_SCOPE_UNKNOWN;
	FUNC5(xdg_config);
	FUNC5(user_config);
	FUNC5(repo_config);
	return ret;
}