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
struct strbuf {char const* buf; } ;

/* Variables and functions */
 scalar_t__ EOF ; 
 struct strbuf STRBUF_INIT ; 
 struct string_list STRING_LIST_INIT_NODUP ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct string_list*,char const*) ; 
 int /*<<< orphan*/  check_mailmap_options ; 
 int /*<<< orphan*/  check_mailmap_usage ; 
 int /*<<< orphan*/  FUNC2 (struct string_list*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  git_default_config ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int FUNC6 (int,char const**,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct string_list*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ FUNC8 (struct strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct strbuf*) ; 
 scalar_t__ use_stdin ; 

int FUNC10(int argc, const char **argv, const char *prefix)
{
	int i;
	struct string_list mailmap = STRING_LIST_INIT_NODUP;

	FUNC4(git_default_config, NULL);
	argc = FUNC6(argc, argv, prefix, check_mailmap_options,
			     check_mailmap_usage, 0);
	if (argc == 0 && !use_stdin)
		FUNC3(FUNC0("no contacts specified"));

	FUNC7(&mailmap, NULL);

	for (i = 0; i < argc; ++i)
		FUNC1(&mailmap, argv[i]);
	FUNC5(stdout, "stdout");

	if (use_stdin) {
		struct strbuf buf = STRBUF_INIT;
		while (FUNC8(&buf, stdin) != EOF) {
			FUNC1(&mailmap, buf.buf);
			FUNC5(stdout, "stdout");
		}
		FUNC9(&buf);
	}

	FUNC2(&mailmap);
	return 0;
}