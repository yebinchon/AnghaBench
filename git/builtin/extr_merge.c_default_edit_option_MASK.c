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
struct stat {scalar_t__ st_dev; scalar_t__ st_ino; scalar_t__ st_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int,struct stat*) ; 
 char* FUNC3 (char const*) ; 
 int FUNC4 (char const*) ; 
 scalar_t__ have_message ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(void)
{
	static const char name[] = "GIT_MERGE_AUTOEDIT";
	const char *e = FUNC3(name);
	struct stat st_stdin, st_stdout;

	if (have_message)
		/* an explicit -m msg without --[no-]edit */
		return 0;

	if (e) {
		int v = FUNC4(e);
		if (v < 0)
			FUNC1(FUNC0("Bad value '%s' in environment '%s'"), e, name);
		return v;
	}

	/* Use editor if stdin and stdout are the same and is a tty */
	return (!FUNC2(0, &st_stdin) &&
		!FUNC2(1, &st_stdout) &&
		FUNC5(0) && FUNC5(1) &&
		st_stdin.st_dev == st_stdout.st_dev &&
		st_stdin.st_ino == st_stdout.st_ino &&
		st_stdin.st_mode == st_stdout.st_mode);
}