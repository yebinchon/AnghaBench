#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct worktree {int dummy; } ;
struct TYPE_8__ {int respect_includes; int /*<<< orphan*/  git_dir; int /*<<< orphan*/  commondir; } ;
struct TYPE_7__ {char* file; int use_stdin; scalar_t__ blob; } ;
struct TYPE_6__ {int /*<<< orphan*/  have_repository; } ;

/* Variables and functions */
 int ACTION_ADD ; 
 int ACTION_EDIT ; 
 int ACTION_GET ; 
 int ACTION_GET_ALL ; 
 int ACTION_GET_COLOR ; 
 int ACTION_GET_COLORBOOL ; 
 int ACTION_GET_REGEXP ; 
 int ACTION_GET_URLMATCH ; 
 int ACTION_LIST ; 
 int ACTION_REMOVE_SECTION ; 
 int ACTION_RENAME_SECTION ; 
 int ACTION_REPLACE_ALL ; 
 int ACTION_SET ; 
 int ACTION_SET_ALL ; 
 int ACTION_UNSET ; 
 int ACTION_UNSET_ALL ; 
 int /*<<< orphan*/  CONFIG_ENVIRONMENT ; 
 int CONFIG_NOTHING_SET ; 
 char const* CONFIG_REGEX_NONE ; 
 scalar_t__ EEXIST ; 
 scalar_t__ FUNC0 (int) ; 
 int O_CREAT ; 
 int O_EXCL ; 
 int O_WRONLY ; 
 int PAGING_ACTIONS ; 
 int /*<<< orphan*/  PARSE_OPT_STOP_AT_NON_OPTION ; 
 int /*<<< orphan*/  R_OK ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int actions ; 
 int /*<<< orphan*/  builtin_config_options ; 
 int /*<<< orphan*/  builtin_config_usage ; 
 int /*<<< orphan*/  FUNC4 (int,int,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  color_stdout_is_tty ; 
 TYPE_4__ config_options ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*,TYPE_4__*) ; 
 char* FUNC8 () ; 
 scalar_t__ default_value ; 
 char delim ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int do_all ; 
 scalar_t__ end_null ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,...) ; 
 char* FUNC12 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (struct worktree**) ; 
 int /*<<< orphan*/  FUNC15 (char const*,char const*) ; 
 int FUNC16 (char const*,int) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int FUNC19 (char const*,char const*) ; 
 int FUNC20 (char const*,char const*) ; 
 struct worktree** FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (char*,char const*) ; 
 int FUNC25 (char*,char const*,char const*) ; 
 int FUNC26 (char*,char const*,char*) ; 
 int FUNC27 (char*,char const*,char*,char const*,int) ; 
 int /*<<< orphan*/  git_default_config ; 
 char* FUNC28 () ; 
 void* FUNC29 (char*) ; 
 TYPE_2__ given_config_source ; 
 int /*<<< orphan*/  FUNC30 (char*) ; 
 char key_delim ; 
 int /*<<< orphan*/  FUNC31 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC32 (char const*,char const*) ; 
 scalar_t__ omit_values ; 
 int FUNC33 (char*,int,int) ; 
 int FUNC34 (int,char const**,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC35 (char const*,char*) ; 
 scalar_t__ repository_format_worktree_config ; 
 int respect_includes_opt ; 
 int /*<<< orphan*/  FUNC36 (char*,int) ; 
 int /*<<< orphan*/  show_all_config ; 
 int show_keys ; 
 scalar_t__ show_origin ; 
 TYPE_1__* startup_info ; 
 int /*<<< orphan*/  FUNC37 (char*,char*) ; 
 char term ; 
 scalar_t__ type ; 
 int /*<<< orphan*/  FUNC38 () ; 
 int use_global_config ; 
 int use_key_regexp ; 
 int use_local_config ; 
 int use_system_config ; 
 int use_worktree_config ; 
 int /*<<< orphan*/  FUNC39 (int,char*) ; 
 char* FUNC40 (char*) ; 
 void* FUNC41 (char*) ; 
 char* FUNC42 (int /*<<< orphan*/ ) ; 

int FUNC43(int argc, const char **argv, const char *prefix)
{
	int nongit = !startup_info->have_repository;
	char *value;

	given_config_source.file = FUNC42(FUNC22(CONFIG_ENVIRONMENT));

	argc = FUNC34(argc, argv, prefix, builtin_config_options,
			     builtin_config_usage,
			     PARSE_OPT_STOP_AT_NON_OPTION);

	if (use_global_config + use_system_config + use_local_config +
	    use_worktree_config +
	    !!given_config_source.file + !!given_config_source.blob > 1) {
		FUNC11(FUNC2("only one config file at a time"));
		FUNC38();
	}

	if (use_local_config && nongit)
		FUNC9(FUNC2("--local can only be used inside a git repository"));

	if (given_config_source.blob && nongit)
		FUNC9(FUNC2("--blob can only be used inside a git repository"));

	if (given_config_source.file &&
			!FUNC37(given_config_source.file, "-")) {
		given_config_source.file = NULL;
		given_config_source.use_stdin = 1;
	}

	if (use_global_config) {
		char *user_config = FUNC12("~/.gitconfig", 0);
		char *xdg_config = FUNC40("config");

		if (!user_config)
			/*
			 * It is unknown if HOME/.gitconfig exists, so
			 * we do not know if we should write to XDG
			 * location; error out even if XDG_CONFIG_HOME
			 * is set and points at a sane location.
			 */
			FUNC9(FUNC2("$HOME not set"));

		if (FUNC3(user_config, R_OK, 0) &&
		    xdg_config && !FUNC3(xdg_config, R_OK, 0)) {
			given_config_source.file = xdg_config;
			FUNC13(user_config);
		} else {
			given_config_source.file = user_config;
			FUNC13(xdg_config);
		}
	}
	else if (use_system_config)
		given_config_source.file = FUNC28();
	else if (use_local_config)
		given_config_source.file = FUNC29("config");
	else if (use_worktree_config) {
		struct worktree **worktrees = FUNC21(0);
		if (repository_format_worktree_config)
			given_config_source.file = FUNC29("config.worktree");
		else if (worktrees[0] && worktrees[1])
			FUNC9(FUNC2("--worktree cannot be used with multiple "
			      "working trees unless the config\n"
			      "extension worktreeConfig is enabled. "
			      "Please read \"CONFIGURATION FILE\"\n"
			      "section in \"git help worktree\" for details"));
		else
			given_config_source.file = FUNC29("config");
		FUNC14(worktrees);
	} else if (given_config_source.file) {
		if (!FUNC30(given_config_source.file) && prefix)
			given_config_source.file =
				FUNC35(prefix, given_config_source.file);
	}

	if (respect_includes_opt == -1)
		config_options.respect_includes = !given_config_source.file;
	else
		config_options.respect_includes = respect_includes_opt;
	if (!nongit) {
		config_options.commondir = FUNC17();
		config_options.git_dir = FUNC18();
	}

	if (end_null) {
		term = '\0';
		delim = '\n';
		key_delim = '\n';
	}

	if ((actions & (ACTION_GET_COLOR|ACTION_GET_COLORBOOL)) && type) {
		FUNC11(FUNC2("--get-color and variable type are incoherent"));
		FUNC38();
	}

	if (FUNC0(actions)) {
		FUNC11(FUNC2("only one action at a time"));
		FUNC38();
	}
	if (actions == 0)
		switch (argc) {
		case 1: actions = ACTION_GET; break;
		case 2: actions = ACTION_SET; break;
		case 3: actions = ACTION_SET_ALL; break;
		default:
			FUNC38();
		}
	if (omit_values &&
	    !(actions == ACTION_LIST || actions == ACTION_GET_REGEXP)) {
		FUNC11(FUNC2("--name-only is only applicable to --list or --get-regexp"));
		FUNC38();
	}

	if (show_origin && !(actions &
		(ACTION_GET|ACTION_GET_ALL|ACTION_GET_REGEXP|ACTION_LIST))) {
		FUNC11(FUNC2("--show-origin is only applicable to --get, --get-all, "
			"--get-regexp, and --list"));
		FUNC38();
	}

	if (default_value && !(actions & ACTION_GET)) {
		FUNC11(FUNC2("--default is only applicable to --get"));
		FUNC38();
	}

	if (actions & PAGING_ACTIONS)
		FUNC36("config", 1);

	if (actions == ACTION_LIST) {
		FUNC4(argc, 0, 0);
		if (FUNC7(show_all_config, NULL,
					&given_config_source,
					&config_options) < 0) {
			if (given_config_source.file)
				FUNC10(FUNC2("unable to read config file '%s'"),
					  given_config_source.file);
			else
				FUNC9(FUNC2("error processing config file(s)"));
		}
	}
	else if (actions == ACTION_EDIT) {
		char *config_file;

		FUNC4(argc, 0, 0);
		if (!given_config_source.file && nongit)
			FUNC9(FUNC2("not in a git directory"));
		if (given_config_source.use_stdin)
			FUNC9(FUNC2("editing stdin is not supported"));
		if (given_config_source.blob)
			FUNC9(FUNC2("editing blobs is not supported"));
		FUNC23(git_default_config, NULL);
		config_file = given_config_source.file ?
				FUNC41(given_config_source.file) :
				FUNC29("config");
		if (use_global_config) {
			int fd = FUNC33(config_file, O_CREAT | O_EXCL | O_WRONLY, 0666);
			if (fd >= 0) {
				char *content = FUNC8();
				FUNC39(fd, content);
				FUNC13(content);
				FUNC6(fd);
			}
			else if (errno != EEXIST)
				FUNC10(FUNC2("cannot create configuration file %s"), config_file);
		}
		FUNC31(config_file, NULL, NULL);
		FUNC13(config_file);
	}
	else if (actions == ACTION_SET) {
		int ret;
		FUNC5();
		FUNC4(argc, 2, 2);
		value = FUNC32(argv[0], argv[1]);
		FUNC1(value);
		ret = FUNC26(given_config_source.file, argv[0], value);
		if (ret == CONFIG_NOTHING_SET)
			FUNC11(FUNC2("cannot overwrite multiple values with a single value\n"
			"       Use a regexp, --add or --replace-all to change %s."), argv[0]);
		return ret;
	}
	else if (actions == ACTION_SET_ALL) {
		FUNC5();
		FUNC4(argc, 2, 3);
		value = FUNC32(argv[0], argv[1]);
		FUNC1(value);
		return FUNC27(given_config_source.file,
							      argv[0], value, argv[2], 0);
	}
	else if (actions == ACTION_ADD) {
		FUNC5();
		FUNC4(argc, 2, 2);
		value = FUNC32(argv[0], argv[1]);
		FUNC1(value);
		return FUNC27(given_config_source.file,
							      argv[0], value,
							      CONFIG_REGEX_NONE, 0);
	}
	else if (actions == ACTION_REPLACE_ALL) {
		FUNC5();
		FUNC4(argc, 2, 3);
		value = FUNC32(argv[0], argv[1]);
		FUNC1(value);
		return FUNC27(given_config_source.file,
							      argv[0], value, argv[2], 1);
	}
	else if (actions == ACTION_GET) {
		FUNC4(argc, 1, 2);
		return FUNC20(argv[0], argv[1]);
	}
	else if (actions == ACTION_GET_ALL) {
		do_all = 1;
		FUNC4(argc, 1, 2);
		return FUNC20(argv[0], argv[1]);
	}
	else if (actions == ACTION_GET_REGEXP) {
		show_keys = 1;
		use_key_regexp = 1;
		do_all = 1;
		FUNC4(argc, 1, 2);
		return FUNC20(argv[0], argv[1]);
	}
	else if (actions == ACTION_GET_URLMATCH) {
		FUNC4(argc, 2, 2);
		return FUNC19(argv[0], argv[1]);
	}
	else if (actions == ACTION_UNSET) {
		FUNC5();
		FUNC4(argc, 1, 2);
		if (argc == 2)
			return FUNC27(given_config_source.file,
								      argv[0], NULL, argv[1], 0);
		else
			return FUNC26(given_config_source.file,
							     argv[0], NULL);
	}
	else if (actions == ACTION_UNSET_ALL) {
		FUNC5();
		FUNC4(argc, 1, 2);
		return FUNC27(given_config_source.file,
							      argv[0], NULL, argv[1], 1);
	}
	else if (actions == ACTION_RENAME_SECTION) {
		int ret;
		FUNC5();
		FUNC4(argc, 2, 2);
		ret = FUNC25(given_config_source.file,
							argv[0], argv[1]);
		if (ret < 0)
			return ret;
		if (ret == 0)
			FUNC9(FUNC2("no such section: %s"), argv[0]);
	}
	else if (actions == ACTION_REMOVE_SECTION) {
		int ret;
		FUNC5();
		FUNC4(argc, 1, 1);
		ret = FUNC25(given_config_source.file,
							argv[0], NULL);
		if (ret < 0)
			return ret;
		if (ret == 0)
			FUNC9(FUNC2("no such section: %s"), argv[0]);
	}
	else if (actions == ACTION_GET_COLOR) {
		FUNC4(argc, 1, 2);
		FUNC15(argv[0], argv[1]);
	}
	else if (actions == ACTION_GET_COLORBOOL) {
		FUNC4(argc, 1, 2);
		if (argc == 2)
			color_stdout_is_tty = FUNC24("command line", argv[1]);
		return FUNC16(argv[0], argc == 2);
	}

	return 0;
}