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
struct object_id {int dummy; } ;
struct rebase_options {int keep_empty; int allow_empty_message; int rebase_merges; int rebase_cousins; int autosquash; int signoff; int reschedule_failed_exec; struct object_id* squash_onto; int /*<<< orphan*/  allow_rerere_autoupdate; int /*<<< orphan*/  cmd; int /*<<< orphan*/  onto_name; int /*<<< orphan*/  switch_to; int /*<<< orphan*/  strategy_opts; int /*<<< orphan*/  strategy; struct object_id gpg_sign_opt; int /*<<< orphan*/  head_name; struct object_id upstream; struct object_id restrict_revision; struct object_id onto; int /*<<< orphan*/  flags; } ;
struct option {char member_1; char* member_2; intptr_t member_8; int /*<<< orphan*/ * member_7; int /*<<< orphan*/  member_6; int /*<<< orphan*/  member_5; int /*<<< orphan*/  member_4; struct object_id* member_3; int /*<<< orphan*/  member_0; } ;
typedef  enum action { ____Placeholder_action } action ;

/* Variables and functions */
 int /*<<< orphan*/  ACTION_ADD_EXEC ; 
 int /*<<< orphan*/  ACTION_CHECK_TODO_LIST ; 
 int /*<<< orphan*/  ACTION_CONTINUE ; 
 int /*<<< orphan*/  ACTION_EDIT_TODO ; 
 int /*<<< orphan*/  ACTION_EXPAND_OIDS ; 
 int ACTION_NONE ; 
 int /*<<< orphan*/  ACTION_REARRANGE_SQUASH ; 
 int /*<<< orphan*/  ACTION_SHORTEN_OIDS ; 
 int /*<<< orphan*/  ACTION_SHOW_CURRENT_PATCH ; 
 int /*<<< orphan*/  ACTION_SKIP ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  OPTION_CALLBACK ; 
 int /*<<< orphan*/  OPTION_STRING ; 
 struct option FUNC1 (char,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct option FUNC2 (int /*<<< orphan*/ ,char*,int*,int /*<<< orphan*/ ) ; 
 struct option FUNC3 (int /*<<< orphan*/ ,char*,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct option FUNC4 () ; 
 struct option FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct option FUNC6 (int /*<<< orphan*/ *) ; 
 struct option FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PARSE_OPT_KEEP_ARGV0 ; 
 int /*<<< orphan*/  PARSE_OPT_NONEG ; 
 int /*<<< orphan*/  PARSE_OPT_OPTARG ; 
 int REBASE_DIFFSTAT ; 
 int /*<<< orphan*/  REBASE_FORCE ; 
 int REBASE_NO_QUIET ; 
 struct rebase_options REBASE_OPTIONS_INIT ; 
 int REBASE_VERBOSE ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  builtin_rebase_interactive_usage ; 
 int /*<<< orphan*/  FUNC9 (struct object_id*) ; 
 struct object_id null_oid ; 
 int /*<<< orphan*/ * parse_opt_commit ; 
 int /*<<< orphan*/ * parse_opt_object_id ; 
 int FUNC10 (int,char const**,char const*,struct option*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct rebase_options*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,struct option*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

int FUNC14(int argc, const char **argv, const char *prefix)
{
	struct rebase_options opts = REBASE_OPTIONS_INIT;
	struct object_id squash_onto = null_oid;
	enum action command = ACTION_NONE;
	struct option options[] = {
		FUNC5(0, "ff", &opts.flags, FUNC0("allow fast-forward"),
			   REBASE_FORCE),
		FUNC2(0, "keep-empty", &opts.keep_empty, FUNC0("keep empty commits")),
		FUNC2(0, "allow-empty-message", &opts.allow_empty_message,
			 FUNC0("allow commits with empty messages")),
		FUNC2(0, "rebase-merges", &opts.rebase_merges, FUNC0("rebase merge commits")),
		FUNC2(0, "rebase-cousins", &opts.rebase_cousins,
			 FUNC0("keep original branch points of cousins")),
		FUNC2(0, "autosquash", &opts.autosquash,
			 FUNC0("move commits that begin with squash!/fixup!")),
		FUNC2(0, "signoff", &opts.signoff, FUNC0("sign commits")),
		FUNC1('v', "verbose", &opts.flags,
			FUNC0("display a diffstat of what changed upstream"),
			REBASE_NO_QUIET | REBASE_VERBOSE | REBASE_DIFFSTAT),
		FUNC3(0, "continue", &command, FUNC0("continue rebase"),
			    ACTION_CONTINUE),
		FUNC3(0, "skip", &command, FUNC0("skip commit"), ACTION_SKIP),
		FUNC3(0, "edit-todo", &command, FUNC0("edit the todo list"),
			    ACTION_EDIT_TODO),
		FUNC3(0, "show-current-patch", &command, FUNC0("show the current patch"),
			    ACTION_SHOW_CURRENT_PATCH),
		FUNC3(0, "shorten-ids", &command,
			FUNC0("shorten commit ids in the todo list"), ACTION_SHORTEN_OIDS),
		FUNC3(0, "expand-ids", &command,
			FUNC0("expand commit ids in the todo list"), ACTION_EXPAND_OIDS),
		FUNC3(0, "check-todo-list", &command,
			FUNC0("check the todo list"), ACTION_CHECK_TODO_LIST),
		FUNC3(0, "rearrange-squash", &command,
			FUNC0("rearrange fixup/squash lines"), ACTION_REARRANGE_SQUASH),
		FUNC3(0, "add-exec-commands", &command,
			FUNC0("insert exec commands in todo list"), ACTION_ADD_EXEC),
		{ OPTION_CALLBACK, 0, "onto", &opts.onto, FUNC0("onto"), FUNC0("onto"),
		  PARSE_OPT_NONEG, parse_opt_commit, 0 },
		{ OPTION_CALLBACK, 0, "restrict-revision", &opts.restrict_revision,
		  FUNC0("restrict-revision"), FUNC0("restrict revision"),
		  PARSE_OPT_NONEG, parse_opt_commit, 0 },
		{ OPTION_CALLBACK, 0, "squash-onto", &squash_onto, FUNC0("squash-onto"),
		  FUNC0("squash onto"), PARSE_OPT_NONEG, parse_opt_object_id, 0 },
		{ OPTION_CALLBACK, 0, "upstream", &opts.upstream, FUNC0("upstream"),
		  FUNC0("the upstream commit"), PARSE_OPT_NONEG, parse_opt_commit,
		  0 },
		FUNC7(0, "head-name", &opts.head_name, FUNC0("head-name"), FUNC0("head name")),
		{ OPTION_STRING, 'S', "gpg-sign", &opts.gpg_sign_opt, FUNC0("key-id"),
			FUNC0("GPG-sign commits"),
			PARSE_OPT_OPTARG, NULL, (intptr_t) "" },
		FUNC7(0, "strategy", &opts.strategy, FUNC0("strategy"),
			   FUNC0("rebase strategy")),
		FUNC7(0, "strategy-opts", &opts.strategy_opts, FUNC0("strategy-opts"),
			   FUNC0("strategy options")),
		FUNC7(0, "switch-to", &opts.switch_to, FUNC0("switch-to"),
			   FUNC0("the branch or commit to checkout")),
		FUNC7(0, "onto-name", &opts.onto_name, FUNC0("onto-name"), FUNC0("onto name")),
		FUNC7(0, "cmd", &opts.cmd, FUNC0("cmd"), FUNC0("the command to run")),
		FUNC6(&opts.allow_rerere_autoupdate),
		FUNC2(0, "reschedule-failed-exec", &opts.reschedule_failed_exec,
			 FUNC0("automatically re-schedule any `exec` that fails")),
		FUNC4()
	};

	opts.rebase_cousins = -1;

	if (argc == 1)
		FUNC12(builtin_rebase_interactive_usage, options);

	argc = FUNC10(argc, argv, prefix, options,
			builtin_rebase_interactive_usage, PARSE_OPT_KEEP_ARGV0);

	if (!FUNC9(&squash_onto))
		opts.squash_onto = &squash_onto;

	if (opts.rebase_cousins >= 0 && !opts.rebase_merges)
		FUNC13(FUNC8("--[no-]rebase-cousins has no effect without "
			  "--rebase-merges"));

	return !!FUNC11(&opts, command);
}