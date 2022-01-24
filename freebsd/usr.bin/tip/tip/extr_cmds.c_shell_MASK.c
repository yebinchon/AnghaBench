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
typedef  scalar_t__ pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  SHELL ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGQUIT ; 
 int /*<<< orphan*/  SIG_DFL ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC7 (char*,char) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 char* FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int*) ; 

void
FUNC11(int c)
{
	int status;
	char *cp;
	pid_t shpid;

	FUNC3("[sh]\r\n");
	FUNC6(SIGINT, SIG_IGN);
	FUNC6(SIGQUIT, SIG_IGN);
	FUNC8();
	if ((shpid = FUNC2())) {
		while (shpid != FUNC10(&status));
		FUNC4();
		FUNC3("\r\n!\r\n");
		FUNC6(SIGINT, SIG_DFL);
		FUNC6(SIGQUIT, SIG_DFL);
		return;
	} else {
		FUNC6(SIGQUIT, SIG_DFL);
		FUNC6(SIGINT, SIG_DFL);
		if ((cp = FUNC7(FUNC9(SHELL), '/')) == NULL)
			cp = FUNC9(SHELL);
		else
			cp++;
		FUNC5();
		FUNC0(FUNC9(SHELL), cp, (char *)NULL);
		FUNC3("\r\ncan't execl!\r\n");
		FUNC1(1);
	}
}