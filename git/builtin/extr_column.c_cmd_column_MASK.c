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
struct strbuf {int /*<<< orphan*/  buf; } ;
struct option {int dummy; } ;
struct column_options {int width; char const* indent; int nl; int padding; } ;
typedef  int /*<<< orphan*/  copts ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct option FUNC1 (int /*<<< orphan*/ ,char*,int*,int /*<<< orphan*/ ) ; 
 struct option FUNC2 () ; 
 struct option FUNC3 (int /*<<< orphan*/ ,char*,int*,int /*<<< orphan*/ ) ; 
 struct option FUNC4 (int /*<<< orphan*/ ,char*,char const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct strbuf STRBUF_INIT ; 
 struct string_list STRING_LIST_INIT_DUP ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  builtin_column_usage ; 
 int colopts ; 
 int /*<<< orphan*/  column_config ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC9 (struct column_options*,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (int,char const**,char const*,struct option*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct string_list*,int,struct column_options*) ; 
 scalar_t__ FUNC12 (char const*,char*) ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  FUNC13 (struct strbuf*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC15 (struct string_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,struct option*) ; 

int FUNC17(int argc, const char **argv, const char *prefix)
{
	struct string_list list = STRING_LIST_INIT_DUP;
	struct strbuf sb = STRBUF_INIT;
	struct column_options copts;
	const char *command = NULL, *real_command = NULL;
	struct option options[] = {
		FUNC4(0, "command", &real_command, FUNC0("name"), FUNC0("lookup config vars")),
		FUNC1(0, "mode", &colopts, FUNC0("layout to use")),
		FUNC3(0, "raw-mode", &colopts, FUNC0("layout to use")),
		FUNC3(0, "width", &copts.width, FUNC0("Maximum width")),
		FUNC4(0, "indent", &copts.indent, FUNC0("string"), FUNC0("Padding space on left border")),
		FUNC3(0, "nl", &copts.nl, FUNC0("Padding space on right border")),
		FUNC3(0, "padding", &copts.padding, FUNC0("Padding space between columns")),
		FUNC2()
	};

	/* This one is special and must be the first one */
	if (argc > 1 && FUNC12(argv[1], "--command=")) {
		command = argv[1] + 10;
		FUNC8(column_config, (void *)command);
	} else
		FUNC8(column_config, NULL);

	FUNC9(&copts, 0, sizeof(copts));
	copts.padding = 1;
	argc = FUNC10(argc, argv, prefix, options, builtin_column_usage, 0);
	if (argc)
		FUNC16(builtin_column_usage, options);
	if (real_command || command) {
		if (!real_command || !command || FUNC14(real_command, command))
			FUNC6(FUNC5("--command must be the first argument"));
	}
	FUNC7(&colopts, -1);
	while (!FUNC13(&sb, stdin))
		FUNC15(&list, sb.buf);

	FUNC11(&list, colopts, &copts);
	return 0;
}