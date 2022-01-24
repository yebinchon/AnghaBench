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
struct string_list {int nr; TYPE_1__* items; } ;
struct rerere_id {int dummy; } ;
struct pathspec {int dummy; } ;
struct option {int dummy; } ;
struct TYPE_2__ {char* string; struct rerere_id* util; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct option FUNC1 () ; 
 struct option FUNC2 (int /*<<< orphan*/ ,char*,int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PATHSPEC_PREFER_CWD ; 
 int RERERE_AUTOUPDATE ; 
 int RERERE_NOAUTOUPDATE ; 
 int RERERE_READONLY ; 
 struct rerere_id* RERERE_RESOLVED ; 
 struct string_list STRING_LIST_INIT_DUP ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char const*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  git_xmerge_config ; 
 int FUNC7 (int,char const**,char const*,struct option*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct pathspec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,char const**) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 int FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct string_list*) ; 
 int FUNC12 (int /*<<< orphan*/ ,struct pathspec*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,struct string_list*) ; 
 int /*<<< orphan*/  FUNC14 (struct rerere_id const*,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,struct string_list*) ; 
 int /*<<< orphan*/  rerere_usage ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,struct string_list*,int) ; 
 int /*<<< orphan*/  FUNC17 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC18 (struct string_list*,int) ; 
 int /*<<< orphan*/  the_repository ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,struct option*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 

int FUNC21(int argc, const char **argv, const char *prefix)
{
	struct string_list merge_rr = STRING_LIST_INIT_DUP;
	int i, autoupdate = -1, flags = 0;

	struct option options[] = {
		FUNC2(0, "rerere-autoupdate", &autoupdate,
			FUNC0("register clean resolutions in index"), 1),
		FUNC1(),
	};

	argc = FUNC7(argc, argv, prefix, options, rerere_usage, 0);

	FUNC6(git_xmerge_config, NULL);

	if (autoupdate == 1)
		flags = RERERE_AUTOUPDATE;
	if (autoupdate == 0)
		flags = RERERE_NOAUTOUPDATE;

	if (argc < 1)
		return FUNC10(the_repository, flags);

	if (!FUNC17(argv[0], "forget")) {
		struct pathspec pathspec;
		if (argc < 2)
			FUNC20(FUNC3("'git rerere forget' without paths is deprecated"));
		FUNC8(&pathspec, 0, PATHSPEC_PREFER_CWD,
			       prefix, argv + 1);
		return FUNC12(the_repository, &pathspec);
	}

	if (!FUNC17(argv[0], "clear")) {
		FUNC11(the_repository, &merge_rr);
	} else if (!FUNC17(argv[0], "gc"))
		FUNC13(the_repository, &merge_rr);
	else if (!FUNC17(argv[0], "status")) {
		if (FUNC16(the_repository, &merge_rr,
				 flags | RERERE_READONLY) < 0)
			return 0;
		for (i = 0; i < merge_rr.nr; i++)
			FUNC9("%s\n", merge_rr.items[i].string);
	} else if (!FUNC17(argv[0], "remaining")) {
		FUNC15(the_repository, &merge_rr);
		for (i = 0; i < merge_rr.nr; i++) {
			if (merge_rr.items[i].util != RERERE_RESOLVED)
				FUNC9("%s\n", merge_rr.items[i].string);
			else
				/* prepare for later call to
				 * string_list_clear() */
				merge_rr.items[i].util = NULL;
		}
	} else if (!FUNC17(argv[0], "diff")) {
		if (FUNC16(the_repository, &merge_rr,
				 flags | RERERE_READONLY) < 0)
			return 0;
		for (i = 0; i < merge_rr.nr; i++) {
			const char *path = merge_rr.items[i].string;
			const struct rerere_id *id = merge_rr.items[i].util;
			if (FUNC5(FUNC14(id, "preimage"), path, path, path))
				FUNC4(FUNC3("unable to generate diff for '%s'"), FUNC14(id, NULL));
		}
	} else
		FUNC19(rerere_usage, options);

	FUNC18(&merge_rr, 1);
	return 0;
}