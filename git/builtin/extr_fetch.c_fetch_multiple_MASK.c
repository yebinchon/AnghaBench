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
struct string_list {int nr; TYPE_1__* items; } ;
struct parallel_fetch_state {int result; int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; struct string_list* member_1; int /*<<< orphan*/  member_0; } ;
struct argv_array {int /*<<< orphan*/  argv; } ;
struct TYPE_2__ {char* string; } ;

/* Variables and functions */
 struct argv_array ARGV_ARRAY_INIT ; 
 int /*<<< orphan*/  RUN_GIT_CMD ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct argv_array*) ; 
 int /*<<< orphan*/  append ; 
 int /*<<< orphan*/  FUNC2 (struct argv_array*) ; 
 int /*<<< orphan*/  FUNC3 (struct argv_array*) ; 
 int /*<<< orphan*/  FUNC4 (struct argv_array*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (struct argv_array*,char*,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dry_run ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*) ; 
 int /*<<< orphan*/  fetch_failed_to_start ; 
 int /*<<< orphan*/  fetch_finished ; 
 int /*<<< orphan*/  fetch_next_remote ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct parallel_fetch_state*,char*,char*) ; 
 int FUNC10 () ; 
 scalar_t__ verbosity ; 

__attribute__((used)) static int FUNC11(struct string_list *list, int max_children)
{
	int i, result = 0;
	struct argv_array argv = ARGV_ARRAY_INIT;

	if (!append && !dry_run) {
		int errcode = FUNC10();
		if (errcode)
			return errcode;
	}

	FUNC5(&argv, "fetch", "--append", "--no-auto-gc", NULL);
	FUNC1(&argv);

	if (max_children != 1 && list->nr != 1) {
		struct parallel_fetch_state state = { argv.argv, list, 0, 0 };

		FUNC4(&argv, "--end-of-options");
		result = FUNC9(max_children,
						    &fetch_next_remote,
						    &fetch_failed_to_start,
						    &fetch_finished,
						    &state,
						    "fetch", "parallel/fetch");

		if (!result)
			result = state.result;
	} else
		for (i = 0; i < list->nr; i++) {
			const char *name = list->items[i].string;
			FUNC4(&argv, name);
			if (verbosity >= 0)
				FUNC7(FUNC0("Fetching %s\n"), name);
			if (FUNC8(argv.argv, RUN_GIT_CMD)) {
				FUNC6(FUNC0("Could not fetch %s"), name);
				result = 1;
			}
			FUNC3(&argv);
		}

	FUNC2(&argv);
	return !!result;
}