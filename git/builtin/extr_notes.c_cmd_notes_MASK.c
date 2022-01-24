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
struct option {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct option FUNC1 () ; 
 struct option FUNC2 (int /*<<< orphan*/ ,char*,char const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PARSE_OPT_STOP_AT_NON_OPTION ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (int,char const**,char const*) ; 
 int FUNC5 (int,char const**,char const*) ; 
 int FUNC6 (int,char const**,char const*) ; 
 int FUNC7 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC8 (struct strbuf*) ; 
 int FUNC9 (int,char const**,char const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  git_default_config ; 
 int /*<<< orphan*/  git_notes_usage ; 
 int FUNC11 (int,char const**,char const*) ; 
 int FUNC12 (int,char const**,char const*) ; 
 int FUNC13 (int,char const**,char const*,struct option*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC14 (int,char const**,char const*) ; 
 int FUNC15 (int,char const**,char const*) ; 
 int /*<<< orphan*/  FUNC16 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC17 (int,char const**,char const*) ; 
 int /*<<< orphan*/  FUNC18 (struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC19 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC20 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,struct option*) ; 

int FUNC22(int argc, const char **argv, const char *prefix)
{
	int result;
	const char *override_notes_ref = NULL;
	struct option options[] = {
		FUNC2(0, "ref", &override_notes_ref, FUNC0("notes-ref"),
			   FUNC0("use notes from <notes-ref>")),
		FUNC1()
	};

	FUNC10(git_default_config, NULL);
	argc = FUNC13(argc, argv, prefix, options, git_notes_usage,
			     PARSE_OPT_STOP_AT_NON_OPTION);

	if (override_notes_ref) {
		struct strbuf sb = STRBUF_INIT;
		FUNC18(&sb, override_notes_ref);
		FUNC8(&sb);
		FUNC16("GIT_NOTES_REF", sb.buf, 1);
		FUNC19(&sb);
	}

	if (argc < 1 || !FUNC20(argv[0], "list"))
		result = FUNC11(argc, argv, prefix);
	else if (!FUNC20(argv[0], "add"))
		result = FUNC4(argc, argv, prefix);
	else if (!FUNC20(argv[0], "copy"))
		result = FUNC6(argc, argv, prefix);
	else if (!FUNC20(argv[0], "append") || !FUNC20(argv[0], "edit"))
		result = FUNC5(argc, argv, prefix);
	else if (!FUNC20(argv[0], "show"))
		result = FUNC17(argc, argv, prefix);
	else if (!FUNC20(argv[0], "merge"))
		result = FUNC12(argc, argv, prefix);
	else if (!FUNC20(argv[0], "remove"))
		result = FUNC15(argc, argv, prefix);
	else if (!FUNC20(argv[0], "prune"))
		result = FUNC14(argc, argv, prefix);
	else if (!FUNC20(argv[0], "get-ref"))
		result = FUNC9(argc, argv, prefix);
	else {
		result = FUNC7(FUNC3("unknown subcommand: %s"), argv[0]);
		FUNC21(git_notes_usage, options);
	}

	return result ? 1 : 0;
}