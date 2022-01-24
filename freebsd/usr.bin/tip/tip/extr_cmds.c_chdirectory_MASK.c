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
 int /*<<< orphan*/  HOME ; 
 int PATH_MAX ; 
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ FUNC2 (char*,char*,int) ; 
 scalar_t__ stoprompt ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 

void
FUNC4(int c)
{
	char dirname[PATH_MAX];
	char *cp = dirname;

	if (FUNC2("[cd] ", dirname, sizeof(dirname))) {
		if (stoprompt)
			return;
		cp = FUNC3(HOME);
	}
	if (FUNC0(cp) < 0)
		FUNC1("%s: bad directory\r\n", cp);
	FUNC1("!\r\n");
}