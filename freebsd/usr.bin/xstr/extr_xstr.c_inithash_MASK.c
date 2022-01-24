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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int BUFSIZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mesgpt ; 
 int /*<<< orphan*/  strings ; 
 int /*<<< orphan*/  tellpt ; 

__attribute__((used)) static void
FUNC5(void)
{
	char buf[BUFSIZ];
	FILE *mesgread = FUNC2(strings, "r");

	if (mesgread == NULL)
		return;
	for (;;) {
		mesgpt = tellpt;
		if (FUNC1(buf, sizeof buf, mesgread) == 0)
			break;
		FUNC4(FUNC3(buf, 0));
	}
	FUNC4(FUNC0(mesgread));
}