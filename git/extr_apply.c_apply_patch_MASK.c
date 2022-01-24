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
struct strbuf {size_t len; scalar_t__ buf; } ;
struct patch {int inaccurate_eof; int recount; scalar_t__ old_name; scalar_t__ new_name; struct patch* next; } ;
struct apply_state {char const* patch_input_file; scalar_t__ apply_verbosity; scalar_t__ ws_error_action; int update_index; int /*<<< orphan*/  fn_table; scalar_t__ summary; scalar_t__ numstat; scalar_t__ diffstat; scalar_t__ fake_ancestor; scalar_t__ apply_with_reject; scalar_t__ apply; scalar_t__ check; scalar_t__ check_index; int /*<<< orphan*/  lock_file; int /*<<< orphan*/  repo; scalar_t__ index_file; scalar_t__ ita_only; scalar_t__ whitespace_error; scalar_t__ apply_in_reverse; } ;

/* Variables and functions */
 int APPLY_OPT_INACCURATE_EOF ; 
 int APPLY_OPT_RECOUNT ; 
 int /*<<< orphan*/  GITATTRIBUTES_FILE ; 
 int /*<<< orphan*/  LOCK_DIE_ON_ERROR ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (struct apply_state*,struct patch*) ; 
 int FUNC2 (struct apply_state*,struct patch*) ; 
 scalar_t__ die_on_ws_error ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct patch*) ; 
 int /*<<< orphan*/  FUNC6 (struct patch*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct apply_state*,struct patch*) ; 
 int FUNC10 (struct apply_state*,scalar_t__,size_t,struct patch*) ; 
 int /*<<< orphan*/  FUNC11 (struct apply_state*,struct patch*) ; 
 scalar_t__ FUNC12 (struct apply_state*) ; 
 scalar_t__ FUNC13 (struct strbuf*,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (struct patch*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct patch*) ; 
 int /*<<< orphan*/  FUNC18 (struct apply_state*,struct patch*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC19 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct patch*) ; 
 scalar_t__ FUNC22 (struct apply_state*,struct patch*) ; 
 scalar_t__ verbosity_normal ; 
 scalar_t__ verbosity_silent ; 
 int FUNC23 (struct apply_state*,struct patch*) ; 
 struct patch* FUNC24 (int,int) ; 

__attribute__((used)) static int FUNC25(struct apply_state *state,
		       int fd,
		       const char *filename,
		       int options)
{
	size_t offset;
	struct strbuf buf = STRBUF_INIT; /* owns the patch text */
	struct patch *list = NULL, **listp = &list;
	int skipped_patch = 0;
	int res = 0;
	int flush_attributes = 0;

	state->patch_input_file = filename;
	if (FUNC13(&buf, fd) < 0)
		return -128;
	offset = 0;
	while (offset < buf.len) {
		struct patch *patch;
		int nr;

		patch = FUNC24(1, sizeof(*patch));
		patch->inaccurate_eof = !!(options & APPLY_OPT_INACCURATE_EOF);
		patch->recount =  !!(options & APPLY_OPT_RECOUNT);
		nr = FUNC10(state, buf.buf + offset, buf.len - offset, patch);
		if (nr < 0) {
			FUNC5(patch);
			if (nr == -128) {
				res = -128;
				goto end;
			}
			break;
		}
		if (state->apply_in_reverse)
			FUNC16(patch);
		if (FUNC22(state, patch)) {
			FUNC11(state, patch);
			*listp = patch;
			listp = &patch->next;

			if ((patch->new_name &&
			     FUNC3(patch->new_name,
						       GITATTRIBUTES_FILE)) ||
			    (patch->old_name &&
			     FUNC3(patch->old_name,
						       GITATTRIBUTES_FILE)))
				flush_attributes = 1;
		}
		else {
			if (state->apply_verbosity > verbosity_normal)
				FUNC17(stderr, FUNC0("Skipped patch '%s'."), patch);
			FUNC5(patch);
			skipped_patch++;
		}
		offset += nr;
	}

	if (!list && !skipped_patch) {
		FUNC4(FUNC0("unrecognized input"));
		res = -128;
		goto end;
	}

	if (state->whitespace_error && (state->ws_error_action == die_on_ws_error))
		state->apply = 0;

	state->update_index = (state->check_index || state->ita_only) && state->apply;
	if (state->update_index && !FUNC8(&state->lock_file)) {
		if (state->index_file)
			FUNC7(&state->lock_file,
						  state->index_file,
						  LOCK_DIE_ON_ERROR);
		else
			FUNC14(state->repo, &state->lock_file,
					       LOCK_DIE_ON_ERROR);
	}

	if (state->check_index && FUNC12(state) < 0) {
		FUNC4(FUNC0("unable to read index file"));
		res = -128;
		goto end;
	}

	if (state->check || state->apply) {
		int r = FUNC2(state, list);
		if (r == -128) {
			res = -128;
			goto end;
		}
		if (r < 0 && !state->apply_with_reject) {
			res = -1;
			goto end;
		}
	}

	if (state->apply) {
		int write_res = FUNC23(state, list);
		if (write_res < 0) {
			res = -128;
			goto end;
		}
		if (write_res > 0) {
			/* with --3way, we still need to write the index out */
			res = state->apply_with_reject ? -1 : 1;
			goto end;
		}
	}

	if (state->fake_ancestor &&
	    FUNC1(state, list)) {
		res = -128;
		goto end;
	}

	if (state->diffstat && state->apply_verbosity > verbosity_silent)
		FUNC18(state, list);

	if (state->numstat && state->apply_verbosity > verbosity_silent)
		FUNC9(state, list);

	if (state->summary && state->apply_verbosity > verbosity_silent)
		FUNC21(list);

	if (flush_attributes)
		FUNC15();
end:
	FUNC6(list);
	FUNC19(&buf);
	FUNC20(&state->fn_table, 0);
	return res;
}