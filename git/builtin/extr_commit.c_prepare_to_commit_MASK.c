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
struct wt_status {int display_comment_prefix; int use_color; int /*<<< orphan*/ * fp; int /*<<< orphan*/  change; scalar_t__ hints; } ;
struct strbuf {size_t len; scalar_t__ buf; } ;
struct stat {int dummy; } ;
struct pretty_print_context {void* output_encoding; int /*<<< orphan*/  member_0; } ;
struct object_id {int dummy; } ;
struct ident_split {scalar_t__ mail_begin; scalar_t__ mail_end; scalar_t__ name_begin; scalar_t__ name_end; } ;
struct diff_flags {int override_submodule_config; int ignore_submodules; } ;
struct commit {int dummy; } ;
struct argv_array {int /*<<< orphan*/  argv; } ;

/* Variables and functions */
 struct argv_array ARGV_ARRAY_INIT ; 
 scalar_t__ COMMIT_MSG_CLEANUP_ALL ; 
 scalar_t__ COMMIT_MSG_CLEANUP_NONE ; 
 scalar_t__ COMMIT_MSG_CLEANUP_SCISSORS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct diff_flags DIFF_FLAGS_INIT ; 
 scalar_t__ FROM_CHERRY_PICK ; 
 scalar_t__ FROM_COMMIT ; 
 scalar_t__ FROM_MERGE ; 
 int /*<<< orphan*/  GIT_COLOR_NORMAL ; 
 int /*<<< orphan*/  IDENT_STRICT ; 
 int /*<<< orphan*/  NORMAL ; 
 struct strbuf STRBUF_INIT ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/ * active_cache ; 
 int active_nr ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*) ; 
 int /*<<< orphan*/  allow_empty ; 
 scalar_t__ amend ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct argv_array*) ; 
 int /*<<< orphan*/  FUNC5 (struct argv_array*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (struct ident_split*,struct strbuf*) ; 
 scalar_t__ FUNC7 () ; 
 scalar_t__ auto_comment_line_char ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ cleanup_mode ; 
 int /*<<< orphan*/  comment_line_char ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 char* empty_amend_advice ; 
 char* empty_cherry_pick_advice ; 
 char* empty_cherry_pick_advice_multi ; 
 char* empty_cherry_pick_advice_single ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (char*) ; 
 char* fixup_message ; 
 int /*<<< orphan*/ * FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct commit*,char*,struct strbuf*,struct pretty_print_context*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC21 (char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC22 (scalar_t__,int,size_t,int /*<<< orphan*/ *) ; 
 void* FUNC23 () ; 
 scalar_t__ FUNC24 (char const*,struct object_id*) ; 
 char* FUNC25 (int /*<<< orphan*/ ) ; 
 char* FUNC26 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 () ; 
 char* FUNC28 (int /*<<< orphan*/ ) ; 
 char* FUNC29 (int /*<<< orphan*/ ) ; 
 char* FUNC30 (int /*<<< orphan*/ ) ; 
 scalar_t__ have_option_m ; 
 scalar_t__ FUNC31 (struct ident_split*,struct ident_split*) ; 
 int /*<<< orphan*/  FUNC32 (scalar_t__,size_t) ; 
 char* ignore_submodule_arg ; 
 scalar_t__ include_status ; 
 int FUNC33 (int /*<<< orphan*/ ,char const*,struct diff_flags*,int) ; 
 scalar_t__ FUNC34 (struct commit*) ; 
 scalar_t__ FUNC35 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC36 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* logfile ; 
 struct commit* FUNC37 (char*) ; 
 int /*<<< orphan*/  message ; 
 int /*<<< orphan*/  no_verify ; 
 scalar_t__ FUNC38 () ; 
 int /*<<< orphan*/  FUNC39 (char const*) ; 
 scalar_t__ FUNC40 (scalar_t__,char const*,char*,int /*<<< orphan*/ ,...) ; 
 int FUNC41 (int /*<<< orphan*/ *,char const*,char const*,int,struct wt_status*) ; 
 int /*<<< orphan*/  sequencer_in_use ; 
 int /*<<< orphan*/  FUNC42 (struct ident_split*,int /*<<< orphan*/ ) ; 
 scalar_t__ signoff ; 
 char* FUNC43 (char*) ; 
 char* squash_message ; 
 int /*<<< orphan*/  FUNC44 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC45 (struct wt_status*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC46 (struct wt_status*,int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/ * stderr ; 
 int /*<<< orphan*/ * stdout ; 
 int /*<<< orphan*/  FUNC47 (struct strbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC48 (struct strbuf*,char*) ; 
 scalar_t__ FUNC49 (struct strbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC50 (struct strbuf*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC51 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC52 (struct strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC53 (char*,char*) ; 
 int /*<<< orphan*/  FUNC54 (int /*<<< orphan*/ *,int) ; 
 char* FUNC55 (int /*<<< orphan*/ ,char*) ; 
 char* template_file ; 
 int /*<<< orphan*/  the_repository ; 
 scalar_t__ FUNC56 (int /*<<< orphan*/ ) ; 
 scalar_t__ use_editor ; 
 char* use_message ; 
 int /*<<< orphan*/  use_message_buffer ; 
 scalar_t__ whence ; 
 int /*<<< orphan*/  FUNC57 (int /*<<< orphan*/ *) ; 
 size_t FUNC58 (scalar_t__,size_t) ; 

__attribute__((used)) static int FUNC59(const char *index_file, const char *prefix,
			     struct commit *current_head,
			     struct wt_status *s,
			     struct strbuf *author_ident)
{
	struct stat statbuf;
	struct strbuf committer_ident = STRBUF_INIT;
	int committable;
	struct strbuf sb = STRBUF_INIT;
	const char *hook_arg1 = NULL;
	const char *hook_arg2 = NULL;
	int clean_message_contents = (cleanup_mode != COMMIT_MSG_CLEANUP_NONE);
	int old_display_comment_prefix;
	int merge_contains_scissors = 0;

	/* This checks and barfs if author is badly specified */
	FUNC10(author_ident);

	if (!no_verify && FUNC40(use_editor, index_file, "pre-commit", NULL))
		return 0;

	if (squash_message) {
		/*
		 * Insert the proper subject line before other commit
		 * message options add their content.
		 */
		if (use_message && !FUNC53(use_message, squash_message))
			FUNC48(&sb, "squash! ");
		else {
			struct pretty_print_context ctx = {0};
			struct commit *c;
			c = FUNC37(squash_message);
			if (!c)
				FUNC11(FUNC1("could not lookup commit %s"), squash_message);
			ctx.output_encoding = FUNC23();
			FUNC19(c, "squash! %s\n\n", &sb,
					      &ctx);
		}
	}

	if (have_option_m && !fixup_message) {
		FUNC47(&sb, &message);
		hook_arg1 = "message";
	} else if (logfile && !FUNC53(logfile, "-")) {
		if (FUNC35(0))
			FUNC20(stderr, "%s", FUNC1("(reading log message from standard input)\n"));
		if (FUNC49(&sb, 0, 0) < 0)
			FUNC12(FUNC1("could not read log from standard input"));
		hook_arg1 = "message";
	} else if (logfile) {
		if (FUNC50(&sb, logfile, 0) < 0)
			FUNC12(FUNC1("could not read log file '%s'"),
				  logfile);
		hook_arg1 = "message";
	} else if (use_message) {
		char *buffer;
		buffer = FUNC55(use_message_buffer, "\n\n");
		if (buffer)
			FUNC48(&sb, FUNC43(buffer + 2));
		hook_arg1 = "commit";
		hook_arg2 = use_message;
	} else if (fixup_message) {
		struct pretty_print_context ctx = {0};
		struct commit *commit;
		commit = FUNC37(fixup_message);
		if (!commit)
			FUNC11(FUNC1("could not lookup commit %s"), fixup_message);
		ctx.output_encoding = FUNC23();
		FUNC19(commit, "fixup! %s\n\n",
				      &sb, &ctx);
		if (have_option_m)
			FUNC47(&sb, &message);
		hook_arg1 = "message";
	} else if (!FUNC44(FUNC29(the_repository), &statbuf)) {
		size_t merge_msg_start;

		/*
		 * prepend SQUASH_MSG here if it exists and a
		 * "merge --squash" was originally performed
		 */
		if (!FUNC44(FUNC30(the_repository), &statbuf)) {
			if (FUNC50(&sb, FUNC30(the_repository), 0) < 0)
				FUNC12(FUNC1("could not read SQUASH_MSG"));
			hook_arg1 = "squash";
		} else
			hook_arg1 = "merge";

		merge_msg_start = sb.len;
		if (FUNC50(&sb, FUNC29(the_repository), 0) < 0)
			FUNC12(FUNC1("could not read MERGE_MSG"));

		if (cleanup_mode == COMMIT_MSG_CLEANUP_SCISSORS &&
		    FUNC58(sb.buf + merge_msg_start,
					 sb.len - merge_msg_start) <
				sb.len - merge_msg_start)
			merge_contains_scissors = 1;
	} else if (!FUNC44(FUNC30(the_repository), &statbuf)) {
		if (FUNC50(&sb, FUNC30(the_repository), 0) < 0)
			FUNC12(FUNC1("could not read SQUASH_MSG"));
		hook_arg1 = "squash";
	} else if (template_file) {
		if (FUNC50(&sb, template_file, 0) < 0)
			FUNC12(FUNC1("could not read '%s'"), template_file);
		hook_arg1 = "template";
		clean_message_contents = 0;
	}

	/*
	 * The remaining cases don't modify the template message, but
	 * just set the argument(s) to the prepare-commit-msg hook.
	 */
	else if (whence == FROM_MERGE)
		hook_arg1 = "merge";
	else if (whence == FROM_CHERRY_PICK) {
		hook_arg1 = "commit";
		hook_arg2 = "CHERRY_PICK_HEAD";
	}

	if (squash_message) {
		/*
		 * If squash_commit was used for the commit subject,
		 * then we're possibly hijacking other commit log options.
		 * Reset the hook args to tell the real story.
		 */
		hook_arg1 = "message";
		hook_arg2 = "";
	}

	s->fp = FUNC18(FUNC27());
	if (s->fp == NULL)
		FUNC12(FUNC1("could not open '%s'"), FUNC27());

	/* Ignore status.displayCommentPrefix: we do need comments in COMMIT_EDITMSG. */
	old_display_comment_prefix = s->display_comment_prefix;
	s->display_comment_prefix = 1;

	/*
	 * Most hints are counter-productive when the commit has
	 * already started.
	 */
	s->hints = 0;

	if (clean_message_contents)
		FUNC52(&sb, 0);

	if (signoff)
		FUNC3(&sb, FUNC32(sb.buf, sb.len), 0);

	if (FUNC22(sb.buf, 1, sb.len, s->fp) < sb.len)
		FUNC12(FUNC1("could not write commit template"));

	if (auto_comment_line_char)
		FUNC2(&sb);
	FUNC51(&sb);

	/* This checks if committer ident is explicitly given */
	FUNC48(&committer_ident, FUNC25(IDENT_STRICT));
	if (use_editor && include_status) {
		int ident_shown = 0;
		int saved_color_setting;
		struct ident_split ci, ai;

		if (whence != FROM_COMMIT) {
			if (cleanup_mode == COMMIT_MSG_CLEANUP_SCISSORS &&
				!merge_contains_scissors)
				FUNC57(s->fp);
			FUNC46(s, GIT_COLOR_NORMAL,
			    whence == FROM_MERGE
				? FUNC1("\n"
					"It looks like you may be committing a merge.\n"
					"If this is not correct, please remove the file\n"
					"	%s\n"
					"and try again.\n")
				: FUNC1("\n"
					"It looks like you may be committing a cherry-pick.\n"
					"If this is not correct, please remove the file\n"
					"	%s\n"
					"and try again.\n"),
				whence == FROM_MERGE ?
					FUNC28(the_repository) :
					FUNC26(the_repository));
		}

		FUNC20(s->fp, "\n");
		if (cleanup_mode == COMMIT_MSG_CLEANUP_ALL)
			FUNC45(s, GIT_COLOR_NORMAL,
				FUNC1("Please enter the commit message for your changes."
				  " Lines starting\nwith '%c' will be ignored, and an empty"
				  " message aborts the commit.\n"), comment_line_char);
		else if (cleanup_mode == COMMIT_MSG_CLEANUP_SCISSORS) {
			if (whence == FROM_COMMIT && !merge_contains_scissors)
				FUNC57(s->fp);
		} else /* COMMIT_MSG_CLEANUP_SPACE, that is. */
			FUNC45(s, GIT_COLOR_NORMAL,
				FUNC1("Please enter the commit message for your changes."
				  " Lines starting\n"
				  "with '%c' will be kept; you may remove them"
				  " yourself if you want to.\n"
				  "An empty message aborts the commit.\n"), comment_line_char);

		/*
		 * These should never fail because they come from our own
		 * fmt_ident. They may fail the sane_ident test, but we know
		 * that the name and mail pointers will at least be valid,
		 * which is enough for our tests and printing here.
		 */
		FUNC6(&ai, author_ident);
		FUNC6(&ci, &committer_ident);

		if (FUNC31(&ai, &ci))
			FUNC46(s, GIT_COLOR_NORMAL,
				FUNC1("%s"
				"Author:    %.*s <%.*s>"),
				ident_shown++ ? "" : "\n",
				(int)(ai.name_end - ai.name_begin), ai.name_begin,
				(int)(ai.mail_end - ai.mail_begin), ai.mail_begin);

		if (FUNC7())
			FUNC46(s, GIT_COLOR_NORMAL,
				FUNC1("%s"
				"Date:      %s"),
				ident_shown++ ? "" : "\n",
				FUNC42(&ai, FUNC0(NORMAL)));

		if (!FUNC9())
			FUNC46(s, GIT_COLOR_NORMAL,
				FUNC1("%s"
				"Committer: %.*s <%.*s>"),
				ident_shown++ ? "" : "\n",
				(int)(ci.name_end - ci.name_begin), ci.name_begin,
				(int)(ci.mail_end - ci.mail_begin), ci.mail_begin);

		FUNC46(s, GIT_COLOR_NORMAL, "%s", ""); /* Add new line for clarity */

		saved_color_setting = s->use_color;
		s->use_color = 0;
		committable = FUNC41(s->fp, index_file, prefix, 1, s);
		s->use_color = saved_color_setting;
		FUNC54(&s->change, 1);
	} else {
		struct object_id oid;
		const char *parent = "HEAD";

		if (!active_nr && FUNC38() < 0)
			FUNC11(FUNC1("Cannot read index"));

		if (amend)
			parent = "HEAD^1";

		if (FUNC24(parent, &oid)) {
			int i, ita_nr = 0;

			for (i = 0; i < active_nr; i++)
				if (FUNC8(active_cache[i]))
					ita_nr++;
			committable = active_nr - ita_nr > 0;
		} else {
			/*
			 * Unless the user did explicitly request a submodule
			 * ignore mode by passing a command line option we do
			 * not ignore any changed submodule SHA-1s when
			 * comparing index and parent, no matter what is
			 * configured. Otherwise we won't commit any
			 * submodules which were manually staged, which would
			 * be really confusing.
			 */
			struct diff_flags flags = DIFF_FLAGS_INIT;
			flags.override_submodule_config = 1;
			if (ignore_submodule_arg &&
			    !FUNC53(ignore_submodule_arg, "all"))
				flags.ignore_submodules = 1;
			committable = FUNC33(the_repository,
							 parent, &flags, 1);
		}
	}
	FUNC51(&committer_ident);

	FUNC16(s->fp);

	/*
	 * Reject an attempt to record a non-merge empty commit without
	 * explicit --allow-empty. In the cherry-pick case, it may be
	 * empty due to conflict resolution, which the user should okay.
	 */
	if (!committable && whence != FROM_MERGE && !allow_empty &&
	    !(amend && FUNC34(current_head))) {
		s->display_comment_prefix = old_display_comment_prefix;
		FUNC41(stdout, index_file, prefix, 0, s);
		if (amend)
			FUNC21(FUNC1(empty_amend_advice), stderr);
		else if (whence == FROM_CHERRY_PICK) {
			FUNC21(FUNC1(empty_cherry_pick_advice), stderr);
			if (!sequencer_in_use)
				FUNC21(FUNC1(empty_cherry_pick_advice_single), stderr);
			else
				FUNC21(FUNC1(empty_cherry_pick_advice_multi), stderr);
		}
		return 0;
	}

	if (!no_verify && FUNC17("pre-commit")) {
		/*
		 * Re-read the index as pre-commit hook could have updated it,
		 * and write it out as a tree.  We must do this before we invoke
		 * the editor and after we invoke run_status above.
		 */
		FUNC13();
	}
	FUNC39(index_file);

	if (FUNC56(0)) {
		FUNC14(FUNC1("Error building trees"));
		return 0;
	}

	if (FUNC40(use_editor, index_file, "prepare-commit-msg",
			    FUNC27(), hook_arg1, hook_arg2, NULL))
		return 0;

	if (use_editor) {
		struct argv_array env = ARGV_ARRAY_INIT;

		FUNC5(&env, "GIT_INDEX_FILE=%s", index_file);
		if (FUNC36(FUNC27(), NULL, env.argv)) {
			FUNC20(stderr,
			"%s", FUNC1("Please supply the message using either -m or -F option.\n"));
			FUNC15(1);
		}
		FUNC4(&env);
	}

	if (!no_verify &&
	    FUNC40(use_editor, index_file, "commit-msg", FUNC27(), NULL)) {
		return 0;
	}

	return 1;
}