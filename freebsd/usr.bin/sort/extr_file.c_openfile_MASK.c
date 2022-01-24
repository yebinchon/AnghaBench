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
typedef  int mode_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int S_IRGRP ; 
 int S_IROTH ; 
 int S_IWGRP ; 
 int S_IWOTH ; 
 char* compress_program ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (char const*) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/ * FUNC5 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (char*,size_t,char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 char* FUNC8 (size_t) ; 
 int /*<<< orphan*/ * stdin ; 
 int /*<<< orphan*/ * stdout ; 
 scalar_t__ FUNC9 (char const*,char*) ; 
 int FUNC10 (char const*) ; 
 int FUNC11 (int) ; 

FILE *
FUNC12(const char *fn, const char *mode)
{
	FILE *file;

	if (FUNC9(fn, "-") == 0) {
		return ((mode && mode[0] == 'r') ? stdin : stdout);
	} else {
		mode_t orig_file_mask = 0;
		int is_tmp = FUNC2(fn);

		if (is_tmp && (mode[0] == 'w'))
			orig_file_mask = FUNC11(S_IWGRP | S_IWOTH |
			    S_IRGRP | S_IROTH);

		if (is_tmp && (compress_program != NULL)) {
			char *cmd;
			size_t cmdsz;

			cmdsz = FUNC10(fn) + 128;
			cmd = FUNC8(cmdsz);

			FUNC1(stdout);

			if (mode[0] == 'r')
				FUNC6(cmd, cmdsz - 1, "cat %s | %s -d",
				    fn, compress_program);
			else if (mode[0] == 'w')
				FUNC6(cmd, cmdsz - 1, "%s > %s",
				    compress_program, fn);
			else
				FUNC0(2, "%s", FUNC4(7));

			if ((file = FUNC5(cmd, mode)) == NULL)
				FUNC0(2, NULL);

			FUNC7(cmd);

		} else
			if ((file = FUNC3(fn, mode)) == NULL)
				FUNC0(2, NULL);

		if (is_tmp && (mode[0] == 'w'))
			FUNC11(orig_file_mask);
	}

	return (file);
}