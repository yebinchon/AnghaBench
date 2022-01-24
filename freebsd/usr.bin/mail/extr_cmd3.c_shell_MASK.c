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
typedef  int /*<<< orphan*/  sig_t ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int BUFSIZ ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIG_IGN ; 
 char* _PATH_CSHELL ; 
 scalar_t__ FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int,int,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (char*,char*,int) ; 
 char* FUNC5 (char*) ; 

int
FUNC6(char *str)
{
	sig_t sigint = FUNC3(SIGINT, SIG_IGN);
	char *sh;
	char cmd[BUFSIZ];

	if (FUNC4(cmd, str, sizeof(cmd)) >= sizeof(cmd))
		return (1);
	if (FUNC0(cmd, sizeof(cmd)) < 0)
		return (1);
	if ((sh = FUNC5("SHELL")) == NULL)
		sh = _PATH_CSHELL;
	(void)FUNC2(sh, 0, -1, -1, "-c", cmd, NULL);
	(void)FUNC3(SIGINT, sigint);
	FUNC1("!\n");
	return (0);
}