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
struct string_list {int dummy; } ;
struct replay_opts {int dummy; } ;
struct rebase_options {scalar_t__ rebase_cousins; int /*<<< orphan*/  cmd; int /*<<< orphan*/  upstream; int /*<<< orphan*/  onto; scalar_t__ root_with_onto; scalar_t__ rebase_merges; scalar_t__ keep_empty; } ;
struct child_process {int git_cmd; int /*<<< orphan*/  args; } ;
typedef  enum action { ____Placeholder_action } action ;

/* Variables and functions */
#define  ACTION_ADD_EXEC 137 
#define  ACTION_CHECK_TODO_LIST 136 
#define  ACTION_CONTINUE 135 
#define  ACTION_EDIT_TODO 134 
#define  ACTION_EXPAND_OIDS 133 
#define  ACTION_NONE 132 
#define  ACTION_REARRANGE_SQUASH 131 
#define  ACTION_SHORTEN_OIDS 130 
#define  ACTION_SHOW_CURRENT_PATCH 129 
#define  ACTION_SKIP 128 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 struct child_process CHILD_PROCESS_INIT ; 
 struct string_list STRING_LIST_INIT_DUP ; 
 unsigned int TODO_LIST_ABBREVIATE_CMDS ; 
 unsigned int TODO_LIST_KEEP_EMPTY ; 
 unsigned int TODO_LIST_REBASE_COUSINS ; 
 unsigned int TODO_LIST_REBASE_MERGES ; 
 unsigned int TODO_LIST_ROOT_WITH_ONTO ; 
 unsigned int TODO_LIST_SHORTEN_IDS ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (struct string_list*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*,char*,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct rebase_options*,unsigned int) ; 
 int FUNC7 (unsigned int) ; 
 struct replay_opts FUNC8 (struct rebase_options*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int*) ; 
 int FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct string_list*) ; 
 int FUNC12 (struct child_process*) ; 
 int FUNC13 (int /*<<< orphan*/ ,struct replay_opts*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,struct string_list*) ; 
 int /*<<< orphan*/  FUNC15 (struct string_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  the_repository ; 
 int FUNC16 (unsigned int) ; 

__attribute__((used)) static int FUNC17(struct rebase_options *opts,
				  enum action command)
{
	unsigned flags = 0;
	int abbreviate_commands = 0, ret = 0;

	FUNC9("rebase.abbreviatecommands", &abbreviate_commands);

	flags |= opts->keep_empty ? TODO_LIST_KEEP_EMPTY : 0;
	flags |= abbreviate_commands ? TODO_LIST_ABBREVIATE_CMDS : 0;
	flags |= opts->rebase_merges ? TODO_LIST_REBASE_MERGES : 0;
	flags |= opts->rebase_cousins > 0 ? TODO_LIST_REBASE_COUSINS : 0;
	flags |= opts->root_with_onto ? TODO_LIST_ROOT_WITH_ONTO : 0;
	flags |= command == ACTION_SHORTEN_OIDS ? TODO_LIST_SHORTEN_IDS : 0;

	switch (command) {
	case ACTION_NONE: {
		if (!opts->onto && !opts->upstream)
			FUNC5(FUNC1("a base commit must be provided with --upstream or --onto"));

		ret = FUNC6(opts, flags);
		break;
	}
	case ACTION_SKIP: {
		struct string_list merge_rr = STRING_LIST_INIT_DUP;

		FUNC11(the_repository, &merge_rr);
	}
		/* fallthrough */
	case ACTION_CONTINUE: {
		struct replay_opts replay_opts = FUNC8(opts);

		ret = FUNC13(the_repository, &replay_opts);
		break;
	}
	case ACTION_EDIT_TODO:
		ret = FUNC7(flags);
		break;
	case ACTION_SHOW_CURRENT_PATCH: {
		struct child_process cmd = CHILD_PROCESS_INIT;

		cmd.git_cmd = 1;
		FUNC3(&cmd.args, "show", "REBASE_HEAD", "--", NULL);
		ret = FUNC12(&cmd);

		break;
	}
	case ACTION_SHORTEN_OIDS:
	case ACTION_EXPAND_OIDS:
		ret = FUNC16(flags);
		break;
	case ACTION_CHECK_TODO_LIST:
		ret = FUNC4(the_repository);
		break;
	case ACTION_REARRANGE_SQUASH:
		ret = FUNC10();
		break;
	case ACTION_ADD_EXEC: {
		struct string_list commands = STRING_LIST_INIT_DUP;

		FUNC14(opts->cmd, &commands);
		ret = FUNC2(&commands);
		FUNC15(&commands, 0);
		break;
	}
	default:
		FUNC0("invalid command '%d'", command);
	}

	return ret;
}