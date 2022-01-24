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
typedef  int ssize_t ;
typedef  int /*<<< orphan*/ * efidp ;
typedef  int /*<<< orphan*/  buffer ;

/* Variables and functions */
 int MAXSIZE ; 
 int /*<<< orphan*/  STDOUT_FILENO ; 
 int FUNC0 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 scalar_t__ FUNC2 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int) ; 
 int /*<<< orphan*/  stdin ; 
 char* FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC7(void)
{
	char buffer[MAXSIZE];
	efidp dp;
	ssize_t dplen;
	char *walker;

	dplen = MAXSIZE;
	dp = FUNC4(dplen);
	if (dp == NULL)
		FUNC1(1, "Can't allocate memory.");
	while (FUNC2(buffer, sizeof(buffer), stdin)) {
		walker= FUNC5(buffer);
		dplen = FUNC0(walker, dp, dplen);
		if (dplen == -1)
			FUNC1(1, "Can't parse %s", walker);
		FUNC6(STDOUT_FILENO, dp, dplen);
	}
	FUNC3(dp);
}