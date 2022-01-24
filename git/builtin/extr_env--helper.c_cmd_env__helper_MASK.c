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
struct option {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
#define  ENV_HELPER_TYPE_BOOL 129 
#define  ENV_HELPER_TYPE_ULONG 128 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct option FUNC2 (int /*<<< orphan*/ ,char*,int*,int /*<<< orphan*/ ) ; 
 struct option FUNC3 (int /*<<< orphan*/ ,char*,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct option FUNC4 () ; 
 struct option FUNC5 (int /*<<< orphan*/ ,char*,char const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PARSE_OPT_KEEP_UNKNOWN ; 
 int /*<<< orphan*/  PARSE_OPT_NONEG ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int cmdmode ; 
 int /*<<< orphan*/  env__helper_usage ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char const*) ; 
 int FUNC8 (char const*,int) ; 
 unsigned long FUNC9 (char const*,unsigned long) ; 
 int FUNC10 (char const*) ; 
 int /*<<< orphan*/  FUNC11 (char const*,unsigned long*) ; 
 int /*<<< orphan*/  option_parse_type ; 
 int FUNC12 (int,char const**,char const*,struct option*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,struct option*) ; 

int FUNC16(int argc, const char **argv, const char *prefix)
{
	int exit_code = 0;
	const char *env_variable = NULL;
	const char *env_default = NULL;
	int ret;
	int ret_int, default_int;
	unsigned long ret_ulong, default_ulong;
	struct option opts[] = {
		FUNC3(0, "type", &cmdmode, FUNC1("type"),
			       FUNC1("value is given this type"), PARSE_OPT_NONEG,
			       option_parse_type),
		FUNC5(0, "default", &env_default, FUNC1("value"),
			   FUNC1("default for git_env_*(...) to fall back on")),
		FUNC2(0, "exit-code", &exit_code,
			 FUNC1("be quiet only use git_env_*() value as exit code")),
		FUNC4(),
	};

	argc = FUNC12(argc, argv, prefix, opts, env__helper_usage,
			     PARSE_OPT_KEEP_UNKNOWN);
	if (env_default && !*env_default)
		FUNC15(env__helper_usage, opts);
	if (!cmdmode)
		FUNC15(env__helper_usage, opts);
	if (argc != 1)
		FUNC15(env__helper_usage, opts);
	env_variable = argv[0];

	switch (cmdmode) {
	case ENV_HELPER_TYPE_BOOL:
		if (env_default) {
			default_int = FUNC10(env_default);
			if (default_int == -1) {
				FUNC7(FUNC6("option `--default' expects a boolean value with `--type=bool`, not `%s`"),
				      env_default);
				FUNC15(env__helper_usage, opts);
			}
		} else {
			default_int = 0;
		}
		ret_int = FUNC8(env_variable, default_int);
		if (!exit_code)
			FUNC14(ret_int ? "true" : "false");
		ret = ret_int;
		break;
	case ENV_HELPER_TYPE_ULONG:
		if (env_default) {
			if (!FUNC11(env_default, &default_ulong)) {
				FUNC7(FUNC6("option `--default' expects an unsigned long value with `--type=ulong`, not `%s`"),
				      env_default);
				FUNC15(env__helper_usage, opts);
			}
		} else {
			default_ulong = 0;
		}
		ret_ulong = FUNC9(env_variable, default_ulong);
		if (!exit_code)
			FUNC13("%lu\n", ret_ulong);
		ret = ret_ulong;
		break;
	default:
		FUNC0("unknown <type> value");
		break;
	}

	return !ret;
}