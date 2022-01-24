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
struct option {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  have_repository; } ;

/* Variables and functions */
 char* GIT_DIR_ENVIRONMENT ; 
 char* GIT_WORK_TREE_ENVIRONMENT ; 
 int /*<<< orphan*/ * FUNC0 (char*) ; 
 struct option FUNC1 (char*,int*,int /*<<< orphan*/ *) ; 
 struct option FUNC2 (char,char*,int*,int /*<<< orphan*/ *) ; 
 struct option FUNC3 () ; 
 struct option FUNC4 (char,char*,int*,int /*<<< orphan*/ *,int,int) ; 
 struct option FUNC5 (char,char*,char**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int PARSE_OPT_HIDDEN ; 
 int PARSE_OPT_KEEP_DASHDASH ; 
 int PARSE_OPT_KEEP_UNKNOWN ; 
 int PARSE_OPT_NONEG ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  builtin_difftool_usage ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  difftool_config ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int has_symlinks ; 
 int FUNC12 (int,char const**,char const*,struct option*,int /*<<< orphan*/ ,int) ; 
 int FUNC13 () ; 
 int FUNC14 (char*,int,char const*,int,char const**) ; 
 int FUNC15 (int,char const*,int,char const**) ; 
 int /*<<< orphan*/  FUNC16 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 TYPE_1__* startup_info ; 
 int trust_exit_code ; 

int FUNC18(int argc, const char **argv, const char *prefix)
{
	int use_gui_tool = 0, dir_diff = 0, prompt = -1, symlinks = 0,
	    tool_help = 0, no_index = 0;
	static char *difftool_cmd = NULL, *extcmd = NULL;
	struct option builtin_difftool_options[] = {
		FUNC2('g', "gui", &use_gui_tool,
			 FUNC0("use `diff.guitool` instead of `diff.tool`")),
		FUNC2('d', "dir-diff", &dir_diff,
			 FUNC0("perform a full-directory diff")),
		FUNC4('y', "no-prompt", &prompt,
			FUNC0("do not prompt before launching a diff tool"),
			0, PARSE_OPT_NONEG),
		FUNC4(0, "prompt", &prompt, NULL,
			1, PARSE_OPT_NONEG | PARSE_OPT_HIDDEN),
		FUNC2(0, "symlinks", &symlinks,
			 FUNC0("use symlinks in dir-diff mode")),
		FUNC5('t', "tool", &difftool_cmd, FUNC0("tool"),
			   FUNC0("use the specified diff tool")),
		FUNC2(0, "tool-help", &tool_help,
			 FUNC0("print a list of diff tools that may be used with "
			    "`--tool`")),
		FUNC2(0, "trust-exit-code", &trust_exit_code,
			 FUNC0("make 'git-difftool' exit when an invoked diff "
			    "tool returns a non - zero exit code")),
		FUNC5('x', "extcmd", &extcmd, FUNC0("command"),
			   FUNC0("specify a custom command for viewing diffs")),
		FUNC1("no-index", &no_index, FUNC0("passed to `diff`")),
		FUNC3()
	};

	FUNC11(difftool_config, NULL);
	symlinks = has_symlinks;

	argc = FUNC12(argc, argv, prefix, builtin_difftool_options,
			     builtin_difftool_usage, PARSE_OPT_KEEP_UNKNOWN |
			     PARSE_OPT_KEEP_DASHDASH);

	if (tool_help)
		return FUNC13();

	if (!no_index && !startup_info->have_repository)
		FUNC8(FUNC6("difftool requires worktree or --no-index"));

	if (!no_index){
		FUNC17();
		FUNC16(GIT_DIR_ENVIRONMENT, FUNC7(FUNC9()), 1);
		FUNC16(GIT_WORK_TREE_ENVIRONMENT, FUNC7(FUNC10()), 1);
	} else if (dir_diff)
		FUNC8(FUNC6("--dir-diff is incompatible with --no-index"));

	if (use_gui_tool + !!difftool_cmd + !!extcmd > 1)
		FUNC8(FUNC6("--gui, --tool and --extcmd are mutually exclusive"));

	if (use_gui_tool)
		FUNC16("GIT_MERGETOOL_GUI", "true", 1);
	else if (difftool_cmd) {
		if (*difftool_cmd)
			FUNC16("GIT_DIFF_TOOL", difftool_cmd, 1);
		else
			FUNC8(FUNC6("no <tool> given for --tool=<tool>"));
	}

	if (extcmd) {
		if (*extcmd)
			FUNC16("GIT_DIFFTOOL_EXTCMD", extcmd, 1);
		else
			FUNC8(FUNC6("no <cmd> given for --extcmd=<cmd>"));
	}

	FUNC16("GIT_DIFFTOOL_TRUST_EXIT_CODE",
	       trust_exit_code ? "true" : "false", 1);

	/*
	 * In directory diff mode, 'git-difftool--helper' is called once
	 * to compare the a / b directories. In file diff mode, 'git diff'
	 * will invoke a separate instance of 'git-difftool--helper' for
	 * each file that changed.
	 */
	if (dir_diff)
		return FUNC14(extcmd, symlinks, prefix, argc, argv);
	return FUNC15(prompt, prefix, argc, argv);
}