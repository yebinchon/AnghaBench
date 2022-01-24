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
struct option {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GPG_VERIFY_RAW ; 
 unsigned int GPG_VERIFY_VERBOSE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct option const FUNC1 (int /*<<< orphan*/ ,char*,unsigned int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct option const FUNC2 () ; 
 struct option const FUNC3 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PARSE_OPT_KEEP_ARGV0 ; 
 int /*<<< orphan*/  SIGPIPE ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  git_verify_commit_config ; 
 int FUNC5 (int,char const**,char const*,struct option const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct option const*) ; 
 scalar_t__ FUNC8 (char const*,unsigned int) ; 
 int /*<<< orphan*/  verify_commit_usage ; 

int FUNC9(int argc, const char **argv, const char *prefix)
{
	int i = 1, verbose = 0, had_error = 0;
	unsigned flags = 0;
	const struct option verify_commit_options[] = {
		FUNC3(&verbose, FUNC0("print commit contents")),
		FUNC1(0, "raw", &flags, FUNC0("print raw gpg status output"), GPG_VERIFY_RAW),
		FUNC2()
	};

	FUNC4(git_verify_commit_config, NULL);

	argc = FUNC5(argc, argv, prefix, verify_commit_options,
			     verify_commit_usage, PARSE_OPT_KEEP_ARGV0);
	if (argc <= i)
		FUNC7(verify_commit_usage, verify_commit_options);

	if (verbose)
		flags |= GPG_VERIFY_VERBOSE;

	/* sometimes the program was terminated because this signal
	 * was received in the process of writing the gpg input: */
	FUNC6(SIGPIPE, SIG_IGN);
	while (i < argc)
		if (FUNC8(argv[i++], flags))
			had_error = 1;
	return had_error;
}