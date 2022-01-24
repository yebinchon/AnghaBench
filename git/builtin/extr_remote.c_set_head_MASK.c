#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct strbuf {int /*<<< orphan*/  buf; } ;
struct TYPE_4__ {int nr; TYPE_1__* items; } ;
struct ref_states {TYPE_2__ heads; } ;
struct option {int dummy; } ;
typedef  int /*<<< orphan*/  states ;
struct TYPE_3__ {char* string; } ;

/* Variables and functions */
 int /*<<< orphan*/  GET_HEAD_NAMES ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct option FUNC1 (char,char*,int*,int /*<<< orphan*/ ) ; 
 struct option FUNC2 () ; 
 int /*<<< orphan*/  REF_NO_DEREF ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  builtin_remote_sethead_usage ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (struct ref_states*) ; 
 int /*<<< orphan*/  FUNC10 (char const*,struct ref_states*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct ref_states*,int /*<<< orphan*/ ,int) ; 
 int FUNC12 (int,char const**,int /*<<< orphan*/ *,struct option*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC15 (struct strbuf*,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC16 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,struct option*) ; 
 char* FUNC18 (char const*) ; 

__attribute__((used)) static int FUNC19(int argc, const char **argv)
{
	int i, opt_a = 0, opt_d = 0, result = 0;
	struct strbuf buf = STRBUF_INIT, buf2 = STRBUF_INIT;
	char *head_name = NULL;

	struct option options[] = {
		FUNC1('a', "auto", &opt_a,
			 FUNC0("set refs/remotes/<name>/HEAD according to remote")),
		FUNC1('d', "delete", &opt_d,
			 FUNC0("delete refs/remotes/<name>/HEAD")),
		FUNC2()
	};
	argc = FUNC12(argc, argv, NULL, options, builtin_remote_sethead_usage,
			     0);
	if (argc)
		FUNC15(&buf, "refs/remotes/%s/HEAD", argv[0]);

	if (!opt_a && !opt_d && argc == 2) {
		head_name = FUNC18(argv[1]);
	} else if (opt_a && !opt_d && argc == 1) {
		struct ref_states states;
		FUNC11(&states, 0, sizeof(states));
		FUNC10(argv[0], &states, GET_HEAD_NAMES);
		if (!states.heads.nr)
			result |= FUNC6(FUNC3("Cannot determine remote HEAD"));
		else if (states.heads.nr > 1) {
			result |= FUNC6(FUNC3("Multiple remote HEAD branches. "
					  "Please choose one explicitly with:"));
			for (i = 0; i < states.heads.nr; i++)
				FUNC7(stderr, "  git remote set-head %s %s\n",
					argv[0], states.heads.items[i].string);
		} else
			head_name = FUNC18(states.heads.items[0].string);
		FUNC9(&states);
	} else if (opt_d && !opt_a && argc == 1) {
		if (FUNC5(NULL, buf.buf, NULL, REF_NO_DEREF))
			result |= FUNC6(FUNC3("Could not delete %s"), buf.buf);
	} else
		FUNC17(builtin_remote_sethead_usage, options);

	if (head_name) {
		FUNC15(&buf2, "refs/remotes/%s/%s", argv[0], head_name);
		/* make sure it's valid */
		if (!FUNC14(buf2.buf))
			result |= FUNC6(FUNC3("Not a valid ref: %s"), buf2.buf);
		else if (FUNC4(buf.buf, buf2.buf, "remote set-head"))
			result |= FUNC6(FUNC3("Could not setup %s"), buf.buf);
		if (opt_a)
			FUNC13("%s/HEAD set to %s\n", argv[0], head_name);
		FUNC8(head_name);
	}

	FUNC16(&buf);
	FUNC16(&buf2);
	return result;
}