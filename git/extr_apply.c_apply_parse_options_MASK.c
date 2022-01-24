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
struct option {char member_1; char* member_2; int /*<<< orphan*/  member_7; int /*<<< orphan*/  member_6; int /*<<< orphan*/ * member_5; int /*<<< orphan*/ * member_4; struct apply_state* member_3; int /*<<< orphan*/  member_0; } ;
struct apply_state {int no_add; int diffstat; int numstat; int summary; int check; int check_index; int ita_only; int cached; int threeway; int apply_in_reverse; int unidiff_zero; int apply_with_reject; int allow_overlap; int /*<<< orphan*/  prefix; int /*<<< orphan*/  apply_verbosity; int /*<<< orphan*/  p_context; int /*<<< orphan*/  line_termination; int /*<<< orphan*/  fake_ancestor; int /*<<< orphan*/  unsafe_paths; } ;

/* Variables and functions */
 int /*<<< orphan*/  APPLY_OPT_INACCURATE_EOF ; 
 int /*<<< orphan*/  APPLY_OPT_RECOUNT ; 
 int /*<<< orphan*/ * FUNC0 (char*) ; 
 int /*<<< orphan*/  OPTION_CALLBACK ; 
 struct option FUNC1 (int /*<<< orphan*/ ,char*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct option FUNC2 (char,char*,int*,int /*<<< orphan*/ *) ; 
 struct option FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct option FUNC4 () ; 
 struct option FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct option FUNC6 (char,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct option FUNC7 (int /*<<< orphan*/ ,char*) ; 
 struct option FUNC8 (char,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char) ; 
 struct option FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PARSE_OPT_NOARG ; 
 int /*<<< orphan*/  PARSE_OPT_NOCOMPLETE ; 
 int /*<<< orphan*/  PARSE_OPT_NONEG ; 
 int /*<<< orphan*/  apply_option_parse_directory ; 
 int /*<<< orphan*/  apply_option_parse_exclude ; 
 int /*<<< orphan*/  apply_option_parse_include ; 
 int /*<<< orphan*/  apply_option_parse_p ; 
 int /*<<< orphan*/  apply_option_parse_space_change ; 
 int /*<<< orphan*/  apply_option_parse_whitespace ; 
 int FUNC10 (int,char const**,int /*<<< orphan*/ ,struct option*,char const* const*,int /*<<< orphan*/ ) ; 

int FUNC11(int argc, const char **argv,
			struct apply_state *state,
			int *force_apply, int *options,
			const char * const *apply_usage)
{
	struct option builtin_apply_options[] = {
		{ OPTION_CALLBACK, 0, "exclude", state, FUNC0("path"),
			FUNC0("don't apply changes matching the given path"),
			PARSE_OPT_NONEG, apply_option_parse_exclude },
		{ OPTION_CALLBACK, 0, "include", state, FUNC0("path"),
			FUNC0("apply changes matching the given path"),
			PARSE_OPT_NONEG, apply_option_parse_include },
		{ OPTION_CALLBACK, 'p', NULL, state, FUNC0("num"),
			FUNC0("remove <num> leading slashes from traditional diff paths"),
			0, apply_option_parse_p },
		FUNC2(0, "no-add", &state->no_add,
			FUNC0("ignore additions made by the patch")),
		FUNC2(0, "stat", &state->diffstat,
			FUNC0("instead of applying the patch, output diffstat for the input")),
		FUNC7(0, "allow-binary-replacement"),
		FUNC7(0, "binary"),
		FUNC2(0, "numstat", &state->numstat,
			FUNC0("show number of added and deleted lines in decimal notation")),
		FUNC2(0, "summary", &state->summary,
			FUNC0("instead of applying the patch, output a summary for the input")),
		FUNC2(0, "check", &state->check,
			FUNC0("instead of applying the patch, see if the patch is applicable")),
		FUNC2(0, "index", &state->check_index,
			FUNC0("make sure the patch is applicable to the current index")),
		FUNC2('N', "intent-to-add", &state->ita_only,
			FUNC0("mark new files with `git add --intent-to-add`")),
		FUNC2(0, "cached", &state->cached,
			FUNC0("apply a patch without touching the working tree")),
		FUNC3(0, "unsafe-paths", &state->unsafe_paths,
			   FUNC0("accept a patch that touches outside the working area"),
			   PARSE_OPT_NOCOMPLETE),
		FUNC2(0, "apply", force_apply,
			FUNC0("also apply the patch (use with --stat/--summary/--check)")),
		FUNC2('3', "3way", &state->threeway,
			 FUNC0( "attempt three-way merge if a patch does not apply")),
		FUNC5(0, "build-fake-ancestor", &state->fake_ancestor,
			FUNC0("build a temporary index based on embedded index information")),
		/* Think twice before adding "--nul" synonym to this */
		FUNC8('z', NULL, &state->line_termination,
			FUNC0("paths are separated with NUL character"), '\0'),
		FUNC6('C', NULL, &state->p_context,
				FUNC0("ensure at least <n> lines of context match")),
		{ OPTION_CALLBACK, 0, "whitespace", state, FUNC0("action"),
			FUNC0("detect new or modified lines that have whitespace errors"),
			0, apply_option_parse_whitespace },
		{ OPTION_CALLBACK, 0, "ignore-space-change", state, NULL,
			FUNC0("ignore changes in whitespace when finding context"),
			PARSE_OPT_NOARG, apply_option_parse_space_change },
		{ OPTION_CALLBACK, 0, "ignore-whitespace", state, NULL,
			FUNC0("ignore changes in whitespace when finding context"),
			PARSE_OPT_NOARG, apply_option_parse_space_change },
		FUNC2('R', "reverse", &state->apply_in_reverse,
			FUNC0("apply the patch in reverse")),
		FUNC2(0, "unidiff-zero", &state->unidiff_zero,
			FUNC0("don't expect at least one line of context")),
		FUNC2(0, "reject", &state->apply_with_reject,
			FUNC0("leave the rejected hunks in corresponding *.rej files")),
		FUNC2(0, "allow-overlap", &state->allow_overlap,
			FUNC0("allow overlapping hunks")),
		FUNC9(&state->apply_verbosity, FUNC0("be verbose")),
		FUNC1(0, "inaccurate-eof", options,
			FUNC0("tolerate incorrectly detected missing new-line at the end of file"),
			APPLY_OPT_INACCURATE_EOF),
		FUNC1(0, "recount", options,
			FUNC0("do not trust the line counts in the hunk headers"),
			APPLY_OPT_RECOUNT),
		{ OPTION_CALLBACK, 0, "directory", state, FUNC0("root"),
			FUNC0("prepend <root> to all filenames"),
			0, apply_option_parse_directory },
		FUNC4()
	};

	return FUNC10(argc, argv, state->prefix, builtin_apply_options, apply_usage, 0);
}