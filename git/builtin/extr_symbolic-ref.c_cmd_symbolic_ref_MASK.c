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
 struct option FUNC1 (char,char*,int*,int /*<<< orphan*/ ) ; 
 struct option FUNC2 () ; 
 struct option FUNC3 (char,int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct option FUNC4 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REF_NO_DEREF ; 
 int FUNC5 (char const*,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char const*,char const*) ; 
 int FUNC7 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  git_default_config ; 
 int /*<<< orphan*/  git_symbolic_ref_usage ; 
 int FUNC10 (int,char const**,char const*,struct option*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC12 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,struct option*) ; 

int FUNC14(int argc, const char **argv, const char *prefix)
{
	int quiet = 0, delete = 0, shorten = 0, ret = 0;
	const char *msg = NULL;
	struct option options[] = {
		FUNC4(&quiet,
			FUNC0("suppress error message for non-symbolic (detached) refs")),
		FUNC1('d', "delete", &delete, FUNC0("delete symbolic ref")),
		FUNC1(0, "short", &shorten, FUNC0("shorten ref output")),
		FUNC3('m', NULL, &msg, FUNC0("reason"), FUNC0("reason of the update")),
		FUNC2(),
	};

	FUNC9(git_default_config, NULL);
	argc = FUNC10(argc, argv, prefix, options,
			     git_symbolic_ref_usage, 0);
	if (msg && !*msg)
		FUNC8("Refusing to perform update with empty message");

	if (delete) {
		if (argc != 1)
			FUNC13(git_symbolic_ref_usage, options);
		ret = FUNC5(argv[0], 1, 0, 0);
		if (ret)
			FUNC8("Cannot delete %s, not a symbolic ref", argv[0]);
		if (!FUNC12(argv[0], "HEAD"))
			FUNC8("deleting '%s' is not allowed", argv[0]);
		return FUNC7(NULL, argv[0], NULL, REF_NO_DEREF);
	}

	switch (argc) {
	case 1:
		ret = FUNC5(argv[0], quiet, shorten, 1);
		break;
	case 2:
		if (!FUNC12(argv[0], "HEAD") &&
		    !FUNC11(argv[1], "refs/"))
			FUNC8("Refusing to point HEAD outside of refs/");
		ret = !!FUNC6(argv[0], argv[1], msg);
		break;
	default:
		FUNC13(git_symbolic_ref_usage, options);
	}
	return ret;
}