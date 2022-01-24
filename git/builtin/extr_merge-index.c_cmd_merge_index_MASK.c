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

/* Variables and functions */
 int /*<<< orphan*/  SIGCHLD ; 
 int /*<<< orphan*/  SIG_DFL ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int err ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int one_shot ; 
 char const* pgm ; 
 int quiet ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

int FUNC7(int argc, const char **argv, const char *prefix)
{
	int i, force_file = 0;

	/* Without this we cannot rely on waitpid() to tell
	 * what happened to our children.
	 */
	FUNC4(SIGCHLD, SIG_DFL);

	if (argc < 3)
		FUNC6("git merge-index [-o] [-q] <merge-program> (-a | [--] [<filename>...])");

	FUNC3();

	i = 1;
	if (!FUNC5(argv[i], "-o")) {
		one_shot = 1;
		i++;
	}
	if (!FUNC5(argv[i], "-q")) {
		quiet = 1;
		i++;
	}
	pgm = argv[i++];
	for (; i < argc; i++) {
		const char *arg = argv[i];
		if (!force_file && *arg == '-') {
			if (!FUNC5(arg, "--")) {
				force_file = 1;
				continue;
			}
			if (!FUNC5(arg, "-a")) {
				FUNC1();
				continue;
			}
			FUNC0("git merge-index: unknown option %s", arg);
		}
		FUNC2(arg);
	}
	if (err && !quiet)
		FUNC0("merge program failed");
	return err;
}