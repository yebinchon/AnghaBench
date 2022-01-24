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
struct shallow_info {int dummy; } ;
struct iterate_data {struct shallow_info* si; struct command* cmds; } ;
struct command {char* error_string; struct command* next; } ;
struct check_connected_options {int err_fd; int progress; int /*<<< orphan*/  env; } ;
struct async {int in; int /*<<< orphan*/  proc; } ;
typedef  int /*<<< orphan*/  muxer ;

/* Variables and functions */
 struct check_connected_options CHECK_CONNECTED_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct command*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct iterate_data*,struct check_connected_options*) ; 
 int /*<<< orphan*/  copy_to_sideband ; 
 int /*<<< orphan*/  FUNC2 (struct command*,struct shallow_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct command*,struct shallow_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct async*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  head_name ; 
 int /*<<< orphan*/  head_name_to_free ; 
 int /*<<< orphan*/  iterate_receive_command_list ; 
 int /*<<< orphan*/  FUNC6 (struct async*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  quiet ; 
 int /*<<< orphan*/  FUNC7 (struct command*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (struct command*,char*,int /*<<< orphan*/ ,struct string_list const*) ; 
 int /*<<< orphan*/  FUNC10 (struct command*,struct shallow_info*) ; 
 scalar_t__ shallow_update ; 
 int /*<<< orphan*/  FUNC11 (struct async*) ; 
 int /*<<< orphan*/ * tmp_objdir ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ use_atomic ; 
 scalar_t__ use_sideband ; 
 int /*<<< orphan*/  FUNC14 (struct command*,struct shallow_info*) ; 

__attribute__((used)) static void FUNC15(struct command *commands,
			     const char *unpacker_error,
			     struct shallow_info *si,
			     const struct string_list *push_options)
{
	struct check_connected_options opt = CHECK_CONNECTED_INIT;
	struct command *cmd;
	struct iterate_data data;
	struct async muxer;
	int err_fd = 0;

	if (unpacker_error) {
		for (cmd = commands; cmd; cmd = cmd->next)
			cmd->error_string = "unpacker error";
		return;
	}

	if (use_sideband) {
		FUNC6(&muxer, 0, sizeof(muxer));
		muxer.proc = copy_to_sideband;
		muxer.in = -1;
		if (!FUNC11(&muxer))
			err_fd = muxer.in;
		/* ...else, continue without relaying sideband */
	}

	data.cmds = commands;
	data.si = si;
	opt.err_fd = err_fd;
	opt.progress = err_fd && !quiet;
	opt.env = FUNC12(tmp_objdir);
	if (FUNC1(iterate_receive_command_list, &data, &opt))
		FUNC10(commands, si);

	if (use_sideband)
		FUNC4(&muxer);

	FUNC7(commands);

	if (FUNC9(commands, "pre-receive", 0, push_options)) {
		for (cmd = commands; cmd; cmd = cmd->next) {
			if (!cmd->error_string)
				cmd->error_string = "pre-receive hook declined";
		}
		return;
	}

	/*
	 * Now we'll start writing out refs, which means the objects need
	 * to be in their final positions so that other processes can see them.
	 */
	if (FUNC13(tmp_objdir) < 0) {
		for (cmd = commands; cmd; cmd = cmd->next) {
			if (!cmd->error_string)
				cmd->error_string = "unable to migrate objects to permanent storage";
		}
		return;
	}
	tmp_objdir = NULL;

	FUNC0(commands);

	FUNC5(head_name_to_free);
	head_name = head_name_to_free = FUNC8("HEAD", 0, NULL, NULL);

	if (use_atomic)
		FUNC2(commands, si);
	else
		FUNC3(commands, si);

	if (shallow_update)
		FUNC14(commands, si);
}