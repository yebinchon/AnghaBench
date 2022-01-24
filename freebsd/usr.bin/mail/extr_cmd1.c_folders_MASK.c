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
typedef  int /*<<< orphan*/  dirname ;

/* Variables and functions */
 int PATHSIZE ; 
 scalar_t__ FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int,int,char*,int /*<<< orphan*/ *) ; 
 char* FUNC3 (char*) ; 

int
FUNC4(void)
{
	char dirname[PATHSIZE];
	char *cmd;

	if (FUNC0(dirname, sizeof(dirname)) < 0) {
		FUNC1("No value set for \"folder\"\n");
		return (1);
	}
	if ((cmd = FUNC3("LISTER")) == NULL)
		cmd = "ls";
	(void)FUNC2(cmd, 0, -1, -1, dirname, NULL);
	return (0);
}