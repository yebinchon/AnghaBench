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
struct strbuf {char* buf; } ;
struct object_id {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  argv; } ;
struct am_state {int threeway; int quiet; int signoff; int utf8; scalar_t__ allow_rerere_autoupdate; int keep; int message_id; int scissors; int /*<<< orphan*/  last; int /*<<< orphan*/  cur; scalar_t__ rebasing; TYPE_1__ git_apply_opts; int /*<<< orphan*/  dir; } ;
typedef  enum patch_format { ____Placeholder_patch_format } patch_format ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ EEXIST ; 
#define  KEEP_FALSE 133 
#define  KEEP_NON_PATCH 132 
#define  KEEP_TRUE 131 
 int /*<<< orphan*/  REF_NO_DEREF ; 
 scalar_t__ RERERE_AUTOUPDATE ; 
#define  SCISSORS_FALSE 130 
#define  SCISSORS_TRUE 129 
#define  SCISSORS_UNSET 128 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  UPDATE_REFS_DIE_ON_ERR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct am_state*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (char const**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,struct object_id*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int) ; 
 char* FUNC11 (struct object_id*) ; 
 scalar_t__ FUNC12 (struct am_state*,int,char const**,int) ; 
 int /*<<< orphan*/  FUNC13 (struct strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC14 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC15 (char*,char*,struct object_id*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct am_state*,char*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct am_state*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct am_state*,char*,char const*) ; 

__attribute__((used)) static void FUNC19(struct am_state *state, enum patch_format patch_format,
			const char **paths, int keep_cr)
{
	struct object_id curr_head;
	const char *str;
	struct strbuf sb = STRBUF_INIT;

	if (!patch_format)
		patch_format = FUNC4(paths);

	if (!patch_format) {
		FUNC8(stderr, FUNC1("Patch format detection failed."));
		FUNC7(128);
	}

	if (FUNC10(state->dir, 0777) < 0 && errno != EEXIST)
		FUNC6(FUNC1("failed to create directory '%s'"), state->dir);
	FUNC3(NULL, "REBASE_HEAD", NULL, REF_NO_DEREF);

	if (FUNC12(state, patch_format, paths, keep_cr) < 0) {
		FUNC2(state);
		FUNC5(FUNC1("Failed to split patches."));
	}

	if (state->rebasing)
		state->threeway = 1;

	FUNC16(state, "threeway", state->threeway);
	FUNC16(state, "quiet", state->quiet);
	FUNC16(state, "sign", state->signoff);
	FUNC16(state, "utf8", state->utf8);

	if (state->allow_rerere_autoupdate)
		FUNC16(state, "rerere-autoupdate",
			 state->allow_rerere_autoupdate == RERERE_AUTOUPDATE);

	switch (state->keep) {
	case KEEP_FALSE:
		str = "f";
		break;
	case KEEP_TRUE:
		str = "t";
		break;
	case KEEP_NON_PATCH:
		str = "b";
		break;
	default:
		FUNC0("invalid value for state->keep");
	}

	FUNC18(state, "keep", str);
	FUNC16(state, "messageid", state->message_id);

	switch (state->scissors) {
	case SCISSORS_UNSET:
		str = "";
		break;
	case SCISSORS_FALSE:
		str = "f";
		break;
	case SCISSORS_TRUE:
		str = "t";
		break;
	default:
		FUNC0("invalid value for state->scissors");
	}
	FUNC18(state, "scissors", str);

	FUNC13(&sb, state->git_apply_opts.argv);
	FUNC18(state, "apply-opt", sb.buf);

	if (state->rebasing)
		FUNC18(state, "rebasing", "");
	else
		FUNC18(state, "applying", "");

	if (!FUNC9("HEAD", &curr_head)) {
		FUNC18(state, "abort-safety", FUNC11(&curr_head));
		if (!state->rebasing)
			FUNC15("am", "ORIG_HEAD", &curr_head, NULL, 0,
				   UPDATE_REFS_DIE_ON_ERR);
	} else {
		FUNC18(state, "abort-safety", "");
		if (!state->rebasing)
			FUNC3(NULL, "ORIG_HEAD", NULL, 0);
	}

	/*
	 * NOTE: Since the "next" and "last" files determine if an am_state
	 * session is in progress, they should be written last.
	 */

	FUNC17(state, "next", state->cur);
	FUNC17(state, "last", state->last);

	FUNC14(&sb);
}