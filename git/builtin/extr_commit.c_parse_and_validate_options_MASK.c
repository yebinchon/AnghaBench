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
struct wt_status {int dummy; } ;
struct option {int dummy; } ;
struct commit {int dummy; } ;

/* Variables and functions */
 scalar_t__ FROM_CHERRY_PICK ; 
 scalar_t__ FROM_COMMIT ; 
 scalar_t__ FROM_MERGE ; 
 scalar_t__ STATUS_FORMAT_NONE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int all ; 
 int /*<<< orphan*/  allow_empty ; 
 int also ; 
 scalar_t__ amend ; 
 char* author_message ; 
 void* author_message_buffer ; 
 int /*<<< orphan*/  cleanup_arg ; 
 int /*<<< orphan*/  cleanup_mode ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,...) ; 
 int dry_run ; 
 scalar_t__ edit_flag ; 
 char* edit_message ; 
 int /*<<< orphan*/  FUNC2 (struct wt_status*) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ fixup_message ; 
 scalar_t__ force_author ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct wt_status*) ; 
 scalar_t__ have_option_m ; 
 int interactive ; 
 scalar_t__ logfile ; 
 int only ; 
 int FUNC6 (int,char const**,char const*,struct option const*,char const* const*,int /*<<< orphan*/ ) ; 
 scalar_t__ patch_interactive ; 
 void* FUNC7 (char*) ; 
 scalar_t__ renew_authorship ; 
 scalar_t__ squash_message ; 
 scalar_t__ status_format ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,char) ; 
 int /*<<< orphan*/ * template_file ; 
 scalar_t__ use_editor ; 
 char* use_message ; 
 void* use_message_buffer ; 
 scalar_t__ whence ; 

__attribute__((used)) static int FUNC9(int argc, const char *argv[],
				      const struct option *options,
				      const char * const usage[],
				      const char *prefix,
				      struct commit *current_head,
				      struct wt_status *s)
{
	int f = 0;

	argc = FUNC6(argc, argv, prefix, options, usage, 0);
	FUNC2(s);

	if (force_author && !FUNC8(force_author, '>'))
		force_author = FUNC3(force_author);

	if (force_author && renew_authorship)
		FUNC1(FUNC0("Using both --reset-author and --author does not make sense"));

	if (logfile || have_option_m || use_message || fixup_message)
		use_editor = 0;
	if (0 <= edit_flag)
		use_editor = edit_flag;

	/* Sanity check options */
	if (amend && !current_head)
		FUNC1(FUNC0("You have nothing to amend."));
	if (amend && whence != FROM_COMMIT) {
		if (whence == FROM_MERGE)
			FUNC1(FUNC0("You are in the middle of a merge -- cannot amend."));
		else if (whence == FROM_CHERRY_PICK)
			FUNC1(FUNC0("You are in the middle of a cherry-pick -- cannot amend."));
	}
	if (fixup_message && squash_message)
		FUNC1(FUNC0("Options --squash and --fixup cannot be used together"));
	if (use_message)
		f++;
	if (edit_message)
		f++;
	if (fixup_message)
		f++;
	if (logfile)
		f++;
	if (f > 1)
		FUNC1(FUNC0("Only one of -c/-C/-F/--fixup can be used."));
	if (have_option_m && (edit_message || use_message || logfile))
		FUNC1((FUNC0("Option -m cannot be combined with -c/-C/-F.")));
	if (f || have_option_m)
		template_file = NULL;
	if (edit_message)
		use_message = edit_message;
	if (amend && !use_message && !fixup_message)
		use_message = "HEAD";
	if (!use_message && whence != FROM_CHERRY_PICK && renew_authorship)
		FUNC1(FUNC0("--reset-author can be used only with -C, -c or --amend."));
	if (use_message) {
		use_message_buffer = FUNC7(use_message);
		if (!renew_authorship) {
			author_message = use_message;
			author_message_buffer = use_message_buffer;
		}
	}
	if (whence == FROM_CHERRY_PICK && !renew_authorship) {
		author_message = "CHERRY_PICK_HEAD";
		author_message_buffer = FUNC7(author_message);
	}

	if (patch_interactive)
		interactive = 1;

	if (also + only + all + interactive > 1)
		FUNC1(FUNC0("Only one of --include/--only/--all/--interactive/--patch can be used."));
	if (argc == 0 && (also || (only && !amend && !allow_empty)))
		FUNC1(FUNC0("No paths with --include/--only does not make sense."));
	cleanup_mode = FUNC4(cleanup_arg, use_editor);

	FUNC5(s);

	if (all && argc > 0)
		FUNC1(FUNC0("paths '%s ...' with -a does not make sense"),
		    argv[0]);

	if (status_format != STATUS_FORMAT_NONE)
		dry_run = 1;

	return argc;
}