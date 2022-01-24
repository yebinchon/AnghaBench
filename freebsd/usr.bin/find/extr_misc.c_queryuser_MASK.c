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
typedef  int /*<<< orphan*/  resp ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdin ; 
 char* FUNC4 (char*,char) ; 

int
FUNC5(char *argv[])
{
	char *p, resp[256];

	(void)FUNC2(stderr, "\"%s", *argv);
	while (*++argv)
		(void)FUNC2(stderr, " %s", *argv);
	(void)FUNC2(stderr, "\"? ");
	(void)FUNC0(stderr);

	if (FUNC1(resp, sizeof(resp), stdin) == NULL)
		*resp = '\0';
	if ((p = FUNC4(resp, '\n')) != NULL)
		*p = '\0';
	else {
		(void)FUNC2(stderr, "\n");
		(void)FUNC0(stderr);
	}
        return (FUNC3(resp) == 1);
}