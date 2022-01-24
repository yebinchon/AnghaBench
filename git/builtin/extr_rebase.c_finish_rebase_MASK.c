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
struct strbuf {int dummy; } ;
struct replay_opts {int /*<<< orphan*/  action; } ;
struct rebase_options {scalar_t__ type; int /*<<< orphan*/  state_dir; } ;
struct TYPE_2__ {int /*<<< orphan*/  objects; } ;

/* Variables and functions */
 scalar_t__ REBASE_INTERACTIVE ; 
 int /*<<< orphan*/  REF_NO_DEREF ; 
 int /*<<< orphan*/  REPLAY_INTERACTIVE_REBASE ; 
 struct replay_opts REPLAY_OPTS_INIT ; 
 int /*<<< orphan*/  RUN_GIT_CMD ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct rebase_options*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char const**,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct replay_opts*) ; 
 int /*<<< orphan*/  FUNC8 (struct strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct strbuf*) ; 
 TYPE_1__* the_repository ; 

__attribute__((used)) static int FUNC10(struct rebase_options *opts)
{
	struct strbuf dir = STRBUF_INIT;
	const char *argv_gc_auto[] = { "gc", "--auto", NULL };
	int ret = 0;

	FUNC3(NULL, "REBASE_HEAD", NULL, REF_NO_DEREF);
	FUNC1(opts);
	FUNC2(the_repository->objects);
	/*
	 * We ignore errors in 'gc --auto', since the
	 * user should see them.
	 */
	FUNC6(argv_gc_auto, RUN_GIT_CMD);
	if (opts->type == REBASE_INTERACTIVE) {
		struct replay_opts replay = REPLAY_OPTS_INIT;

		replay.action = REPLAY_INTERACTIVE_REBASE;
		ret = FUNC7(&replay);
	} else {
		FUNC8(&dir, opts->state_dir);
		if (FUNC5(&dir, 0))
			ret = FUNC4(FUNC0("could not remove '%s'"),
				    opts->state_dir);
		FUNC9(&dir);
	}

	return ret;
}