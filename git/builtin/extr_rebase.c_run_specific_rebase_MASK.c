#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct strbuf {char* buf; } ;
struct TYPE_9__ {char* buf; } ;
struct TYPE_16__ {int /*<<< orphan*/  argv; } ;
struct rebase_options {int type; int flags; char* gpg_sign_opt; char* state_dir; char* upstream_name; char* head_name; char* onto_name; char* revisions; char* switch_to; char* action; scalar_t__ allow_rerere_autoupdate; char* cmd; char* strategy; char* strategy_opts; scalar_t__ dont_finish_rebase; scalar_t__ autosquash; TYPE_1__ git_format_patch_opt; int /*<<< orphan*/ * squash_onto; scalar_t__ root; scalar_t__ rebase_cousins; scalar_t__ rebase_merges; scalar_t__ allow_empty_message; scalar_t__ keep_empty; scalar_t__ signoff; TYPE_8__ git_am_opts; TYPE_7__* restrict_revision; TYPE_5__* onto; int /*<<< orphan*/  orig_head; TYPE_3__* upstream; } ;
typedef  enum action { ____Placeholder_action } action ;
struct TYPE_14__ {int /*<<< orphan*/  oid; } ;
struct TYPE_15__ {TYPE_6__ object; } ;
struct TYPE_12__ {int /*<<< orphan*/  oid; } ;
struct TYPE_13__ {TYPE_4__ object; } ;
struct TYPE_10__ {int /*<<< orphan*/  oid; } ;
struct TYPE_11__ {TYPE_2__ object; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int REBASE_AM ; 
 int REBASE_DIFFSTAT ; 
 int REBASE_FORCE ; 
 int REBASE_INTERACTIVE ; 
 int REBASE_INTERACTIVE_EXPLICIT ; 
 int REBASE_NO_QUIET ; 
#define  REBASE_PRESERVE_MERGES 128 
 int REBASE_VERBOSE ; 
 scalar_t__ RERERE_AUTOUPDATE ; 
 int /*<<< orphan*/  RUN_USING_SHELL ; 
 struct strbuf STRBUF_INIT ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct rebase_options*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct rebase_options*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ FUNC9 (struct rebase_options*) ; 
 char* FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct strbuf*,int /*<<< orphan*/ ) ; 
 char* resolvemsg ; 
 int FUNC12 (struct rebase_options*) ; 
 int FUNC13 (char const**,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct rebase_options*,int) ; 
 int /*<<< orphan*/  FUNC15 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (char*,struct rebase_options*) ; 
 int /*<<< orphan*/  FUNC18 (struct strbuf*,char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC19 (struct strbuf*,char*) ; 
 int /*<<< orphan*/  FUNC20 (struct strbuf*) ; 
 char* FUNC21 (char*) ; 

__attribute__((used)) static int FUNC22(struct rebase_options *opts, enum action action)
{
	const char *argv[] = { NULL, NULL };
	struct strbuf script_snippet = STRBUF_INIT, buf = STRBUF_INIT;
	int status;
	const char *backend, *backend_func;

	if (opts->type == REBASE_INTERACTIVE) {
		/* Run builtin interactive rebase */
		FUNC15("GIT_CHERRY_PICK_HELP", resolvemsg, 1);
		if (!(opts->flags & REBASE_INTERACTIVE_EXPLICIT)) {
			FUNC15("GIT_SEQUENCE_EDITOR", ":", 1);
			opts->autosquash = 0;
		}
		if (opts->gpg_sign_opt) {
			/* remove the leading "-S" */
			char *tmp = FUNC21(opts->gpg_sign_opt + 2);
			FUNC7(opts->gpg_sign_opt);
			opts->gpg_sign_opt = tmp;
		}

		status = FUNC14(opts, action);
		goto finished_rebase;
	}

	if (opts->type == REBASE_AM) {
		status = FUNC12(opts);
		goto finished_rebase;
	}

	FUNC2(&script_snippet, "GIT_DIR", FUNC1(FUNC8()));
	FUNC2(&script_snippet, "state_dir", opts->state_dir);

	FUNC2(&script_snippet, "upstream_name", opts->upstream_name);
	FUNC2(&script_snippet, "upstream", opts->upstream ?
		FUNC10(&opts->upstream->object.oid) : NULL);
	FUNC2(&script_snippet, "head_name",
		opts->head_name ? opts->head_name : "detached HEAD");
	FUNC2(&script_snippet, "orig_head", FUNC10(&opts->orig_head));
	FUNC2(&script_snippet, "onto", opts->onto ?
		FUNC10(&opts->onto->object.oid) : NULL);
	FUNC2(&script_snippet, "onto_name", opts->onto_name);
	FUNC2(&script_snippet, "revisions", opts->revisions);
	FUNC2(&script_snippet, "restrict_revision", opts->restrict_revision ?
		FUNC10(&opts->restrict_revision->object.oid) : NULL);
	FUNC2(&script_snippet, "GIT_QUIET",
		opts->flags & REBASE_NO_QUIET ? "" : "t");
	FUNC16(&buf, opts->git_am_opts.argv);
	FUNC2(&script_snippet, "git_am_opt", buf.buf);
	FUNC20(&buf);
	FUNC2(&script_snippet, "verbose",
		opts->flags & REBASE_VERBOSE ? "t" : "");
	FUNC2(&script_snippet, "diffstat",
		opts->flags & REBASE_DIFFSTAT ? "t" : "");
	FUNC2(&script_snippet, "force_rebase",
		opts->flags & REBASE_FORCE ? "t" : "");
	if (opts->switch_to)
		FUNC2(&script_snippet, "switch_to", opts->switch_to);
	FUNC2(&script_snippet, "action", opts->action ? opts->action : "");
	FUNC2(&script_snippet, "signoff", opts->signoff ? "--signoff" : "");
	FUNC2(&script_snippet, "allow_rerere_autoupdate",
		opts->allow_rerere_autoupdate ?
			opts->allow_rerere_autoupdate == RERERE_AUTOUPDATE ?
			"--rerere-autoupdate" : "--no-rerere-autoupdate" : "");
	FUNC2(&script_snippet, "keep_empty", opts->keep_empty ? "yes" : "");
	FUNC2(&script_snippet, "autosquash", opts->autosquash ? "t" : "");
	FUNC2(&script_snippet, "gpg_sign_opt", opts->gpg_sign_opt);
	FUNC2(&script_snippet, "cmd", opts->cmd);
	FUNC2(&script_snippet, "allow_empty_message",
		opts->allow_empty_message ?  "--allow-empty-message" : "");
	FUNC2(&script_snippet, "rebase_merges",
		opts->rebase_merges ? "t" : "");
	FUNC2(&script_snippet, "rebase_cousins",
		opts->rebase_cousins ? "t" : "");
	FUNC2(&script_snippet, "strategy", opts->strategy);
	FUNC2(&script_snippet, "strategy_opts", opts->strategy_opts);
	FUNC2(&script_snippet, "rebase_root", opts->root ? "t" : "");
	FUNC2(&script_snippet, "squash_onto",
		opts->squash_onto ? FUNC10(opts->squash_onto) : "");
	FUNC2(&script_snippet, "git_format_patch_opt",
		opts->git_format_patch_opt.buf);

	if (FUNC9(opts) &&
	    !(opts->flags & REBASE_INTERACTIVE_EXPLICIT)) {
		FUNC19(&script_snippet,
			      "GIT_SEQUENCE_EDITOR=:; export GIT_SEQUENCE_EDITOR; ");
		opts->autosquash = 0;
	}

	switch (opts->type) {
	case REBASE_PRESERVE_MERGES:
		backend = "git-rebase--preserve-merges";
		backend_func = "git_rebase__preserve_merges";
		break;
	default:
		FUNC0("Unhandled rebase type %d", opts->type);
		break;
	}

	FUNC18(&script_snippet,
		    ". git-sh-setup && . %s && %s", backend, backend_func);
	argv[0] = script_snippet.buf;

	status = FUNC13(argv, RUN_USING_SHELL);
finished_rebase:
	if (opts->dont_finish_rebase)
		; /* do nothing */
	else if (opts->type == REBASE_INTERACTIVE)
		; /* interactive rebase cleans up after itself */
	else if (status == 0) {
		if (!FUNC5(FUNC17("stopped-sha", opts)))
			FUNC6(opts);
	} else if (status == 2) {
		struct strbuf dir = STRBUF_INIT;

		FUNC3(opts);
		FUNC19(&dir, opts->state_dir);
		FUNC11(&dir, 0);
		FUNC20(&dir);
		FUNC4("Nothing to do");
	}

	FUNC20(&script_snippet);

	return status ? -1 : 0;
}