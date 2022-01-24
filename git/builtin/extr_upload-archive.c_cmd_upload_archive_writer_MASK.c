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
struct argv_array {int /*<<< orphan*/  argv; int /*<<< orphan*/  argc; } ;

/* Variables and functions */
 struct argv_array ARGV_ARRAY_INIT ; 
 int /*<<< orphan*/  MAX_ARGS ; 
 int /*<<< orphan*/  FUNC0 (struct argv_array*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 char* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char*) ; 
 int FUNC7 (char const*) ; 
 int /*<<< orphan*/  the_repository ; 
 int /*<<< orphan*/  upload_archive_usage ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

int FUNC10(int argc, const char **argv, const char *prefix)
{
	struct argv_array sent_argv = ARGV_ARRAY_INIT;
	const char *arg_cmd = "argument ";

	if (argc != 2 || !FUNC6(argv[1], "-h"))
		FUNC8(upload_archive_usage);

	if (!FUNC2(argv[1], 0))
		FUNC1("'%s' does not appear to be a git repository", argv[1]);

	FUNC3();

	/* put received options in sent_argv[] */
	FUNC0(&sent_argv, "git-upload-archive");
	for (;;) {
		char *buf = FUNC4(0, NULL);
		if (!buf)
			break;	/* got a flush */
		if (sent_argv.argc > MAX_ARGS)
			FUNC1("Too many options (>%d)", MAX_ARGS - 1);

		if (!FUNC5(buf, arg_cmd))
			FUNC1("'argument' token or flush expected");
		FUNC0(&sent_argv, buf + FUNC7(arg_cmd));
	}

	/* parse all options sent by the client */
	return FUNC9(sent_argv.argc, sent_argv.argv, prefix,
			     the_repository, NULL, 1);
}