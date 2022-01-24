#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  buf; } ;
struct todo_list {TYPE_3__ buf; } ;
struct string_list {int dummy; } ;
struct replay_opts {int dummy; } ;
struct rebase_options {char* head_name; int /*<<< orphan*/  autosquash; int /*<<< orphan*/  onto; int /*<<< orphan*/  onto_name; int /*<<< orphan*/  cmd; TYPE_2__* restrict_revision; int /*<<< orphan*/ * squash_onto; int /*<<< orphan*/  upstream; int /*<<< orphan*/  switch_to; } ;
struct argv_array {int /*<<< orphan*/  argv; int /*<<< orphan*/  argc; } ;
struct TYPE_4__ {int /*<<< orphan*/  oid; } ;
struct TYPE_5__ {TYPE_1__ object; } ;

/* Variables and functions */
 struct argv_array ARGV_ARRAY_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct string_list STRING_LIST_INIT_DUP ; 
 struct todo_list TODO_LIST_INIT ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct argv_array*) ; 
 int /*<<< orphan*/  FUNC3 (struct argv_array*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct argv_array*,char*,char*,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct replay_opts*,unsigned int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,struct string_list*,int /*<<< orphan*/ ,struct todo_list*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 struct replay_opts FUNC9 (struct rebase_options*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const**,char**,char**) ; 
 scalar_t__ FUNC11 (struct replay_opts*,char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,struct replay_opts*,int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,struct string_list*) ; 
 int /*<<< orphan*/  FUNC17 (struct string_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  the_repository ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct todo_list*) ; 
 int /*<<< orphan*/  FUNC19 (struct todo_list*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC21(struct rebase_options *opts, unsigned flags)
{
	int ret;
	const char *head_hash = NULL;
	char *revisions = NULL, *shortrevisions = NULL;
	struct argv_array make_script_args = ARGV_ARRAY_INIT;
	struct todo_list todo_list = TODO_LIST_INIT;
	struct replay_opts replay = FUNC9(opts);
	struct string_list commands = STRING_LIST_INIT_DUP;

	if (FUNC14(the_repository, &replay,
					 opts->switch_to))
		return -1;

	if (FUNC10(opts->upstream, opts->onto, &head_hash,
				&revisions, &shortrevisions))
		return -1;

	if (FUNC11(&replay,
			     opts->head_name ? opts->head_name : "detached HEAD",
			     opts->onto, head_hash)) {
		FUNC8(revisions);
		FUNC8(shortrevisions);

		return -1;
	}

	if (!opts->upstream && opts->squash_onto)
		FUNC20(FUNC13(), "%s\n",
			   FUNC12(opts->squash_onto));

	FUNC4(&make_script_args, "", revisions, NULL);
	if (opts->restrict_revision)
		FUNC3(&make_script_args,
				FUNC12(&opts->restrict_revision->object.oid));

	ret = FUNC15(the_repository, &todo_list.buf,
				    make_script_args.argc, make_script_args.argv,
				    flags);

	if (ret)
		FUNC7(FUNC1("could not generate todo list"));
	else {
		FUNC6();
		if (FUNC18(the_repository, todo_list.buf.buf,
						&todo_list))
			FUNC0("unusable todo list");

		FUNC16(opts->cmd, &commands);
		ret = FUNC5(the_repository, &replay, flags,
			shortrevisions, opts->onto_name, opts->onto, head_hash,
			&commands, opts->autosquash, &todo_list);
	}

	FUNC17(&commands, 0);
	FUNC8(revisions);
	FUNC8(shortrevisions);
	FUNC19(&todo_list);
	FUNC2(&make_script_args);

	return ret;
}