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
typedef  int /*<<< orphan*/  n ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 scalar_t__ ENOENT ; 
 int EOF ; 
 int /*<<< orphan*/  ERROR_EXIT ; 
 int MAX_FNAME ; 
 int /*<<< orphan*/  Pid ; 
 int /*<<< orphan*/  RealUser ; 
 int /*<<< orphan*/  STDIN_FILENO ; 
 char* User ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  fflag ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC9 (char*) ; 

__attribute__((used)) static void
FUNC10() {
	char	n[MAX_FNAME];
	int ch, first;

	if (!fflag && FUNC5(STDIN_FILENO)) {
		(void)FUNC3(stderr, "remove crontab for %s? ", User);
		first = ch = FUNC4();
		while (ch != '\n' && ch != EOF)
			ch = FUNC4();
		if (first != 'y' && first != 'Y')
			return;
	}

	FUNC6(RealUser, Pid, "DELETE", User);
	(void) FUNC8(n, sizeof(n), FUNC0(User));
	if (FUNC9(n)) {
		if (errno == ENOENT)
			FUNC2(ERROR_EXIT, "no crontab for %s", User);
		else
			FUNC1(ERROR_EXIT, "%s", n);
	}
	FUNC7();
}