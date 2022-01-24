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
struct stat {int dummy; } ;
typedef  int /*<<< orphan*/  ans ;

/* Variables and functions */
 int /*<<< orphan*/  STDIN_FILENO ; 
 scalar_t__ fflag ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ lflag ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 scalar_t__ FUNC4 (char const*,struct stat*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 

__attribute__((used)) static int
FUNC6(const char *outfile)
{
	struct stat sb;
	int ok = 1;

	if (lflag == 0 && FUNC4(outfile, &sb) == 0) {
		if (fflag)
			FUNC5(outfile);
		else if (FUNC2(STDIN_FILENO)) {
			char ans[10] = { 'n', '\0' };	/* default */

			FUNC1(stderr, "%s already exists -- do you wish to "
					"overwrite (y or n)? " , outfile);
			(void)FUNC0(ans, sizeof(ans) - 1, stdin);
			if (ans[0] != 'y' && ans[0] != 'Y') {
				FUNC1(stderr, "\tnot overwriting\n");
				ok = 0;
			} else
				FUNC5(outfile);
		} else {
			FUNC3("%s already exists -- skipping", outfile);
			ok = 0;
		}
	}
	return ok;
}