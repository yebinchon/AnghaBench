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
struct apply_state {int whitespace_error; int squelch_whitespace_errors; scalar_t__ ws_error_action; int applied_after_fixing_ws; scalar_t__ apply_verbosity; int /*<<< orphan*/  saved_warn_routine; int /*<<< orphan*/  saved_error_routine; int /*<<< orphan*/  lock_file; TYPE_1__* repo; scalar_t__ update_index; scalar_t__ apply; int /*<<< orphan*/  prefix; } ;
struct TYPE_2__ {int /*<<< orphan*/  index; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMMIT_LOCK ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (struct apply_state*,int,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ die_on_ws_error ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (char const*,int /*<<< orphan*/ ) ; 
 char* FUNC7 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct apply_state*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char const*,char*) ; 
 char* FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ verbosity_silent ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int) ; 
 int FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC16(struct apply_state *state,
		      int argc,
		      const char **argv,
		      int options)
{
	int i;
	int res;
	int errs = 0;
	int read_stdin = 1;

	for (i = 0; i < argc; i++) {
		const char *arg = argv[i];
		char *to_free = NULL;
		int fd;

		if (!FUNC12(arg, "-")) {
			res = FUNC2(state, 0, "<stdin>", options);
			if (res < 0)
				goto end;
			errs |= res;
			read_stdin = 0;
			continue;
		} else
			arg = to_free = FUNC7(state->prefix, arg);

		fd = FUNC6(arg, O_RDONLY);
		if (fd < 0) {
			FUNC4(FUNC1("can't open patch '%s': %s"), arg, FUNC13(errno));
			res = -128;
			FUNC5(to_free);
			goto end;
		}
		read_stdin = 0;
		FUNC9(state);
		res = FUNC2(state, fd, arg, options);
		FUNC3(fd);
		FUNC5(to_free);
		if (res < 0)
			goto end;
		errs |= res;
	}
	FUNC9(state);
	if (read_stdin) {
		res = FUNC2(state, 0, "<stdin>", options);
		if (res < 0)
			goto end;
		errs |= res;
	}

	if (state->whitespace_error) {
		if (state->squelch_whitespace_errors &&
		    state->squelch_whitespace_errors < state->whitespace_error) {
			int squelched =
				state->whitespace_error - state->squelch_whitespace_errors;
			FUNC14(FUNC0("squelched %d whitespace error",
				   "squelched %d whitespace errors",
				   squelched),
				squelched);
		}
		if (state->ws_error_action == die_on_ws_error) {
			FUNC4(FUNC0("%d line adds whitespace errors.",
				 "%d lines add whitespace errors.",
				 state->whitespace_error),
			      state->whitespace_error);
			res = -128;
			goto end;
		}
		if (state->applied_after_fixing_ws && state->apply)
			FUNC14(FUNC0("%d line applied after"
				   " fixing whitespace errors.",
				   "%d lines applied after"
				   " fixing whitespace errors.",
				   state->applied_after_fixing_ws),
				state->applied_after_fixing_ws);
		else if (state->whitespace_error)
			FUNC14(FUNC0("%d line adds whitespace errors.",
				   "%d lines add whitespace errors.",
				   state->whitespace_error),
				state->whitespace_error);
	}

	if (state->update_index) {
		res = FUNC15(state->repo->index, &state->lock_file, COMMIT_LOCK);
		if (res) {
			FUNC4(FUNC1("Unable to write new index file"));
			res = -128;
			goto end;
		}
	}

	res = !!errs;

end:
	FUNC8(&state->lock_file);

	if (state->apply_verbosity <= verbosity_silent) {
		FUNC10(state->saved_error_routine);
		FUNC11(state->saved_warn_routine);
	}

	if (res > -1)
		return res;
	return (res == -1 ? 1 : 128);
}