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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  ERROR_EXIT ; 
 int MAX_FNAME ; 
 int /*<<< orphan*/  Pid ; 
 int /*<<< orphan*/  RealUser ; 
 int /*<<< orphan*/  User ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void
FUNC8() {
	char	n[MAX_FNAME];
	FILE	*f;

	FUNC6(RealUser, Pid, "LIST", User);
	(void) FUNC7(n, sizeof(n), FUNC0(User));
	if (!(f = FUNC5(n, "r"))) {
		if (errno == ENOENT)
			FUNC3(ERROR_EXIT, "no crontab for %s", User);
		else
			FUNC2(ERROR_EXIT, "%s", n);
	}

	/* file is open. copy to stdout, close.
	 */
	FUNC1(f, stdout);
	FUNC4(f);
}